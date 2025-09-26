import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/game_map.dart';
import '../../providers/game_map_provider.dart';
import '../../providers/player_provider.dart';
import '../../data/map/travel_routes.dart';

class TravelPlanningDialog extends ConsumerWidget {
  final GameLocation destination;
  final TravelRoute route;

  const TravelPlanningDialog({
    super.key,
    required this.destination,
    required this.route,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(playerProvider);
    final travelTime = TravelRoutesData.calculateTravelTime(route, playerLevel: player.level);
    final travelCost = TravelRoutesData.calculateTravelCost(route, playerLevel: player.level);
    final canAfford = player.drachmae >= travelCost;

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade100,
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.map, color: Colors.blue.shade700, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Journey to ${destination.name}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.blue.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.close, color: Colors.blue.shade700),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Destination info
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: _getLocationTypeColor(destination.type),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          _getLocationIcon(destination.type),
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destination.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2E86AB),
                              ),
                            ),
                            Text(
                              '${destination.region} • ${destination.type.name.replaceAll('_', ' ').toUpperCase()}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF2E86AB),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    destination.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF2E86AB),
                    ),
                  ),
                  if (destination.specialties.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 6,
                      children: destination.specialties.map((specialty) =>
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            specialty,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ).toList(),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Travel details
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Travel Details',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDetailItem(
                          Icons.straighten,
                          'Distance',
                          '${route.distance} km',
                        ),
                      ),
                      Expanded(
                        child: _buildDetailItem(
                          Icons.access_time,
                          'Travel Time',
                          '$travelTime min',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDetailItem(
                          Icons.monetization_on,
                          'Cost',
                          '$travelCost δ',
                          valueColor: canAfford ? Colors.green : Colors.red,
                        ),
                      ),
                      Expanded(
                        child: _buildDetailItem(
                          Icons.warning,
                          'Difficulty',
                          route.difficulty.name.toUpperCase(),
                          valueColor: _getDifficultyColor(route.difficulty),
                        ),
                      ),
                    ],
                  ),
                  if (route.requiresShip) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.cyan.shade200),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.sailing, color: Colors.cyan.shade700, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Requires a ship for sea travel',
                            style: TextStyle(
                              color: Colors.cyan.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (route.requiredItems.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.orange.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.inventory, color: Colors.orange.shade700, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Required Items:',
                                style: TextStyle(
                                  color: Colors.orange.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            route.requiredItems.join(', '),
                            style: TextStyle(
                              color: Colors.orange.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Possible encounters
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Possible Encounters',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    children: route.possibleEncounters.map((encounter) =>
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          encounter.replaceAll('_', ' ').toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Action buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: canAfford ? () => _startJourney(context, ref) : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Begin Journey'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String label, String value, {Color? valueColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: Colors.grey.shade600),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: valueColor ?? Colors.black,
          ),
        ),
      ],
    );
  }

  void _startJourney(BuildContext context, WidgetRef ref) {
    ref.read(gameMapProvider.notifier).startJourney(destination.id, ref);
    Navigator.of(context).pop();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Journey to ${destination.name} has begun!'),
        backgroundColor: Colors.green,
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

  Color _getDifficultyColor(RouteDifficulty difficulty) {
    switch (difficulty) {
      case RouteDifficulty.easy:
        return Colors.green;
      case RouteDifficulty.moderate:
        return Colors.orange;
      case RouteDifficulty.hard:
        return Colors.red;
      case RouteDifficulty.dangerous:
        return Colors.purple;
      case RouteDifficulty.legendary:
        return Colors.black;
    }
  }
}