import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/game_map.dart';
import '../../providers/game_map_provider.dart';

class TravelEncounterDialog extends ConsumerWidget {
  final TravelEncounter encounter;

  const TravelEncounterDialog({
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
              Colors.orange.shade50,
              Colors.orange.shade100,
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: _getEncounterTypeColor(encounter.type),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _getEncounterIcon(encounter.type),
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        encounter.title,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Journey Encounter',
                        style: TextStyle(
                          color: Colors.orange.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.warning_amber,
                  color: Colors.orange.shade700,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Encounter Description
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What happened:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    encounter.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2E86AB),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Options
            Text(
              'Choose your response:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange.shade800,
              ),
            ),
            const SizedBox(height: 16),

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
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => _selectOption(context, ref, option),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange.shade600,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      option.description,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E86AB),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade400,
                    size: 16,
                  ),
                ],
              ),
              if (option.outcomes.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: option.outcomes.map((outcome) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: _getOutcomeColor(outcome.type).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: _getOutcomeColor(outcome.type),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '${outcome.probability}% ${_getOutcomeText(outcome)}',
                        style: TextStyle(
                          fontSize: 12,
                          color: _getOutcomeColor(outcome.type),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _selectOption(BuildContext context, WidgetRef ref, EncounterOption option) {
    ref.read(gameMapProvider.notifier).resolveEncounter(option.id, ref);
    Navigator.of(context).pop();

    // Show outcome feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You chose to: ${option.description}'),
        backgroundColor: Colors.orange.shade600,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Color _getEncounterTypeColor(EncounterType type) {
    switch (type) {
      case EncounterType.bandit:
        return Colors.red.shade600;
      case EncounterType.merchant:
        return Colors.green.shade600;
      case EncounterType.event:
        return Colors.blue.shade600;
      case EncounterType.discovery:
        return Colors.brown.shade600;
      case EncounterType.traveler:
        return Colors.purple.shade600;
      case EncounterType.soldier:
        return Colors.indigo.shade600;
      case EncounterType.mystic:
        return Colors.deepPurple.shade600;
      case EncounterType.philosopher:
        return Colors.orange.shade600;
      case EncounterType.priest:
        return Colors.yellow.shade600;
      case EncounterType.scholar:
        return Colors.teal.shade600;
    }
  }

  IconData _getEncounterIcon(EncounterType type) {
    switch (type) {
      case EncounterType.bandit:
        return Icons.shield;
      case EncounterType.merchant:
        return Icons.shopping_cart;
      case EncounterType.event:
        return Icons.cloud;
      case EncounterType.discovery:
        return Icons.pets;
      case EncounterType.traveler:
        return Icons.group;
      case EncounterType.soldier:
        return Icons.security;
      case EncounterType.mystic:
        return Icons.auto_awesome;
      case EncounterType.philosopher:
        return Icons.psychology;
      case EncounterType.priest:
        return Icons.temple_hindu;
      case EncounterType.scholar:
        return Icons.school;
    }
  }


  Color _getOutcomeColor(OutcomeType type) {
    switch (type) {
      case OutcomeType.gainDrachmae:
      case OutcomeType.gainExperience:
      case OutcomeType.gainItem:
      case OutcomeType.gainReputation:
      case OutcomeType.gainHealth:
      case OutcomeType.gainKnowledge:
      case OutcomeType.unlockLocation:
        return Colors.green;
      case OutcomeType.loseDrachmae:
      case OutcomeType.loseItem:
      case OutcomeType.loseReputation:
      case OutcomeType.loseHealth:
        return Colors.red;
      case OutcomeType.questTrigger:
        return Colors.blue;
    }
  }

  String _getOutcomeText(EncounterOutcome outcome) {
    switch (outcome.type) {
      case OutcomeType.gainDrachmae:
        return '+${outcome.value}δ';
      case OutcomeType.loseDrachmae:
        return '-${outcome.value}δ';
      case OutcomeType.gainExperience:
        return '+${outcome.value} XP';
      case OutcomeType.gainHealth:
        return '+${outcome.value} HP';
      case OutcomeType.gainItem:
        return '+${outcome.itemId}';
      case OutcomeType.loseItem:
        return '-${outcome.itemId}';
      case OutcomeType.gainReputation:
        return '+${outcome.value} rep';
      case OutcomeType.loseReputation:
        return '-${outcome.value} rep';
      case OutcomeType.loseHealth:
        return '-${outcome.value} HP';
      case OutcomeType.gainKnowledge:
        return '+${outcome.value} Knowledge';
      case OutcomeType.unlockLocation:
        return 'Unlock ${outcome.itemId}';
      case OutcomeType.questTrigger:
        return 'Quest triggered';
    }
  }
}