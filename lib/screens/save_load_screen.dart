import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/simple_save_provider.dart';
import '../services/storage_service.dart';
import '../models/player.dart';

class SaveLoadScreen extends ConsumerStatefulWidget {
  final bool isLoadMode;

  const SaveLoadScreen({
    super.key,
    this.isLoadMode = true,
  });

  @override
  ConsumerState<SaveLoadScreen> createState() => _SaveLoadScreenState();
}

class _SaveLoadScreenState extends ConsumerState<SaveLoadScreen> {
  String? selectedSlot;
  final TextEditingController _saveNameController = TextEditingController();

  @override
  void dispose() {
    _saveNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final saveSlots = ref.watch(availableSaveSlotsProvider);
    // Remove the complex state watching since we're using simple functions

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
          child: Column(
            children: [
              // Header
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
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Expanded(
                      child: Text(
                        widget.isLoadMode ? 'Load Game' : 'Save Game',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 48), // Balance the back button
                  ],
                ),
              ),

              // Save/Load content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // New save input (only for save mode)
                      if (!widget.isLoadMode) ...[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.9),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFF8B4513), width: 2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Create New Save:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8B4513),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _saveNameController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter save name...',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                ),
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: _createNewSave,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF8B4513),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: const Text('Save Game'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Divider(color: Colors.white),
                        const SizedBox(height: 16),
                      ],

                      // Existing saves
                      Text(
                        widget.isLoadMode ? 'Saved Games:' : 'Existing Saves:',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Save slots list
                      Expanded(
                        child: saveSlots.isEmpty
                            ? Center(
                                child: Container(
                                  padding: const EdgeInsets.all(32),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.9),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        widget.isLoadMode ? Icons.save_alt : Icons.save,
                                        size: 64,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        widget.isLoadMode
                                            ? 'No saved games found'
                                            : 'No existing saves',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : ListView.builder(
                                itemCount: saveSlots.length,
                                itemBuilder: (context, index) {
                                  final slot = saveSlots[index];
                                  return _buildSaveSlotCard(slot);
                                },
                              ),
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

  Widget _buildSaveSlotCard(String saveSlot) {
    final metadata = ref.watch(saveMetadataProvider(saveSlot));
    final isSelected = selectedSlot == saveSlot;

    if (metadata == null) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFFFFD700) : const Color(0xFF8B4513),
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
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _getClassColor(metadata.characterClass),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            _getClassIcon(metadata.characterClass),
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          metadata.playerName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF8B4513),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${metadata.characterClass.name.toUpperCase()} • Level ${metadata.playerLevel}',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF8B4513),
              ),
            ),
            Text(
              'Location: ${metadata.currentLocation.toUpperCase()}',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF8B4513),
              ),
            ),
            Text(
              'Saved: ${_formatDate(metadata.lastSaved)}',
              style: TextStyle(
                fontSize: 11,
                color: const Color(0xFF8B4513).withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.isLoadMode)
              ElevatedButton(
                onPressed: () => _loadGame(saveSlot),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8B4513),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(60, 36),
                ),
                child: const Text('Load'),
              ),
            if (!widget.isLoadMode) ...[
              ElevatedButton(
                onPressed: () => _overwriteSave(saveSlot),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(60, 36),
                ),
                child: const Text('Overwrite'),
              ),
              const SizedBox(width: 8),
            ],
            IconButton(
              onPressed: () => _deleteSave(saveSlot),
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
          ],
        ),
        onTap: () {
          setState(() {
            selectedSlot = isSelected ? null : saveSlot;
          });
        },
      ),
    );
  }

  Color _getClassColor(CharacterClass characterClass) {
    switch (characterClass) {
      case CharacterClass.merchant:
        return Colors.green;
      case CharacterClass.scholar:
        return Colors.blue;
      case CharacterClass.warrior:
        return Colors.red;
    }
  }

  IconData _getClassIcon(CharacterClass characterClass) {
    switch (characterClass) {
      case CharacterClass.merchant:
        return Icons.store;
      case CharacterClass.scholar:
        return Icons.school;
      case CharacterClass.warrior:
        return Icons.shield;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  void _createNewSave() async {
    if (_saveNameController.text.trim().isEmpty) {
      _showError('Please enter a save name');
      return;
    }

    final saveName = _saveNameController.text.trim();
    final success = await SaveGameService.saveCurrentGame(ref, saveSlot: saveName);

    if (success) {
      _showSuccess('Game saved successfully!');
      _saveNameController.clear();
    } else {
      _showError('Failed to save game');
    }
  }

  void _overwriteSave(String saveSlot) async {
    final confirmed = await _showConfirmationDialog(
      'Overwrite Save?',
      'This will replace the existing save. Continue?',
    );

    if (confirmed) {
      final success = await SaveGameService.saveCurrentGame(ref, saveSlot: saveSlot);

      if (success) {
        _showSuccess('Game saved successfully!');
      } else {
        _showError('Failed to save game');
      }
    }
  }

  void _loadGame(String saveSlot) async {
    final success = await SaveGameService.loadGame(ref, saveSlot: saveSlot);

    if (success) {
      _showSuccess('Game loaded successfully!');
      // Navigate to game
      if (mounted) {
        context.go('/game');
      }
    } else {
      _showError('Failed to load game');
    }
  }

  void _deleteSave(String saveSlot) async {
    final confirmed = await _showConfirmationDialog(
      'Delete Save?',
      'This action cannot be undone. Delete this save?',
    );

    if (confirmed) {
      try {
        await StorageService.deleteSave(saveSlot: saveSlot);
        _showSuccess('Save deleted');
      } catch (e) {
        _showError('Failed to delete save');
      }
    }
  }

  Future<bool> _showConfirmationDialog(String title, String content) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Confirm'),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }
}