import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/player_provider.dart';
import '../../providers/simple_save_provider.dart';
import '../../widgets/game_ui/resource_bar.dart';

class CorinthScreen extends ConsumerStatefulWidget {
  const CorinthScreen({super.key});

  @override
  ConsumerState<CorinthScreen> createState() => _CorinthScreenState();
}

class _CorinthScreenState extends ConsumerState<CorinthScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SaveGameService.autoSave(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4682B4), // Steel blue
              Color(0xFFFFD700), // Gold
              Color(0xFF8B4513), // Brown
            ],
            stops: [0.0, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
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
                          onPressed: () => context.go('/game'),
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.account_balance, color: Colors.white, size: 28),
                                const SizedBox(width: 8),
                                Text(
                                  'CORINTH',
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
                            maxValue: 1000,
                            color: Colors.amber,
                            showAsNumber: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.95),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF4682B4), width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4682B4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.business,
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
                            'Welcome to Corinth!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4682B4),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'The wealthy trading city controlling the isthmus. Center of commerce and craftsmanship.',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xFF4682B4).withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                      _buildServiceCard(
                        context,
                        'Market',
                        'Trade valuable goods',
                        Icons.store,
                        Colors.green,
                        () => _showComingSoon(context),
                      ),
                      _buildServiceCard(
                        context,
                        'Workshop',
                        'Craft items',
                        Icons.build,
                        Colors.orange,
                        () => _showComingSoon(context),
                      ),
                      _buildServiceCard(
                        context,
                        'Port',
                        'Ship building',
                        Icons.directions_boat,
                        Colors.blue,
                        () => _showComingSoon(context),
                      ),
                      _buildServiceCard(
                        context,
                        'Canal',
                        'Engineering marvel',
                        Icons.water,
                        Colors.cyan,
                        () => _showComingSoon(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withValues(alpha: 0.1),
                color.withValues(alpha: 0.2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: Colors.white, size: 32),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4682B4),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xFF4682B4).withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Coming soon! This feature is under development.'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}