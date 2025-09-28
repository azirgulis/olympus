import 'package:go_router/go_router.dart';
import '../main.dart';
import '../screens/character_selection_screen.dart';
import '../screens/game_map_screen.dart';
import '../screens/locations/athens_screen.dart';
import '../screens/locations/thebes_screen.dart';
import '../screens/locations/corinth_screen.dart';
import '../screens/locations/sparta_screen.dart';
import '../screens/locations/delphi_screen.dart';
import '../screens/locations/marathon_screen.dart';
import '../screens/save_load_screen.dart';
import '../screens/quest_screen.dart';
import '../screens/academy_screen.dart';
import '../screens/harbor_screen.dart';

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
    GoRoute(
      path: '/athens',
      name: 'athens',
      builder: (context, state) => const AthensScreen(),
    ),
    GoRoute(
      path: '/thebes',
      name: 'thebes',
      builder: (context, state) => const ThebesScreen(),
    ),
    GoRoute(
      path: '/corinth',
      name: 'corinth',
      builder: (context, state) => const CorinthScreen(),
    ),
    GoRoute(
      path: '/sparta',
      name: 'sparta',
      builder: (context, state) => const SpartaScreen(),
    ),
    GoRoute(
      path: '/delphi',
      name: 'delphi',
      builder: (context, state) => const DelphiScreen(),
    ),
    GoRoute(
      path: '/marathon',
      name: 'marathon',
      builder: (context, state) => const MarathonScreen(),
    ),
    GoRoute(
      path: '/save-load',
      name: 'save-load',
      builder: (context, state) {
        final mode = state.uri.queryParameters['mode'];
        return SaveLoadScreen(isLoadMode: mode == 'load');
      },
    ),
    GoRoute(
      path: '/quests',
      name: 'quests',
      builder: (context, state) => const QuestScreen(),
    ),
    GoRoute(
      path: '/academy',
      name: 'academy',
      builder: (context, state) => const AcademyScreen(),
    ),
    GoRoute(
      path: '/harbor',
      name: 'harbor',
      builder: (context, state) => const HarborScreen(),
    ),
  ],
);