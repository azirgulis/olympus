import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/player_provider.dart';
import '../providers/game_map_provider.dart';
import '../models/game_map.dart';
import '../data/map/travel_routes.dart';
import 'dialogs/travel_planning_dialog.dart';

class GameMapScreen extends ConsumerStatefulWidget {
  const GameMapScreen({super.key});

  @override
  ConsumerState<GameMapScreen> createState() => _GameMapScreenState();
}

class _GameMapScreenState extends ConsumerState<GameMapScreen> {
  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    final currentLocation = ref.watch(currentLocationProvider);
    final unlockedLocations = ref.watch(unlockedLocationsProvider);
    final availableDestinations = ref.watch(availableDestinationsProvider);
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
                                const Icon(Icons.map, color: Colors.white, size: 28),
                                const SizedBox(width: 8),
                                Text(
                                  'MAP OF ANCIENT GREECE',
                                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
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
                        _buildStatChip(Icons.favorite, player.health, Colors.red),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.flash_on, player.energy, Colors.yellow),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.monetization_on, player.drachmae, Colors.amber),
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
                          onPressed: () => context.go('/athens'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Enter'),
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
                    : _buildMapView(unlockedLocations, availableDestinations),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJourneyProgress(PlayerJourney journey) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.shade300, width: 2),
      ),
      child: Column(
        children: [
          Text(
            'Journey in Progress',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade800,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${journey.fromLocationId.toUpperCase()} → ${journey.toLocationId.toUpperCase()}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.orange.shade700,
            ),
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: journey.progressPercent / 100,
            backgroundColor: Colors.orange.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade600),
          ),
          const SizedBox(height: 8),
          Text(
            '${journey.progressPercent}% Complete',
            style: TextStyle(
              fontSize: 12,
              color: Colors.orange.shade700,
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

  Widget _buildMapView(List<GameLocation> unlockedLocations, List<GameLocation> availableDestinations) {
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
            ...availableDestinations.map((destination) => _buildDestinationCard(destination)),

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

  Widget _buildDestinationCard(GameLocation destination) {
    final route = ref.read(gameMapProvider.notifier).getRouteToDestination(destination.id);
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
                  Icon(Icons.access_time, size: 14, color: Colors.grey.shade600),
                  const SizedBox(width: 4),
                  Text(
                    '${TravelRoutesData.calculateTravelTime(route, playerLevel: player.level)} min',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                  const SizedBox(width: 12),
                  Icon(Icons.monetization_on, size: 14, color: Colors.grey.shade600),
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
          onPressed: route != null ? () => _showTravelDialog(destination, route) : null,
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
          color: isCurrentLocation ? Colors.blue.shade300 : Colors.grey.shade300,
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
                color: isCurrentLocation ? Colors.blue.shade700 : const Color(0xFF2E86AB),
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
                children: location.specialties.take(3).map((specialty) =>
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      specialty,
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                ).toList(),
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
}