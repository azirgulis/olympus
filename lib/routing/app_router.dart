import 'package:go_router/go_router.dart';
import '../main.dart';
import '../screens/character_selection_screen.dart';
import '../screens/game_map_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const MainMenuScreen(),
    ),
    GoRoute(
      path: '/character-selection',
      name: 'character-selection',
      builder: (context, state) => const CharacterSelectionScreen(),
    ),
    GoRoute(
      path: '/game',
      name: 'game',
      builder: (context, state) => const GameMapScreen(),
    ),
  ],
);