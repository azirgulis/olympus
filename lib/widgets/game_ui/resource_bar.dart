import 'package:flutter/material.dart';

class ResourceBar extends StatelessWidget {
  final IconData icon;
  final String label;
  final int value;
  final int maxValue;
  final Color color;
  final bool showAsNumber;

  const ResourceBar({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.maxValue,
    required this.color,
    this.showAsNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = maxValue > 0 ? (value / maxValue).clamp(0.0, 1.0) : 0.0;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: color, size: 16),
              const SizedBox(width: 4),
              Text(
                showAsNumber ? '$value' : '$value/$maxValue',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          if (!showAsNumber) ...[
            Container(
              height: 6,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(3),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}