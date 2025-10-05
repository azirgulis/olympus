import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _musicEnabled = true;
  bool _soundEffectsEnabled = true;
  bool _colorBlindMode = false;
  double _textSpeed = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE6B17A),
              Color(0xFF8B4513),
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _buildSectionTitle('Audio'),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: const Text('Music'),
                      subtitle:
                          const Text('Toggle background music during gameplay'),
                      value: _musicEnabled,
                      onChanged: (value) =>
                          setState(() => _musicEnabled = value),
                    ),
                    const Divider(height: 0),
                    SwitchListTile(
                      title: const Text('Sound Effects'),
                      subtitle: const Text('Toggle UI and event sound effects'),
                      value: _soundEffectsEnabled,
                      onChanged: (value) =>
                          setState(() => _soundEffectsEnabled = value),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _buildSectionTitle('Accessibility'),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: SwitchListTile(
                  title: const Text('Color Blind Mode'),
                  subtitle:
                      const Text('Adjust color palette for better contrast'),
                  value: _colorBlindMode,
                  onChanged: (value) => setState(() => _colorBlindMode = value),
                ),
              ),
              const SizedBox(height: 24),
              _buildSectionTitle('Text Speed'),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Slider(
                        value: _textSpeed,
                        onChanged: (value) =>
                            setState(() => _textSpeed = value),
                      ),
                      Text(
                        _textSpeed < 0.33
                            ? 'Slow narration'
                            : (_textSpeed > 0.66
                                ? 'Fast narration'
                                : 'Balanced narration'),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () => context.pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF8B4513),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.check),
                label: const Text(
                  'Save & Return',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
