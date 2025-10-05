import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/exploration.dart';
import '../providers/exploration_provider.dart';
import '../providers/player_provider.dart';
import '../providers/npc_provider.dart';
import '../widgets/exploration/exploration_hud.dart';
import '../widgets/exploration/player_sprite.dart';
import '../widgets/exploration/npc_sprite.dart';
import '../widgets/exploration/building_marker.dart';

class ExplorationScreen extends ConsumerStatefulWidget {
  final String cityId;

  const ExplorationScreen({
    super.key,
    required this.cityId,
  });

  @override
  ConsumerState<ExplorationScreen> createState() => _ExplorationScreenState();
}

class _ExplorationScreenState extends ConsumerState<ExplorationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final Set<LogicalKeyboardKey> _pressedKeys = {};
  final FocusNode _focusNode = FocusNode();
  Offset? _manualCameraPosition;
  Offset _autoCameraPosition = Offset.zero;
  bool _isCameraPanActive = false;
  Offset? _lastPanFocalPoint;
  double _maxCameraX = 0;
  double _maxCameraY = 0;
  bool _mapLoaded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Load map when dependencies are ready (ref is available)
    // Wrap in Future to avoid modifying provider during build
    if (!_mapLoaded) {
      _mapLoaded = true;
      Future(() {
        ref.read(explorationProvider.notifier).loadMap(widget.cityId);
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(explorationProvider);
    final map = ref.watch(currentCityMapProvider);
    final player = ref.watch(playerProvider);

    if (kDebugMode) {
      debugPrint(
        'ExplorationScreen(cityId=${widget.cityId}) -> currentMapId=${state.currentMapId}, mapLoaded=${map != null}',
      );
    }

    if (map == null) {
      if (kDebugMode) {
        debugPrint('ExplorationScreen: map is null, showing loading indicator');
      }
      return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 20),
              Text('Loading ${widget.cityId}...',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('Current map ID: ${state.currentMapId}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
      );
    }

    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: true,
      onKeyEvent: _handleKeyEvent,
      child: GestureDetector(
        onScaleStart: _handleScaleStart,
        onScaleUpdate: _handleScaleUpdate,
        onScaleEnd: _handleScaleEnd,
        onDoubleTap: _recenterCamera,
        child: Scaffold(
          body: Stack(
            children: [
              // Main exploration view with camera
              _buildExplorationView(state, map),

              // HUD overlay
              ExplorationHud(
                player: player,
                onMenuPressed: () => _showPauseMenu(),
                onInteractPressed: () => _handleInteraction(),
                onQuestJournalPressed: () => context.push('/quest-journal'),
                onDirectionPressed: (direction) {
                  ref.read(explorationProvider.notifier).movePlayer(direction);
                },
              ),

              // Tutorial hint for first-time players
              if ((player.storyFlags['seen_exploration_tutorial'] ?? false) ==
                  false)
                _buildTutorialOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExplorationView(ExplorationState state, CityMap map) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth =
            constraints.maxWidth > 0 ? constraints.maxWidth : 400;
        final screenHeight =
            constraints.maxHeight > 0 ? constraints.maxHeight : 800;

        // Camera follows player - ensure we have valid dimensions
        final maxCameraX =
            map.width > screenWidth ? (map.width - screenWidth) : 0.0;
        final maxCameraY =
            map.height > screenHeight ? (map.height - screenHeight) : 0.0;

        _maxCameraX = maxCameraX;
        _maxCameraY = maxCameraY;

        final cameraX = maxCameraX > 0
            ? (state.playerPosition.x - screenWidth / 2).clamp(0.0, maxCameraX)
            : 0.0;
        final cameraY = maxCameraY > 0
            ? (state.playerPosition.y - screenHeight / 2).clamp(0.0, maxCameraY)
            : 0.0;

        _autoCameraPosition = Offset(cameraX, cameraY);
        final cameraTarget =
            (_manualCameraPosition ?? _autoCameraPosition).translate(0, 0);
        final finalCamera = Offset(
          cameraTarget.dx.clamp(0.0, maxCameraX),
          cameraTarget.dy.clamp(0.0, maxCameraY),
        );

        if (_manualCameraPosition != null && !_isCameraPanActive) {
          _manualCameraPosition = finalCamera;
        }

        return Transform.translate(
          offset: Offset(-finalCamera.dx, -finalCamera.dy),
          child: SizedBox(
            width: map.width,
            height: map.height,
            child: Stack(
              children: [
                // Background image (placeholder for now)
                _buildMapBackground(map),

                // Buildings
                ...map.buildings.map((building) => Positioned(
                      left: building.bounds.x,
                      top: building.bounds.y,
                      child: BuildingMarker(
                        building: building,
                        onEnter: () => _enterBuilding(building),
                      ),
                    )),

                // NPCs
                ...map.npcs.map((npc) => Positioned(
                      left: npc.x - 16,
                      top: npc.y - 32,
                      child: NpcSprite(
                        npcPosition: npc,
                        onTap: () => _talkToNpc(npc.npcId),
                      ),
                    )),

                // Player
                Positioned(
                  left: state.playerPosition.x - 16,
                  top: state.playerPosition.y - 32,
                  child: PlayerSprite(
                    position: state.playerPosition,
                    animationController: _animationController,
                  ),
                ),

                // Debug collision areas (remove in production)
                if (false) // Set to true to show collision areas for debugging
                  ...map.collisionAreas.map((area) => Positioned(
                        left: area.bounds.x,
                        top: area.bounds.y,
                        child: Container(
                          width: area.bounds.width,
                          height: area.bounds.height,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.red.withOpacity(0.3)),
                            color: Colors.red.withOpacity(0.1),
                          ),
                        ),
                      )),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMapBackground(CityMap map) {
    // Enhanced background with Greek aesthetics
    return SizedBox(
      width: map.width,
      height: map.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4E7FB5),
              Color(0xFF9FB98D),
              Color(0xFFE2C58B),
            ],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (map.backgroundImagePath != null &&
                map.backgroundImagePath!.isNotEmpty)
              Opacity(
                opacity: 0.35,
                child: Image.asset(
                  map.backgroundImagePath!,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.medium,
                  errorBuilder: (context, error, stackTrace) {
                    if (kDebugMode) {
                      debugPrint('ExplorationScreen: failed to load background image ${map.backgroundImagePath} -> $error');
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            CustomPaint(
              painter: GreekCityPainter(),
            ),
            CustomPaint(
              painter: PathPainter(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTutorialOverlay() {
    return Positioned(
      bottom: 120,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.amber, width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '🎮 How to Explore',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '🎮 Movement: Use D-Pad (bottom-left), arrow keys, or swipe\n👋 Interact: Tap TALK button or press SPACE near NPCs\n🏛️ Buildings: Tap them to enter',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                ref.read(playerProvider.notifier).setStoryFlag(
                      'seen_exploration_tutorial',
                      true,
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: const Text('Got it!'),
            ),
          ],
        ),
      ),
    );
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent) {
      _pressedKeys.add(event.logicalKey);
      _updateMovement();
    } else if (event is KeyUpEvent) {
      _pressedKeys.remove(event.logicalKey);
      if (_pressedKeys.isEmpty) {
        ref.read(explorationProvider.notifier).stopMoving();
      } else {
        _updateMovement();
      }
    }

    // Handle interaction key (Space)
    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.space) {
      _handleInteraction();
    }
  }

  void _updateMovement() {
    if (_pressedKeys.contains(LogicalKeyboardKey.arrowUp) ||
        _pressedKeys.contains(LogicalKeyboardKey.keyW)) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.up);
    } else if (_pressedKeys.contains(LogicalKeyboardKey.arrowDown) ||
        _pressedKeys.contains(LogicalKeyboardKey.keyS)) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.down);
    } else if (_pressedKeys.contains(LogicalKeyboardKey.arrowLeft) ||
        _pressedKeys.contains(LogicalKeyboardKey.keyA)) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.left);
    } else if (_pressedKeys.contains(LogicalKeyboardKey.arrowRight) ||
        _pressedKeys.contains(LogicalKeyboardKey.keyD)) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.right);
    }
  }

  void _handleTouchMovement(Offset delta) {
    if (delta.dy < -2) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.up);
    } else if (delta.dy > 2) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.down);
    } else if (delta.dx < -2) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.left);
    } else if (delta.dx > 2) {
      ref.read(explorationProvider.notifier).movePlayer(Direction.right);
    }
  }

  void _handleScaleStart(ScaleStartDetails details) {
    if (details.pointerCount > 1) {
      _isCameraPanActive = true;
      _lastPanFocalPoint = details.focalPoint;
      _manualCameraPosition ??= _autoCameraPosition;
    }
  }

  void _handleScaleUpdate(ScaleUpdateDetails details) {
    if (details.pointerCount > 1) {
      if (_lastPanFocalPoint == null) {
        _lastPanFocalPoint = details.focalPoint;
      }
      if (_manualCameraPosition == null) {
        _manualCameraPosition = _autoCameraPosition;
      }

      final delta =
          details.focalPoint - (_lastPanFocalPoint ?? details.focalPoint);
      _lastPanFocalPoint = details.focalPoint;

      if (_manualCameraPosition != null) {
        final proposed = _manualCameraPosition! - delta;
        final clamped = Offset(
          proposed.dx.clamp(0.0, _maxCameraX),
          proposed.dy.clamp(0.0, _maxCameraY),
        );
        setState(() {
          _manualCameraPosition = clamped;
        });
      }
    } else {
      if (_isCameraPanActive) {
        _isCameraPanActive = false;
        _lastPanFocalPoint = null;
      }
      _handleTouchMovement(details.focalPointDelta);
    }
  }

  void _handleScaleEnd(ScaleEndDetails details) {
    _isCameraPanActive = false;
    _lastPanFocalPoint = null;
    ref.read(explorationProvider.notifier).stopMoving();
  }

  void _recenterCamera() {
    setState(() {
      _manualCameraPosition = null;
    });
  }

  void _handleInteraction() {
    final interactionId = ref.read(explorationProvider.notifier).interact();
    if (interactionId != null) {
      _talkToNpc(interactionId);
    }
  }

  void _talkToNpc(String npcId) {
    // Pause exploration
    ref.read(explorationProvider.notifier).setPaused(true);

    // Get available dialogues for this NPC
    final npc = ref.read(npcProvider.notifier).getNPCById(npcId);
    final dialogues =
        ref.read(npcProvider.notifier).getAvailableDialoguesForNPC(npcId);

    if (dialogues.isEmpty) {
      // No dialogues available
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(npc?.name ?? 'NPC'),
          content: const Text('This person has nothing new to say right now.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ref.read(explorationProvider.notifier).setPaused(false);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    // Start first available dialogue
    ref.read(npcProvider.notifier).startDialogue(dialogues.first.id);

    // Show dialogue UI
    _showDialogueUI();
  }

  void _showDialogueUI() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Consumer(
        builder: (context, ref, child) {
          final currentNode = ref.watch(currentDialogueNodeProvider);
          final currentDialogue = ref.watch(currentDialogueProvider);

          if (currentNode == null || currentDialogue == null) {
            // Dialogue ended
            Future.microtask(() {
              Navigator.of(context).pop();
              ref.read(explorationProvider.notifier).setPaused(false);
            });
            return const SizedBox.shrink();
          }

          final npc =
              ref.read(npcProvider.notifier).getNPCById(currentDialogue.npcId);

          return AlertDialog(
            title: Text(npc?.name ?? 'NPC'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentNode.text,
                  style: const TextStyle(fontSize: 16),
                ),
                if (currentNode.choices.isNotEmpty) ...[
                  const SizedBox(height: 20),
                  const Text(
                    'Choose:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ],
            ),
            actions: currentNode.choices.map((choice) {
              return TextButton(
                onPressed: () {
                  ref.read(npcProvider.notifier).selectChoice(choice.id, ref);
                },
                child: Text(choice.text),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  void _enterBuilding(Building building) {
    final player = ref.read(playerProvider);

    // Check if player can enter
    // TODO: Check requirements
    context.go(building.entranceRoute);
  }

  void _showPauseMenu() {
    ref.read(explorationProvider.notifier).setPaused(true);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Menu'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('World Map'),
              onTap: () {
                Navigator.pop(context);
                context.go('/map');
              },
            ),
            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text('Inventory'),
              onTap: () {
                Navigator.pop(context);
                context.push('/inventory');
              },
            ),
            ListTile(
              leading: const Icon(Icons.stars),
              title: const Text('Reputation'),
              onTap: () {
                Navigator.pop(context);
                context.push('/reputation');
              },
            ),
            ListTile(
              leading: const Icon(Icons.save),
              title: const Text('Save Game'),
              onTap: () {
                Navigator.pop(context);
                ref.read(explorationProvider.notifier).setPaused(false);
                // TODO: Save game
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(explorationProvider.notifier).setPaused(false);
            },
            child: const Text('Resume'),
          ),
        ],
      ),
    );
  }
}

/// Custom painter for Greek city ground
class GreekCityPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown.withOpacity(0.08)
      ..strokeWidth = 1;

    // Draw subtle tile pattern
    for (double i = 0; i < size.width; i += 80) {
      for (double j = 0; j < size.height; j += 80) {
        canvas.drawRect(
          Rect.fromLTWH(i, j, 78, 78),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Custom painter for paths/roads
class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pathPaint = Paint()
      ..color = const Color(0xFFC9B8A0)
      ..style = PaintingStyle.fill;

    // Main horizontal road
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, size.height * 0.5 - 40, size.width, 80),
        const Radius.circular(8),
      ),
      pathPaint,
    );

    // Main vertical road
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.5 - 40, 0, 80, size.height),
        const Radius.circular(8),
      ),
      pathPaint,
    );

    // Connecting paths to buildings
    final smallPathPaint = Paint()
      ..color = const Color(0xFFD4C5A0)
      ..style = PaintingStyle.fill;

    // Path to market (top-left)
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(250, 200, 60, 400),
        const Radius.circular(4),
      ),
      smallPathPaint,
    );

    // Path to harbor (top-right)
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(1150, 200, 60, 400),
        const Radius.circular(4),
      ),
      smallPathPaint,
    );

    // Decorative border lines
    final borderPaint = Paint()
      ..color = Colors.brown.withOpacity(0.3)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, size.height * 0.5 - 40, size.width, 80),
        const Radius.circular(8),
      ),
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
