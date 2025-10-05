import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/player_provider.dart';
import '../providers/game_map_provider.dart';
import '../providers/game_state_provider.dart';
import '../models/game_map.dart';
import '../data/map/travel_routes.dart';
import '../widgets/map/interactive_map_widget.dart';
import '../widgets/map/ancient_greece_map.dart';
import 'dialogs/travel_planning_dialog.dart';
import 'dialogs/travel_encounter_dialog.dart';

class GameMapScreen extends ConsumerStatefulWidget {
  const GameMapScreen({super.key});

  @override
  ConsumerState<GameMapScreen> createState() => _GameMapScreenState();
}

class _GameMapScreenState extends ConsumerState<GameMapScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _quickTravelController;
  Animation<Offset>? _quickTravelAnimation;
  Offset? _quickTravelStart;
  Offset? _quickTravelDestination;
  Offset? _quickTravelCurrent;
  String? _quickTravelDestinationId;
  bool _isQuickTravelActive = false;

  @override
  void initState() {
    super.initState();
    _quickTravelController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _quickTravelController.addListener(() {
      if (!mounted || _quickTravelAnimation == null) {
        return;
      }
      setState(() {
        _quickTravelCurrent = _quickTravelAnimation!.value;
      });
    });

    _quickTravelController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _onQuickTravelCompleted();
      }
    });
  }

  @override
  void dispose() {
    _quickTravelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Listen for encounters and journey completion
    ref.listen<GameMapState>(gameMapProvider, (previous, current) {
      if (current.currentJourney?.currentEncounter != null &&
          previous?.currentJourney?.currentEncounter == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showEncounterDialog(current.currentJourney!.currentEncounter!);
        });
      }

      // Handle journey completion and navigation
      if (current.shouldNavigateToLocation != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _navigateToLocation(current.shouldNavigateToLocation!);
          ref.read(gameMapProvider.notifier).clearNavigationFlag();
        });
      }
    });
    final player = ref.watch(playerProvider);
    final currentLocation = ref.watch(currentLocationProvider);
    final unlockedLocations = ref.watch(unlockedLocationsProvider);
    final isJourneyInProgress = ref.watch(isJourneyInProgressProvider);
    final currentJourney = ref.watch(currentJourneyProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEEB), // Sky blue
              Color(0xFFE6B17A), // Sandy color
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with player stats
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => context.go('/'),
                          icon: const Icon(Icons.home, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.map,
                                    color: Colors.white, size: 28),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    'MAP OF ANCIENT GREECE',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildStatChip(
                            Icons.favorite, player.health, Colors.red),
                        const SizedBox(width: 8),
                        _buildStatChip(
                            Icons.flash_on, player.energy, Colors.yellow),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.monetization_on, player.drachmae,
                            Colors.amber),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.star, player.level, Colors.purple),
                      ],
                    ),
                  ],
                ),
              ),

              // Current location info
              if (currentLocation != null)
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade300, width: 2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          _getLocationIcon(currentLocation.type),
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Currently in ${currentLocation.name}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2E86AB),
                              ),
                            ),
                            Text(
                              currentLocation.description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF2E86AB),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (currentLocation.id == 'athens')
                        ElevatedButton(
                          onPressed: () => context.go('/explore/athens'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Explore'),
                        ),
                    ],
                  ),
                ),

              // Journey progress
              if (isJourneyInProgress && currentJourney != null)
                _buildJourneyProgress(currentJourney),

              // Map area with locations
              Expanded(
                child: isJourneyInProgress
                    ? _buildJourneyView()
                    : _buildInteractiveMap(unlockedLocations),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJourneyProgress(PlayerJourney journey) {
    final isEncountering = journey.status == JourneyStatus.encountering;
    final statusColor = isEncountering ? Colors.red : Colors.orange;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: statusColor.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: statusColor.shade300, width: 2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                isEncountering ? Icons.warning : Icons.directions_walk,
                color: statusColor.shade800,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                isEncountering ? 'Encounter!' : 'Journey in Progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: statusColor.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${journey.fromLocationId.toUpperCase()} → ${journey.toLocationId.toUpperCase()}',
            style: TextStyle(
              fontSize: 14,
              color: statusColor.shade700,
            ),
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: journey.progressPercent / 100,
            backgroundColor: statusColor.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(statusColor.shade600),
          ),
          const SizedBox(height: 8),
          Text(
            isEncountering
                ? 'Journey paused - resolve encounter to continue'
                : '${journey.progressPercent}% Complete',
            style: TextStyle(
              fontSize: 12,
              color: statusColor.shade700,
              fontStyle: isEncountering ? FontStyle.italic : FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJourneyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.directions_walk,
            size: 80,
            color: Colors.white.withValues(alpha: 0.8),
          ),
          const SizedBox(height: 16),
          Text(
            'Traveling...',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Keep an eye out for encounters!',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              ref.read(gameMapProvider.notifier).cancelJourney();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Cancel Journey'),
          ),
        ],
      ),
    );
  }

  Widget _buildInteractiveMap(List<GameLocation> unlockedLocations) {
    final player = ref.watch(playerProvider);

    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(20),
      minScale: 0.5,
      maxScale: 3.0,
      child: InteractiveMapWidget(
        unlockedLocations: unlockedLocations,
        currentLocationId: player.currentLocation,
        currentJourney: ref.watch(currentJourneyProvider),
        travelerPositionOverride: _quickTravelCurrent,
        travelerStartOverride: _quickTravelStart,
        travelerDestinationOverride: _quickTravelDestination,
        onAvatarTapped: _handleAvatarTapped,
        onLocationTapped: (location) {
          if (_isQuickTravelActive) {
            return;
          }
          final route = ref
              .read(gameMapProvider.notifier)
              .getRouteToDestination(location.id);
          if (route != null && location.id != player.currentLocation) {
            _showTravelDialog(location, route);
          }
        },
      ),
    );
  }

  Widget _buildMapView(List<GameLocation> unlockedLocations,
      List<GameLocation> availableDestinations) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Destinations',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                const Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          if (availableDestinations.isEmpty)
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.explore_off,
                      size: 64,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No destinations available from current location',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          else
            ...availableDestinations
                .map((destination) => _buildDestinationCard(destination)),
          const SizedBox(height: 24),
          Text(
            'All Known Locations',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                const Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...unlockedLocations.map((location) => _buildLocationCard(location)),
        ],
      ),
    );
  }

  void _handleAvatarTapped() {
    if (_isQuickTravelActive || ref.read(isJourneyInProgressProvider)) {
      return;
    }
    _showQuickTravelSheet();
  }

  Future<void> _showQuickTravelSheet() async {
    final unlockedLocations = ref.read(unlockedLocationsProvider);
    final currentLocationId = ref.read(gameMapProvider).currentLocationId;

    final destinations = unlockedLocations
        .where((location) => location.id != currentLocationId)
        .toList();

    if (destinations.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No other cities unlocked yet.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    final selectedId = await showModalBottomSheet<String>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  children: [
                    Container(
                      width: 36,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Select your destination',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF8B4513),
                          ),
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 360),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final location = destinations[index];
                    return ListTile(
                      leading: const Icon(Icons.navigation, color: Colors.blue),
                      title: Text(location.name),
                      subtitle: Text(
                        location.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => Navigator.of(context).pop(location.id),
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(height: 0),
                  itemCount: destinations.length,
                ),
              ),
            ],
          ),
        );
      },
    );

    if (selectedId != null) {
      _beginQuickTravel(selectedId);
    }
  }

  void _beginQuickTravel(String destinationId) {
    if (_isQuickTravelActive) {
      return;
    }

    final currentLocationId = ref.read(gameMapProvider).currentLocationId;
    if (currentLocationId == destinationId) {
      return;
    }

    final route =
        ref.read(gameMapProvider.notifier).getRouteToDestination(destinationId);
    if (route == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No known route to that city yet.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    final start = _mapPositionFor(currentLocationId);
    final end = _mapPositionFor(destinationId);

    if (start == null || end == null) {
      return;
    }

    _quickTravelController.stop();

    final animation = Tween<Offset>(begin: start, end: end).animate(
      CurvedAnimation(
        parent: _quickTravelController,
        curve: Curves.easeInOut,
      ),
    );

    setState(() {
      _quickTravelStart = start;
      _quickTravelDestination = end;
      _quickTravelDestinationId = destinationId;
      _quickTravelAnimation = animation;
      _quickTravelCurrent = start;
      _isQuickTravelActive = true;
    });

    _quickTravelController.forward(from: 0);
  }

  Offset? _mapPositionFor(String locationId) {
    return ancientGreeceLocationOffset(locationId);
  }

  void _onQuickTravelCompleted() {
    final destinationId = _quickTravelDestinationId;
    if (destinationId == null) {
      return;
    }

    ref.read(gameMapProvider.notifier).moveInstantlyTo(destinationId);
    ref.read(playerProvider.notifier).updateLocation(destinationId);
    ref.read(gameStateProvider.notifier).changeLocation(destinationId);

    if (mounted) {
      setState(() {
        _quickTravelCurrent = null;
        _quickTravelStart = null;
        _quickTravelDestination = null;
        _quickTravelDestinationId = null;
        _quickTravelAnimation = null;
        _isQuickTravelActive = false;
      });
    }

    _quickTravelController.reset();
  }

  Widget _buildDestinationCard(GameLocation destination) {
    final route = ref
        .read(gameMapProvider.notifier)
        .getRouteToDestination(destination.id);
    final player = ref.watch(playerProvider);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade300, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _getLocationTypeColor(destination.type),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            _getLocationIcon(destination.type),
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          destination.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF2E86AB),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              destination.description,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF2E86AB),
              ),
            ),
            if (route != null) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.access_time,
                      size: 14, color: Colors.grey.shade600),
                  const SizedBox(width: 4),
                  Text(
                    '${TravelRoutesData.calculateTravelTime(route, playerLevel: player.level)} min',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                  const SizedBox(width: 12),
                  Icon(Icons.monetization_on,
                      size: 14, color: Colors.grey.shade600),
                  const SizedBox(width: 4),
                  Text(
                    '${TravelRoutesData.calculateTravelCost(route, playerLevel: player.level)} δ',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ],
        ),
        trailing: ElevatedButton(
          onPressed: route != null
              ? () => _showTravelDialog(destination, route)
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
          ),
          child: const Text('Travel'),
        ),
      ),
    );
  }

  Widget _buildLocationCard(GameLocation location) {
    final currentLocationId = ref.watch(gameMapProvider).currentLocationId;
    final isCurrentLocation = location.id == currentLocationId;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              isCurrentLocation ? Colors.blue.shade300 : Colors.grey.shade300,
          width: isCurrentLocation ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _getLocationTypeColor(location.type),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            _getLocationIcon(location.type),
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Row(
          children: [
            Text(
              location.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: isCurrentLocation
                    ? Colors.blue.shade700
                    : const Color(0xFF2E86AB),
              ),
            ),
            if (isCurrentLocation) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'CURRENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            if (location.isVisited && !isCurrentLocation) ...[
              const SizedBox(width: 8),
              Icon(Icons.check_circle, color: Colors.green.shade600, size: 16),
            ],
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${location.region} • ${location.type.name.replaceAll('_', ' ').toUpperCase()}',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF2E86AB),
              ),
            ),
            if (location.specialties.isNotEmpty) ...[
              const SizedBox(height: 4),
              Wrap(
                spacing: 4,
                children: location.specialties
                    .take(3)
                    .map(
                      (specialty) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          specialty,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showTravelDialog(GameLocation destination, route) {
    showDialog(
      context: context,
      builder: (context) => TravelPlanningDialog(
        destination: destination,
        route: route,
      ),
    );
  }

  void _showEncounterDialog(TravelEncounter encounter) {
    showDialog(
      context: context,
      barrierDismissible: false, // Must choose an option
      builder: (context) => TravelEncounterDialog(
        encounter: encounter,
      ),
    );
  }

  IconData _getLocationIcon(LocationType type) {
    switch (type) {
      case LocationType.cityState:
        return Icons.location_city;
      case LocationType.village:
        return Icons.home;
      case LocationType.port:
        return Icons.anchor;
      case LocationType.sanctuary:
        return Icons.temple_hindu;
      case LocationType.battlefield:
        return Icons.military_tech;
      case LocationType.wilderness:
        return Icons.forest;
      case LocationType.ruin:
        return Icons.account_balance;
    }
  }

  Color _getLocationTypeColor(LocationType type) {
    switch (type) {
      case LocationType.cityState:
        return Colors.blue.shade700;
      case LocationType.village:
        return Colors.green.shade600;
      case LocationType.port:
        return Colors.cyan.shade600;
      case LocationType.sanctuary:
        return Colors.purple.shade600;
      case LocationType.battlefield:
        return Colors.red.shade600;
      case LocationType.wilderness:
        return Colors.brown.shade600;
      case LocationType.ruin:
        return Colors.grey.shade600;
    }
  }

  Widget _buildStatChip(IconData icon, int value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 4),
          Text(
            '$value',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToLocation(String locationId) {
    // Navigate to the specific location screen
    switch (locationId) {
      case 'athens':
        context.go('/athens');
        break;
      case 'thebes':
        context.go('/thebes');
        break;
      case 'corinth':
        context.go('/corinth');
        break;
      case 'sparta':
        context.go('/sparta');
        break;
      case 'delphi':
        context.go('/delphi');
        break;
      case 'marathon':
        context.go('/marathon');
        break;
      default:
        // For locations without specific screens, stay on map
        if (kDebugMode) {
          debugPrint('GameMapScreen: no route configured for "$locationId"');
        }
        break;
    }
  }
}
