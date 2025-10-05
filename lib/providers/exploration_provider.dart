import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/exploration.dart';
import '../data/maps/city_maps_data.dart';
import 'player_provider.dart';

/// Current player position and exploration state
class ExplorationState {
  final String currentMapId;
  final PlayerPosition playerPosition;
  final List<String> discoveredZones;
  final String? activeInteractionZoneId;
  final bool isPaused;

  ExplorationState({
    required this.currentMapId,
    required this.playerPosition,
    this.discoveredZones = const [],
    this.activeInteractionZoneId,
    this.isPaused = false,
  });

  ExplorationState copyWith({
    String? currentMapId,
    PlayerPosition? playerPosition,
    List<String>? discoveredZones,
    String? activeInteractionZoneId,
    bool? isPaused,
  }) {
    return ExplorationState(
      currentMapId: currentMapId ?? this.currentMapId,
      playerPosition: playerPosition ?? this.playerPosition,
      discoveredZones: discoveredZones ?? this.discoveredZones,
      activeInteractionZoneId:
          activeInteractionZoneId ?? this.activeInteractionZoneId,
      isPaused: isPaused ?? this.isPaused,
    );
  }
}

/// Exploration provider managing player movement and map interactions
class ExplorationNotifier extends StateNotifier<ExplorationState> {
  ExplorationNotifier(this.ref)
      : super(ExplorationState(
          currentMapId: 'athens',
          playerPosition: const PlayerPosition(x: 400, y: 300),
        ));

  final Ref ref;
  static const double moveSpeed = 2.5; // pixels per frame
  static const double playerHitboxRadius = 16.0; // collision detection

  /// Load a city map
  void loadMap(String mapId, {PlayerPosition? spawnPosition}) {
    if (kDebugMode) {
      debugPrint('ExplorationNotifier.loadMap called with mapId=$mapId');
    }
    final map = CityMapsData.getCityMap(mapId);
    if (kDebugMode) {
      debugPrint(
          'ExplorationNotifier.loadMap resolved map: ${map?.name ?? "NULL"}');
    }
    if (map == null) {
      if (kDebugMode) {
        debugPrint('ExplorationNotifier.loadMap error: map is null for $mapId');
      }
      return;
    }

    state = ExplorationState(
      currentMapId: mapId,
      playerPosition: spawnPosition ??
          map.spawnPoint ??
          const PlayerPosition(x: 400, y: 300),
      discoveredZones: [],
      activeInteractionZoneId: null,
      isPaused: false,
    );
    if (kDebugMode) {
      debugPrint(
          'ExplorationNotifier.loadMap updated state for ${state.currentMapId}');
    }
  }

  /// Move player in a direction
  void movePlayer(Direction direction) {
    if (state.isPaused) return;

    final map = CityMapsData.getCityMap(state.currentMapId);
    if (map == null) return;

    // Calculate new position
    double newX = state.playerPosition.x;
    double newY = state.playerPosition.y;

    switch (direction) {
      case Direction.up:
        newY -= moveSpeed;
        break;
      case Direction.down:
        newY += moveSpeed;
        break;
      case Direction.left:
        newX -= moveSpeed;
        break;
      case Direction.right:
        newX += moveSpeed;
        break;
    }

    // Check map boundaries
    if (newX < 0 || newX > map.width || newY < 0 || newY > map.height) {
      return;
    }

    // Check collisions
    if (_checkCollision(map, newX, newY)) {
      return;
    }

    // Update position
    state = state.copyWith(
      playerPosition: PlayerPosition(
        x: newX,
        y: newY,
        facing: direction,
        isMoving: true,
      ),
    );

    // Check for interaction zones
    _checkInteractionZones(map, newX, newY);

    // Check for transitions
    _checkTransitions(map, newX, newY);
  }

  /// Stop player movement
  void stopMoving() {
    state = state.copyWith(
      playerPosition: state.playerPosition.copyWith(isMoving: false),
    );
  }

  /// Set player facing direction without moving
  void setFacingDirection(Direction direction) {
    state = state.copyWith(
      playerPosition: state.playerPosition.copyWith(facing: direction),
    );
  }

  /// Interact with nearest NPC or zone
  String? interact() {
    final map = CityMapsData.getCityMap(state.currentMapId);
    if (map == null) return null;

    final playerX = state.playerPosition.x;
    final playerY = state.playerPosition.y;
    final facing = state.playerPosition.facing;

    // Calculate interaction point based on facing direction
    double interactX = playerX;
    double interactY = playerY;

    switch (facing) {
      case Direction.up:
        interactY -= 32;
        break;
      case Direction.down:
        interactY += 32;
        break;
      case Direction.left:
        interactX -= 32;
        break;
      case Direction.right:
        interactX += 32;
        break;
    }

    // Check for NPCs
    for (final npc in map.npcs) {
      final distance = _calculateDistance(interactX, interactY, npc.x, npc.y);
      if (distance < 48 && npc.isInteractable) {
        return npc.npcId; // Return NPC ID for dialogue
      }
    }

    // Check for interaction zones
    for (final zone in map.interactionZones) {
      if (zone.bounds.contains(interactX, interactY)) {
        return zone.id; // Return zone ID
      }
    }

    return null;
  }

  /// Teleport player to specific position
  void teleportPlayer(double x, double y) {
    state = state.copyWith(
      playerPosition: state.playerPosition.copyWith(x: x, y: y),
    );
  }

  /// Pause/unpause exploration (for menus, dialogues)
  void setPaused(bool paused) {
    state = state.copyWith(isPaused: paused);
  }

  /// Check collision with map obstacles
  bool _checkCollision(CityMap map, double x, double y) {
    final playerBounds = MapRect(
      x: x - playerHitboxRadius,
      y: y - playerHitboxRadius,
      width: playerHitboxRadius * 2,
      height: playerHitboxRadius * 2,
    );

    // Check collision areas
    for (final area in map.collisionAreas) {
      if (playerBounds.overlaps(area.bounds)) {
        return true;
      }
    }

    // Check buildings (except entrances)
    for (final building in map.buildings) {
      if (playerBounds.overlaps(building.bounds)) {
        return true;
      }
    }

    return false;
  }

  /// Check if player entered interaction zones
  void _checkInteractionZones(CityMap map, double x, double y) {
    for (final zone in map.interactionZones) {
      if (zone.bounds.contains(x, y) && !zone.requiresPlayerAction) {
        // Auto-trigger zone
        if (state.discoveredZones.contains(zone.id)) continue;

        state = state.copyWith(
          discoveredZones: [...state.discoveredZones, zone.id],
          activeInteractionZoneId: zone.id,
        );
      }
    }
  }

  /// Check if player triggered a map transition
  void _checkTransitions(CityMap map, double x, double y) {
    for (final transition in map.transitions) {
      if (transition.triggerBounds.contains(x, y)) {
        // Trigger transition
        if (transition.requiresConfirmation) {
          state = state.copyWith(activeInteractionZoneId: transition.id);
        } else {
          _executeTransition(transition);
        }
      }
    }
  }

  /// Execute a map transition
  void _executeTransition(MapTransition transition) {
    if (transition.targetMapId == 'world_map') {
      // Special case: return to world map
      // This will be handled by navigation
      return;
    }

    // Load new map
    loadMap(transition.targetMapId, spawnPosition: transition.targetPosition);
  }

  /// Calculate distance between two points
  double _calculateDistance(double x1, double y1, double x2, double y2) {
    final dx = x2 - x1;
    final dy = y2 - y1;
    return (dx * dx + dy * dy)
        .abs(); // Squared distance (faster, no sqrt needed)
  }

  /// Mark a zone as discovered
  void discoverZone(String zoneId) {
    if (!state.discoveredZones.contains(zoneId)) {
      state = state.copyWith(
        discoveredZones: [...state.discoveredZones, zoneId],
      );
    }
  }

  /// Clear active interaction
  void clearActiveInteraction() {
    state = state.copyWith(activeInteractionZoneId: null);
  }
}

/// Providers
final explorationProvider =
    StateNotifierProvider<ExplorationNotifier, ExplorationState>((ref) {
  return ExplorationNotifier(ref);
});

/// Get current city map
final currentCityMapProvider = Provider<CityMap?>((ref) {
  final currentMapId = ref.watch(explorationProvider).currentMapId;
  return CityMapsData.getCityMap(currentMapId);
});

/// Get nearby NPCs
final nearbyNpcsProvider = Provider<List<NpcPosition>>((ref) {
  final state = ref.watch(explorationProvider);
  final map = ref.watch(currentCityMapProvider);

  if (map == null) return [];

  final playerX = state.playerPosition.x;
  final playerY = state.playerPosition.y;

  return map.npcs.where((npc) {
    final distance = (npc.x - playerX).abs() + (npc.y - playerY).abs();
    return distance < 200; // Within screen range
  }).toList();
});
