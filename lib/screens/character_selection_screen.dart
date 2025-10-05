import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/player.dart';
import '../providers/player_provider.dart';
import '../providers/inventory_provider.dart';

class CharacterSelectionScreen extends ConsumerStatefulWidget {
  const CharacterSelectionScreen({super.key});

  @override
  ConsumerState<CharacterSelectionScreen> createState() =>
      _CharacterSelectionScreenState();
}

class _CharacterSelectionScreenState
    extends ConsumerState<CharacterSelectionScreen> {
  final TextEditingController _nameController = TextEditingController();
  CharacterClass _selectedClass = CharacterClass.merchant;
  bool _isNameValid = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_handleNameChanged);
    _handleNameChanged();
  }

  @override
  void dispose() {
    _nameController.removeListener(_handleNameChanged);
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE6B17A), // Light sandy color
              Color(0xFF8B4513), // Ancient Greek pottery brown
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),

                const SizedBox(height: 20),

                // Title
                Center(
                  child: Text(
                    'Choose Your Hero',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // Name Input
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: const Color(0xFF8B4513), width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hero Name:',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF8B4513),
                                ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your hero\'s name...',
                          border: OutlineInputBorder(),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Character Classes
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Your Path:',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListView(
                          children: [
                            _buildClassCard(
                              CharacterClass.merchant,
                              'Merchant',
                              'Masters of Trade & Commerce',
                              '• Starts with 150 drachmae\n• +2 Bargaining skill\n• +2 Trading skill\n• Better market prices',
                              Icons.store,
                            ),
                            const SizedBox(height: 12),
                            _buildClassCard(
                              CharacterClass.scholar,
                              'Scholar',
                              'Seeker of Knowledge & Wisdom',
                              '• Enhanced puzzle solving\n• +2 Forecasting skill\n• +2 Resource Management\n• Access to advanced theories',
                              Icons.school,
                            ),
                            const SizedBox(height: 12),
                            _buildClassCard(
                              CharacterClass.warrior,
                              'Warrior',
                              'Defender of the Realm',
                              '• +3 Survival skill\n• Better combat outcomes\n• Intimidation in negotiations\n• Reduced travel risks',
                              Icons.shield,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Start Journey Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _isNameValid ? _startJourney : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF8B4513),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                        side: const BorderSide(
                          color: Color(0xFF8B4513),
                          width: 3,
                        ),
                      ),
                      elevation: 6,
                    ),
                    child: const Text(
                      'Begin Your Odyssey',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClassCard(
    CharacterClass characterClass,
    String title,
    String subtitle,
    String description,
    IconData icon,
  ) {
    final isSelected = _selectedClass == characterClass;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedClass = characterClass;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.white : Colors.white.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? const Color(0xFFFFD700) : const Color(0xFF8B4513),
            width: isSelected ? 3 : 2,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color(0xFFFFD700).withValues(alpha: 0.5),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ]
              : null,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF8B4513),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF8B4513),
                            ),
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.check_circle,
                          color: Color(0xFFFFD700),
                          size: 24,
                        ),
                      ],
                    ],
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: const Color(0xFF8B4513).withValues(alpha: 0.8),
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xFF8B4513).withValues(alpha: 0.9),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startJourney() {
    // Create the new player
    ref.read(playerProvider.notifier).createNewPlayer(
          name: _nameController.text.trim(),
          characterClass: _selectedClass,
        );

    // Initialize starting inventory
    ref.read(inventoryProvider.notifier).initializeStartingInventory();

    // Navigate to the game
    context.go('/game');
  }

  void _handleNameChanged() {
    final trimmed = _nameController.text.trim();
    final isValid = trimmed.isNotEmpty;
    if (isValid != _isNameValid) {
      setState(() {
        _isNameValid = isValid;
      });
    }
  }
}
