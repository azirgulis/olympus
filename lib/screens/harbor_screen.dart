import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/harbor.dart';
import '../providers/harbor_provider.dart';
import '../providers/player_provider.dart';
import '../widgets/game_ui/resource_bar.dart';

class HarborScreen extends ConsumerStatefulWidget {
  const HarborScreen({super.key});

  @override
  ConsumerState<HarborScreen> createState() => _HarborScreenState();
}

class _HarborScreenState extends ConsumerState<HarborScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    final harborState = ref.watch(harborProvider);
    final unlockedRoutes = ref.watch(unlockedRoutesProvider);
    final availableShips = ref.watch(availableShipsProvider);
    final activeExpeditions = ref.watch(activeExpeditionsProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2E86AB), // Ocean blue
              Color(0xFF87CEEB), // Sky blue
              Color(0xFFE6B17A), // Sandy color
            ],
            stops: [0.0, 0.5, 1.0],
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
                          onPressed: () {
                            if (context.canPop()) {
                              context.pop();
                            } else {
                              context.go('/athens');
                            }
                          },
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.sailing, color: Colors.white, size: 28),
                                const SizedBox(width: 8),
                                Text(
                                  'PIRAEUS HARBOR',
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
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.favorite,
                            label: 'Health',
                            value: player.health,
                            maxValue: 100,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.flash_on,
                            label: 'Energy',
                            value: player.energy,
                            maxValue: 100,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.monetization_on,
                            label: 'Drachmae',
                            value: player.drachmae,
                            maxValue: 2000,
                            color: Colors.amber,
                            showAsNumber: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Harbor Welcome
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.95),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF2E86AB), width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E86AB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.anchor,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome to Piraeus!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E86AB),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'The gateway to international trade. Sail to distant lands and expand your fortune.',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xFF2E86AB).withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Fleet Status Summary
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E86AB).withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF2E86AB)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFleetStat('Ships\nOwned', harborState.playerShips.length, Icons.directions_boat, const Color(0xFF2E86AB)),
                    _buildFleetStat('Active\nExpeditions', activeExpeditions.length, Icons.sailing, Colors.orange),
                    _buildFleetStat('Trade\nRoutes', unlockedRoutes.length, Icons.map, Colors.green),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Tab Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFF2E86AB), width: 2),
                ),
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.map),
                          Text('Routes', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.directions_boat),
                          Text('Fleet', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.sailing),
                          Text('Expeditions', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.store),
                          Text('Shipyard', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ),
                  ],
                  labelColor: const Color(0xFF2E86AB),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: const Color(0xFF2E86AB),
                ),
              ),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildRoutesTab(unlockedRoutes),
                    _buildFleetTab(harborState.playerShips),
                    _buildExpeditionsTab(activeExpeditions),
                    _buildShipyardTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFleetStat(String label, int value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF2E86AB),
          ),
        ),
      ],
    );
  }

  Widget _buildRoutesTab(List<TradeRoute> routes) {
    if (routes.isEmpty) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.map_outlined,
                size: 64,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Text(
                'No trade routes unlocked yet',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: routes.length,
      itemBuilder: (context, index) {
        final route = routes[index];
        return _buildRouteCard(route);
      },
    );
  }

  Widget _buildFleetTab(List<Ship> ships) {
    if (ships.isEmpty) {
      return const Center(
        child: Text(
          'No ships in your fleet',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: ships.length,
      itemBuilder: (context, index) {
        final ship = ships[index];
        return _buildShipCard(ship);
      },
    );
  }

  Widget _buildExpeditionsTab(List<TradingExpedition> expeditions) {
    if (expeditions.isEmpty) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.sailing_outlined,
                size: 64,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Text(
                'No active expeditions',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Start a trading expedition to earn profits!',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: expeditions.length,
      itemBuilder: (context, index) {
        final expedition = expeditions[index];
        return _buildExpeditionCard(expedition);
      },
    );
  }

  Widget _buildShipyardTab() {
    return const Center(
      child: Text(
        'Shipyard - Coming Soon!',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildRouteCard(TradeRoute route) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getDifficultyColor(route.difficulty),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _getDifficultyColor(route.difficulty),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            _getDifficultyIcon(route.difficulty),
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          route.name,
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
              '${route.destination} • ${route.distance} nautical miles',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF2E86AB),
              ),
            ),
            Text(
              route.description,
              style: TextStyle(
                fontSize: 13,
                color: const Color(0xFF2E86AB).withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Exports:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E86AB),
                            ),
                          ),
                          ...route.exports.map((good) => Text(
                            '• ${good.name} (${good.baseValue}ᴅ)',
                            style: const TextStyle(fontSize: 12),
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Imports:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E86AB),
                            ),
                          ),
                          ...route.imports.map((good) => Text(
                            '• ${good.name} (${good.baseValue}ᴅ)',
                            style: const TextStyle(fontSize: 12),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _startExpedition(route),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2E86AB),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Start Expedition'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShipCard(Ship ship) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ship.isAvailable ? const Color(0xFF2E86AB) : Colors.grey,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                _getShipTypeIcon(ship.type),
                color: ship.isAvailable ? const Color(0xFF2E86AB) : Colors.grey,
                size: 32,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ship.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ship.isAvailable ? const Color(0xFF2E86AB) : Colors.grey,
                      ),
                    ),
                    Text(
                      ship.type.name.replaceAll('_', ' ').toUpperCase(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: ship.isAvailable ? Colors.green : Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  ship.isAvailable ? 'Available' : 'At Sea',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildStatChip('Cargo', '${ship.cargoCapacity}', Icons.inventory),
              const SizedBox(width: 8),
              _buildStatChip('Speed', '${ship.speed}', Icons.speed),
              const SizedBox(width: 8),
              _buildStatChip('Crew', '${ship.crewSize}', Icons.group),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildExpeditionCard(TradingExpedition expedition) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2E86AB), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  expedition.ship.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E86AB),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getStatusColor(expedition.status),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  expedition.status.name.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: expedition.progressPercent / 100,
            backgroundColor: Colors.grey.withValues(alpha: 0.3),
            valueColor: AlwaysStoppedAnimation<Color>(
              _getStatusColor(expedition.status),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${expedition.progressPercent}% complete',
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF2E86AB),
            ),
          ),
          if (expedition.status == ExpeditionStatus.completed)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _completeExpedition(expedition),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Collect Results'),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStatChip(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF2E86AB).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF2E86AB)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: const Color(0xFF2E86AB)),
          const SizedBox(width: 4),
          Text(
            '$label: $value',
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF2E86AB),
            ),
          ),
        ],
      ),
    );
  }

  Color _getDifficultyColor(TradeDifficulty difficulty) {
    switch (difficulty) {
      case TradeDifficulty.easy:
        return Colors.green;
      case TradeDifficulty.medium:
        return Colors.orange;
      case TradeDifficulty.hard:
        return Colors.red;
      case TradeDifficulty.dangerous:
        return Colors.purple;
    }
  }

  IconData _getDifficultyIcon(TradeDifficulty difficulty) {
    switch (difficulty) {
      case TradeDifficulty.easy:
        return Icons.waves;
      case TradeDifficulty.medium:
        return Icons.sailing;
      case TradeDifficulty.hard:
        return Icons.warning;
      case TradeDifficulty.dangerous:
        return Icons.dangerous;
    }
  }

  IconData _getShipTypeIcon(ShipType type) {
    switch (type) {
      case ShipType.fishing_boat:
        return Icons.directions_boat;
      case ShipType.merchant_vessel:
        return Icons.local_shipping;
      case ShipType.war_galley:
        return Icons.military_tech;
      case ShipType.luxury_yacht:
        return Icons.yacht;
    }
  }

  Color _getStatusColor(ExpeditionStatus status) {
    switch (status) {
      case ExpeditionStatus.preparing:
        return Colors.grey;
      case ExpeditionStatus.traveling:
        return Colors.blue;
      case ExpeditionStatus.trading:
        return Colors.orange;
      case ExpeditionStatus.returning:
        return Colors.purple;
      case ExpeditionStatus.completed:
        return Colors.green;
      case ExpeditionStatus.failed:
        return Colors.red;
    }
  }

  void _startExpedition(TradeRoute route) {
    // TODO: Implement expedition planning dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Start Expedition to ${route.destination}'),
        content: const Text('Expedition planning coming soon!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _completeExpedition(TradingExpedition expedition) {
    ref.read(harborProvider.notifier).completeExpedition(expedition.id, ref);
    _showMessage('Expedition completed successfully!', Colors.green);
  }

  void _showMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}