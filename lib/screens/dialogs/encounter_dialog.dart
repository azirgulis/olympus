import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/game_map.dart';
import '../../providers/game_map_provider.dart';
import '../../providers/player_provider.dart';

class EncounterDialog extends ConsumerWidget {
  final TravelEncounter encounter;

  const EncounterDialog({
    super.key,
    required this.encounter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              _getEncounterTypeColor(encounter.type).withValues(alpha: 0.1),
              _getEncounterTypeColor(encounter.type).withValues(alpha: 0.2),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _getEncounterTypeColor(encounter.type),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    _getEncounterIcon(encounter.type),
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    encounter.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: _getEncounterTypeColor(encounter.type),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Encounter description
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: _getEncounterTypeColor(encounter.type).withValues(alpha: 0.3)),
              ),
              child: Text(
                encounter.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF2E86AB),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Encounter type badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: _getEncounterTypeColor(encounter.type),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                encounter.type.name.replaceAll('_', ' ').toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Choose your response:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: _getEncounterTypeColor(encounter.type),
              ),
            ),
            const SizedBox(height: 12),

            // Options
            Expanded(
              child: ListView.builder(
                itemCount: encounter.options.length,
                itemBuilder: (context, index) {
                  final option = encounter.options[index];
                  return _buildOptionCard(context, ref, option);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, WidgetRef ref, EncounterOption option) {
    final player = ref.watch(playerProvider);
    final canAfford = option.cost <= player.drachmae;
    final hasRequirements = option.requirements.every((req) {
      // Simple requirement check - can be enhanced
      return true; // TODO: Check actual requirements
    });

    final canSelect = canAfford && hasRequirements;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: canSelect ? Colors.white : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: canSelect
              ? _getEncounterTypeColor(encounter.type).withValues(alpha: 0.3)
              : Colors.grey.shade300,
        ),
      ),
      child: ListTile(
        title: Text(
          option.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: canSelect ? const Color(0xFF2E86AB) : Colors.grey.shade600,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              option.description,
              style: TextStyle(
                color: canSelect ? const Color(0xFF2E86AB) : Colors.grey.shade600,
              ),
            ),
            if (option.cost > 0) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 16,
                    color: canAfford ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Cost: ${option.cost} δ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: canAfford ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ],
            if (option.requirements.isNotEmpty) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.inventory,
                    size: 16,
                    color: hasRequirements ? Colors.green : Colors.orange,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Requires: ${option.requirements.join(', ')}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: hasRequirements ? Colors.green : Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
        trailing: ElevatedButton(
          onPressed: canSelect ? () => _selectOption(context, ref, option) : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: _getEncounterTypeColor(encounter.type),
            foregroundColor: Colors.white,
          ),
          child: const Text('Choose'),
        ),
      ),
    );
  }

  void _selectOption(BuildContext context, WidgetRef ref, EncounterOption option) {
    ref.read(gameMapProvider.notifier).resolveEncounter(option.id, ref);
    Navigator.of(context).pop();

    // Show outcome message
    final outcomes = option.outcomes.where((outcome) {
      final random = DateTime.now().millisecondsSinceEpoch % 100;
      return random < outcome.probability;
    }).toList();

    if (outcomes.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            outcomes.map((o) => o.description).join('\n'),
          ),
          backgroundColor: _getEncounterTypeColor(encounter.type),
          duration: const Duration(seconds: 4),
        ),
      );
    }
  }

  IconData _getEncounterIcon(EncounterType type) {
    switch (type) {
      case EncounterType.merchant:
        return Icons.shopping_cart;
      case EncounterType.bandit:
        return Icons.dangerous;
      case EncounterType.philosopher:
        return Icons.school;
      case EncounterType.traveler:
        return Icons.person;
      case EncounterType.soldier:
        return Icons.security;
      case EncounterType.priest:
        return Icons.temple_hindu;
      case EncounterType.scholar:
        return Icons.menu_book;
      case EncounterType.mystic:
        return Icons.auto_awesome;
      case EncounterType.event:
        return Icons.warning;
      case EncounterType.discovery:
        return Icons.explore;
    }
  }

  Color _getEncounterTypeColor(EncounterType type) {
    switch (type) {
      case EncounterType.merchant:
        return Colors.green.shade600;
      case EncounterType.bandit:
        return Colors.red.shade600;
      case EncounterType.philosopher:
        return Colors.purple.shade600;
      case EncounterType.traveler:
        return Colors.blue.shade600;
      case EncounterType.soldier:
        return Colors.orange.shade600;
      case EncounterType.priest:
        return Colors.yellow.shade700;
      case EncounterType.scholar:
        return Colors.indigo.shade600;
      case EncounterType.mystic:
        return Colors.deepPurple.shade600;
      case EncounterType.event:
        return Colors.grey.shade600;
      case EncounterType.discovery:
        return Colors.brown.shade600;
    }
  }
}