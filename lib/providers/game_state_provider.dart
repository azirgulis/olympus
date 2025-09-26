import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/location.dart';

class GameStateNotifier extends StateNotifier<GameState> {
  GameStateNotifier() : super(const GameState());

  void initializeGame() {
    state = GameState(
      currentLocationId: 'athens',
      unlockedLocations: {'athens'},
      storyFlags: {},
      completedTutorials: {},
      gameStarted: true,
    );
  }

  void unlockLocation(String locationId) {
    state = state.copyWith(
      unlockedLocations: {...state.unlockedLocations, locationId},
    );
  }

  void setStoryFlag(String flag, bool value) {
    state = state.copyWith(
      storyFlags: {...state.storyFlags, flag: value},
    );
  }

  void completeTutorial(String tutorialId) {
    state = state.copyWith(
      completedTutorials: {...state.completedTutorials, tutorialId: true},
    );
  }

  void changeLocation(String locationId) {
    if (state.unlockedLocations.contains(locationId)) {
      state = state.copyWith(currentLocationId: locationId);
    }
  }

  bool isTutorialCompleted(String tutorialId) {
    return state.completedTutorials[tutorialId] ?? false;
  }

  bool hasStoryFlag(String flag) {
    return state.storyFlags[flag] ?? false;
  }
}

class GameState {
  final String currentLocationId;
  final Set<String> unlockedLocations;
  final Map<String, bool> storyFlags;
  final Map<String, bool> completedTutorials;
  final bool gameStarted;

  const GameState({
    this.currentLocationId = '',
    this.unlockedLocations = const {},
    this.storyFlags = const {},
    this.completedTutorials = const {},
    this.gameStarted = false,
  });

  GameState copyWith({
    String? currentLocationId,
    Set<String>? unlockedLocations,
    Map<String, bool>? storyFlags,
    Map<String, bool>? completedTutorials,
    bool? gameStarted,
  }) {
    return GameState(
      currentLocationId: currentLocationId ?? this.currentLocationId,
      unlockedLocations: unlockedLocations ?? this.unlockedLocations,
      storyFlags: storyFlags ?? this.storyFlags,
      completedTutorials: completedTutorials ?? this.completedTutorials,
      gameStarted: gameStarted ?? this.gameStarted,
    );
  }
}

final gameStateProvider = StateNotifierProvider<GameStateNotifier, GameState>((ref) {
  return GameStateNotifier();
});

// Static location data
final locationsProvider = Provider<Map<String, Location>>((ref) {
  return {
    'athens': const Location(
      id: 'athens',
      name: 'Athens',
      description: 'The bustling heart of ancient Greece, filled with merchants, philosophers, and opportunities.',
      type: LocationType.city,
      availableActions: ['market', 'academy', 'port', 'quests'],
      availableQuests: ['tutorial_trading', 'help_merchant'],
      npcs: ['philosopher_socrates', 'merchant_alexios', 'trader_helen'],
    ),
    'sparta': const Location(
      id: 'sparta',
      name: 'Sparta',
      description: 'The military stronghold where warriors train and resources are precious.',
      type: LocationType.city,
      availableActions: ['barracks', 'market', 'training'],
      connectedLocations: ['athens'],
    ),
    'delphi': const Location(
      id: 'delphi',
      name: 'Delphi',
      description: 'The sacred temple where the Oracle reveals economic prophecies.',
      type: LocationType.temple,
      availableActions: ['oracle', 'temple', 'market'],
      connectedLocations: ['athens'],
    ),
  };
});