import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/player_provider.dart';

class ReputationScreen extends ConsumerWidget {
  const ReputationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(playerProvider);
    final cityReps = _getCityReputations(player.reputation);
    final godReps = _getGodReputations(player.reputation);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reputation'),
        backgroundColor: const Color(0xFF8B4513),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Overall summary
            _buildSummaryCard(player.reputation),

            const SizedBox(height: 16),

            // City Reputations
            _buildSectionHeader('City Reputations', Icons.location_city),
            ...cityReps.entries.map((entry) => _buildReputationCard(
                  entry.key,
                  entry.value,
                  _getCityIcon(entry.key),
                  _getCityDescription(entry.key),
                )),

            const SizedBox(height: 16),

            // God Reputations
            _buildSectionHeader('Divine Favor', Icons.auto_awesome),
            ...godReps.entries.map((entry) => _buildReputationCard(
                  entry.key,
                  entry.value,
                  _getGodIcon(entry.key),
                  _getGodDescription(entry.key),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(Map<String, int> allReps) {
    final avgRep = allReps.values.isEmpty
        ? 50
        : allReps.values.reduce((a, b) => a + b) ~/ allReps.length;
    final status = _getReputationStatus(avgRep);

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            _getReputationColor(avgRep),
            _getReputationColor(avgRep).withOpacity(0.7),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(Icons.stars, size: 48, color: Colors.white),
          const SizedBox(height: 12),
          const Text(
            'Overall Standing',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            status,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Average Reputation: $avgRep',
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF8B4513)),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8B4513),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReputationCard(String name, int value, IconData icon, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _getReputationColor(value).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: _getReputationColor(value), size: 28),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: _getReputationColor(value),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    value.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Progress bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: value / 100,
                minHeight: 8,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(_getReputationColor(value)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _getReputationStatus(value),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: _getReputationColor(value),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, int> _getCityReputations(Map<String, int> allReps) {
    return {
      'Athens': allReps['athens'] ?? 50,
      'Sparta': allReps['sparta'] ?? 50,
      'Thebes': allReps['thebes'] ?? 50,
      'Corinth': allReps['corinth'] ?? 50,
      'Delphi': allReps['delphi'] ?? 50,
    };
  }

  Map<String, int> _getGodReputations(Map<String, int> allReps) {
    return {
      'Zeus': allReps['zeus'] ?? 50,
      'Athena': allReps['athena'] ?? 50,
      'Hermes': allReps['hermes'] ?? 50,
      'Poseidon': allReps['poseidon'] ?? 50,
      'Apollo': allReps['apollo'] ?? 50,
    };
  }

  Color _getReputationColor(int value) {
    if (value >= 80) return Colors.purple;
    if (value >= 60) return Colors.blue;
    if (value >= 40) return Colors.green;
    if (value >= 20) return Colors.orange;
    return Colors.red;
  }

  String _getReputationStatus(int value) {
    if (value >= 90) return 'Legendary';
    if (value >= 80) return 'Revered';
    if (value >= 70) return 'Honored';
    if (value >= 60) return 'Respected';
    if (value >= 50) return 'Neutral';
    if (value >= 40) return 'Disliked';
    if (value >= 30) return 'Shunned';
    if (value >= 20) return 'Hated';
    return 'Despised';
  }

  IconData _getCityIcon(String city) {
    switch (city) {
      case 'Athens':
        return Icons.account_balance;
      case 'Sparta':
        return Icons.shield;
      case 'Thebes':
        return Icons.landscape;
      case 'Corinth':
        return Icons.sailing;
      case 'Delphi':
        return Icons.temple_buddhist;
      default:
        return Icons.location_city;
    }
  }

  IconData _getGodIcon(String god) {
    switch (god) {
      case 'Zeus':
        return Icons.flash_on;
      case 'Athena':
        return Icons.school;
      case 'Hermes':
        return Icons.directions_run;
      case 'Poseidon':
        return Icons.waves;
      case 'Apollo':
        return Icons.wb_sunny;
      default:
        return Icons.auto_awesome;
    }
  }

  String _getCityDescription(String city) {
    switch (city) {
      case 'Athens':
        return 'Center of philosophy and democracy';
      case 'Sparta':
        return 'Military powerhouse of Greece';
      case 'Thebes':
        return 'Agricultural heartland';
      case 'Corinth':
        return 'Trading hub and port city';
      case 'Delphi':
        return 'Sacred home of the Oracle';
      default:
        return '';
    }
  }

  String _getGodDescription(String god) {
    switch (god) {
      case 'Zeus':
        return 'King of the Gods, ruler of sky and thunder';
      case 'Athena':
        return 'Goddess of wisdom and warfare';
      case 'Hermes':
        return 'God of commerce and travelers';
      case 'Poseidon':
        return 'God of the sea and earthquakes';
      case 'Apollo':
        return 'God of music, prophecy, and healing';
      default:
        return '';
    }
  }
}
