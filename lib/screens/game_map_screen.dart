import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/player_provider.dart';
import '../providers/inventory_provider.dart';

class GameMapScreen extends ConsumerWidget {
  const GameMapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(playerProvider);
    final inventory = ref.watch(inventoryProvider);

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
              // Top Status Bar
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    // Player Info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${player.characterClass.name.toUpperCase()} • ${player.currentLocation.toUpperCase()}',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Stats
                    Row(
                      children: [
                        _buildStatChip(Icons.favorite, player.health, Colors.red),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.flash_on, player.energy, Colors.yellow),
                        const SizedBox(width: 8),
                        _buildStatChip(Icons.monetization_on, player.drachmae, Colors.amber),
                      ],
                    ),
                  ],
                ),
              ),

              // Map Area
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.map,
                        size: 100,
                        color: Colors.white.withValues(alpha: 0.8),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Map of Ancient Greece',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                      const SizedBox(height: 12),
                      Text(
                        'Coming Soon...',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Athens Button
                      ElevatedButton(
                        onPressed: () {
                          context.go('/athens');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF8B4513),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                        child: const Text('Enter Athens'),
                      ),
                    ],
                  ),
                ),
              ),

              // Bottom Inventory Preview
              Container(
                height: 100,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Inventory',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: inventory.items.length,
                        itemBuilder: (context, index) {
                          final item = inventory.items[index];
                          return Container(
                            width: 60,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  _getItemIcon(item.type),
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${item.quantity}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
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

  IconData _getItemIcon(dynamic itemType) {
    final type = itemType.toString();
    if (type.contains('food')) return Icons.restaurant;
    if (type.contains('tool')) return Icons.build;
    if (type.contains('resource')) return Icons.water_drop;
    if (type.contains('trade')) return Icons.local_shipping;
    return Icons.inventory;
  }
}