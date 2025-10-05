import 'package:go_router/go_router.dart';
import '../main.dart';
import '../screens/character_selection_screen.dart';
import '../screens/game_map_screen.dart';
import '../screens/exploration_screen.dart';
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
import '../screens/market_screen.dart';
import '../screens/puzzle_screen.dart';
import '../screens/quest_journal_screen.dart';
import '../screens/world_map_screen.dart';
import '../screens/shop_screen.dart';
import '../screens/inventory_screen.dart';
import '../screens/reputation_screen.dart';
import '../screens/settings_screen.dart';

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
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/map',
      name: 'map',
      builder: (context, state) => const GameMapScreen(),
    ),
    GoRoute(
      path: '/game',
      name: 'game',
      builder: (context, state) => const GameMapScreen(),
    ),
    GoRoute(
      path: '/explore/:cityId',
      name: 'explore',
      builder: (context, state) {
        final cityId = state.pathParameters['cityId'] ?? 'athens';
        return ExplorationScreen(cityId: cityId);
      },
    ),
    GoRoute(
      path: '/athens',
      name: 'athens',
      builder: (context, state) => const AthensScreen(),
    ),
    GoRoute(
      path: '/market',
      name: 'market',
      builder: (context, state) {
        final locationId = state.uri.queryParameters['location'] ?? 'athens';
        return MarketScreen(locationId: locationId);
      },
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
    GoRoute(
      path: '/puzzle/:puzzleId',
      name: 'puzzle',
      builder: (context, state) {
        final puzzleId = state.pathParameters['puzzleId'] ?? '';
        return PuzzleScreen(puzzleId: puzzleId);
      },
    ),
    GoRoute(
      path: '/quest-journal',
      name: 'quest-journal',
      builder: (context, state) => const QuestJournalScreen(),
    ),
    GoRoute(
      path: '/world-map',
      name: 'world-map',
      builder: (context, state) => const WorldMapScreen(),
    ),
    GoRoute(
      path: '/shop/:shopId',
      name: 'shop',
      builder: (context, state) {
        final shopId = state.pathParameters['shopId'] ?? 'athens_general';
        return ShopScreen(shopId: shopId);
      },
    ),
    GoRoute(
      path: '/inventory',
      name: 'inventory',
      builder: (context, state) => const InventoryScreen(),
    ),
    GoRoute(
      path: '/reputation',
      name: 'reputation',
      builder: (context, state) => const ReputationScreen(),
    ),
  ],
);
