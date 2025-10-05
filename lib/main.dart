import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'routing/app_router.dart';
import 'services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize storage service
  await StorageService.initialize();

  runApp(
    const ProviderScope(
      child: OdysseyOfOlympusApp(),
    ),
  );
}

class OdysseyOfOlympusApp extends StatelessWidget {
  const OdysseyOfOlympusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Odyssey of Olympus: Economic Myths',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B4513), // Ancient Greek pottery brown
        ),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Game Title
              Text(
                'ODYSSEY OF OLYMPUS',
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
              const SizedBox(height: 8),
              Text(
                'Economic Myths',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                    ),
              ),
              const SizedBox(height: 48),

              // Menu Buttons
              MenuButton(
                text: 'New Quest',
                onPressed: () {
                  context.go('/character-selection');
                },
              ),
              const SizedBox(height: 16),
              MenuButton(
                text: 'Continue Journey',
                onPressed: () {
                  context.go('/save-load?mode=load');
                },
              ),
              const SizedBox(height: 16),
              MenuButton(
                text: 'Settings',
                onPressed: () {
                  context.go('/settings');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MenuButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withValues(alpha: 0.9),
          foregroundColor: const Color(0xFF8B4513),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Color(0xFF8B4513),
              width: 2,
            ),
          ),
          elevation: 4,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
