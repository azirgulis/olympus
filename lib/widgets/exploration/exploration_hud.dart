import 'package:flutter/material.dart';
import '../../models/player.dart';
import '../../models/exploration.dart';

/// Heads-Up Display for exploration mode
class ExplorationHud extends StatelessWidget {
  final Player player;
  final VoidCallback onMenuPressed;
  final VoidCallback onInteractPressed;
  final VoidCallback onQuestJournalPressed;
  final Function(Direction) onDirectionPressed;

  const ExplorationHud({
    super.key,
    required this.player,
    required this.onMenuPressed,
    required this.onInteractPressed,
    required this.onQuestJournalPressed,
    required this.onDirectionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // Top-left: Player stats
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.withOpacity(0.5), width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Health
                  _buildStatRow(
                    Icons.favorite,
                    Colors.red,
                    player.health,
                    100,
                    'HP',
                  ),
                  const SizedBox(height: 8),
                  // Energy
                  _buildStatRow(
                    Icons.flash_on,
                    Colors.yellow,
                    player.energy,
                    100,
                    'EN',
                  ),
                  const SizedBox(height: 8),
                  // Money
                  Row(
                    children: [
                      Icon(Icons.monetization_on, color: Colors.amber, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        '${player.drachmae} δ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Top-right: Menu button
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              onPressed: onMenuPressed,
              icon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.amber.withOpacity(0.5), width: 2),
                ),
                child: const Icon(Icons.menu, color: Colors.white, size: 28),
              ),
            ),
          ),

          // Bottom-right: Action buttons
          Positioned(
            bottom: 80,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Quest Journal button
                FloatingActionButton(
                  mini: true,
                  heroTag: 'journal_button',
                  onPressed: onQuestJournalPressed,
                  backgroundColor: Colors.blue.shade700,
                  child: const Icon(Icons.book, color: Colors.white),
                ),
                const SizedBox(height: 12),
                // Interact button
                FloatingActionButton(
                  heroTag: 'interact_button',
                  onPressed: onInteractPressed,
                  backgroundColor: Colors.amber,
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.waving_hand, color: Colors.black),
                      Text(
                        'TALK',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom-left: Directional controls
          Positioned(
            bottom: 16,
            left: 16,
            child: _buildDirectionalPad(),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectionalPad() {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amber.withOpacity(0.5), width: 2),
      ),
      child: Stack(
        children: [
          // Up button
          Positioned(
            top: 0,
            left: 50,
            child: _buildDirectionButton(Icons.arrow_drop_up, Direction.up),
          ),
          // Down button
          Positioned(
            bottom: 0,
            left: 50,
            child: _buildDirectionButton(Icons.arrow_drop_down, Direction.down),
          ),
          // Left button
          Positioned(
            left: 0,
            top: 50,
            child: _buildDirectionButton(Icons.arrow_left, Direction.left),
          ),
          // Right button
          Positioned(
            right: 0,
            top: 50,
            child: _buildDirectionButton(Icons.arrow_right, Direction.right),
          ),
          // Center indicator
          Center(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.control_camera, color: Colors.white70, size: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectionButton(IconData icon, Direction direction) {
    return GestureDetector(
      onTapDown: (_) => onDirectionPressed(direction),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blue.shade700,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }

  Widget _buildStatRow(IconData icon, Color color, int current, int max, String label) {
    final percentage = (current / max).clamp(0.0, 1.0);

    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 10,
              ),
            ),
            SizedBox(
              width: 100,
              child: Stack(
                children: [
                  Container(
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: percentage,
                    child: Container(
                      height: 12,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '$current/$max',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
