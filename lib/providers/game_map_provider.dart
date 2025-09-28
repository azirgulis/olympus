import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import '../models/game_map.dart';
import '../data/map/locations.dart';
import '../data/map/travel_routes.dart';
import '../data/map/encounters.dart';
import '../models/inventory.dart';
import 'player_provider.dart';
import 'inventory_provider.dart';

part 'game_map_provider.freezed.dart';
part 'game_map_provider.g.dart';

class GameMapNotifier extends StateNotifier<GameMapState> {
  Timer? _journeyTimer;

  GameMapNotifier() : super(const GameMapState()) {
    _initializeMap();
  }

  @override
  void dispose() {
    _journeyTimer?.cancel();
    super.dispose();
  }

  void _initializeMap() {
    final locations = LocationsData.getAllLocations();
    state = state.copyWith(
      locations: locations,
      currentLocationId: 'athens', // Start in Athens
      unlockedLocationIds: ['athens', 'marathon', 'thebes', 'corinth', 'delphi', 'sparta'], // Multiple destinations unlocked
    );
  }

  // Travel to a new location
  void startJourney(String destinationId, WidgetRef ref) {
    final route = TravelRoutesData.getRoute(state.currentLocationId, destinationId);
    if (route == null) return;

    final player = ref.read(playerProvider);
    final inventory = ref.read(inventoryProvider);

    // Check if player meets requirements
    if (!_canTravel(route, player, inventory)) return;

    // Deduct travel cost
    ref.read(playerProvider.notifier).spendDrachmae(route.cost);

    // Create journey
    final journey = PlayerJourney(
      fromLocationId: state.currentLocationId,
      toLocationId: destinationId,
      startTime: DateTime.now(),
      totalTravelTime: TravelRoutesData.calculateTravelTime(route, playerLevel: player.level),
      status: JourneyStatus.traveling,
      progressPercent: 0,
    );

    state = state.copyWith(
      currentJourney: journey,
      isJourneyInProgress: true,
    );

    _startJourneyTimer();
  }

  bool _canTravel(TravelRoute route, player, inventory) {
    // Check level requirement
    if (route.minimumLevel > player.level) return false;

    // Check drachmae
    if (route.cost > player.drachmae) return false;

    // Check required items
    for (final requiredItem in route.requiredItems) {
      if (!inventory.items.any((item) => item.id == requiredItem)) {
        return false;
      }
    }

    // Check ship requirement
    if (route.requiresShip) {
      // TODO: Check if player has ships (integrate with harbor system)
    }

    return true;
  }

  void _startJourneyTimer() {
    _journeyTimer?.cancel();
    _journeyTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _updateJourneyProgress();
    });
  }

  void _updateJourneyProgress() {
    if (!state.isJourneyInProgress || state.currentJourney == null) {
      _journeyTimer?.cancel();
      return;
    }

    final journey = state.currentJourney!;
    final elapsed = DateTime.now().difference(journey.startTime).inMinutes;
    final progress = ((elapsed / journey.totalTravelTime) * 100).clamp(0, 100).round();

    // Check for encounters at specific progress points
    if (progress >= 25 && progress < 50 && journey.encountersCompleted.isEmpty) {
      _triggerRandomEncounter();
    } else if (progress >= 75 && journey.encountersCompleted.length < 2) {
      _triggerRandomEncounter();
    }

    // Journey completed
    if (progress >= 100) {
      _completeJourney();
      return;
    }

    state = state.copyWith(
      currentJourney: journey.copyWith(progressPercent: progress),
    );
  }

  void _triggerRandomEncounter() {
    if (state.currentJourney == null) return;

    final route = TravelRoutesData.getRoute(
      state.currentJourney!.fromLocationId,
      state.currentJourney!.toLocationId,
    );
    if (route == null) return;

    final encounter = EncountersData.getRandomEncounter(
      route.possibleEncounters,
      conditions: route.requiresShip ? ['at_sea'] : [],
    );

    if (encounter != null) {
      state = state.copyWith(
        currentJourney: state.currentJourney!.copyWith(
          status: JourneyStatus.encountering,
          currentEncounter: encounter,
        ),
      );
    }
  }

  void resolveEncounter(String optionId, WidgetRef ref) {
    if (state.currentJourney?.currentEncounter == null) return;

    final encounter = state.currentJourney!.currentEncounter!;
    final option = encounter.options.firstWhere((opt) => opt.id == optionId);

    // Apply outcomes
    for (final outcome in option.outcomes) {
      final random = DateTime.now().millisecondsSinceEpoch % 100;
      if (random < outcome.probability) {
        _applyOutcome(outcome, ref);
      }
    }

    // Mark encounter as completed
    final completedEncounters = [...state.currentJourney!.encountersCompleted, encounter.id];

    state = state.copyWith(
      currentJourney: state.currentJourney!.copyWith(
        status: JourneyStatus.traveling,
        currentEncounter: null,
        encountersCompleted: completedEncounters,
      ),
    );
  }

  void _applyOutcome(EncounterOutcome outcome, WidgetRef ref) {
    switch (outcome.type) {
      case OutcomeType.gainDrachmae:
        ref.read(playerProvider.notifier).addDrachmae(outcome.value);
        break;
      case OutcomeType.loseDrachmae:
        ref.read(playerProvider.notifier).spendDrachmae(outcome.value);
        break;
      case OutcomeType.gainExperience:
        ref.read(playerProvider.notifier).addExperience(outcome.value);
        break;
      case OutcomeType.gainHealth:
        final player = ref.read(playerProvider);
        final newHealth = (player.health + outcome.value).clamp(0, 100);
        ref.read(playerProvider.notifier).updateHealth(newHealth);
        break;
      case OutcomeType.loseHealth:
        final player = ref.read(playerProvider);
        final newHealth = (player.health - outcome.value).clamp(0, 100);
        ref.read(playerProvider.notifier).updateHealth(newHealth);
        break;
      case OutcomeType.gainItem:
        if (outcome.itemId.isNotEmpty) {
          _addEncounterItem(outcome.itemId, outcome.value, ref);
        }
        break;
      case OutcomeType.loseItem:
        if (outcome.itemId.isNotEmpty) {
          ref.read(inventoryProvider.notifier).removeItem(outcome.itemId, quantity: outcome.value);
        }
        break;
      case OutcomeType.gainReputation:
        if (outcome.itemId.isNotEmpty) {
          ref.read(playerProvider.notifier).updateReputation(outcome.itemId, outcome.value);
        }
        break;
      case OutcomeType.loseReputation:
        if (outcome.itemId.isNotEmpty) {
          ref.read(playerProvider.notifier).updateReputation(outcome.itemId, -outcome.value);
        }
        break;
      case OutcomeType.gainKnowledge:
        // Knowledge points could be added to player stats in the future
        break;
      case OutcomeType.unlockLocation:
        unlockLocation(outcome.itemId);
        break;
      case OutcomeType.questTrigger:
        // Quest triggers are handled in the UI
        break;
    }
  }

  void _addEncounterItem(String itemId, int quantity, WidgetRef ref) {
    // Create items that can be gained from encounters
    final encounterItems = {
      'drachma_pouch': InventoryItem(
        id: 'drachma_pouch',
        name: 'Drachma Pouch',
        description: 'A small pouch containing coins',
        type: ItemType.treasure,
        value: 25,
        quantity: quantity,
      ),
      'healing_herb': InventoryItem(
        id: 'healing_herb',
        name: 'Healing Herb',
        description: 'Restores health when consumed',
        type: ItemType.consumable,
        value: 10,
        quantity: quantity,
      ),
      'trade_goods': InventoryItem(
        id: 'trade_goods',
        name: 'Trade Goods',
        description: 'Valuable goods for trading',
        type: ItemType.trade,
        value: 20,
        quantity: quantity,
      ),
      'ancient_scroll': InventoryItem(
        id: 'ancient_scroll',
        name: 'Ancient Scroll',
        description: 'Contains ancient knowledge',
        type: ItemType.knowledge,
        value: 50,
        quantity: quantity,
      ),
      'travel_supplies': InventoryItem(
        id: 'travel_supplies',
        name: 'Travel Supplies',
        description: 'Essential supplies for long journeys',
        type: ItemType.resource,
        value: 15,
        quantity: quantity,
      ),
    };

    final item = encounterItems[itemId];
    if (item != null) {
      ref.read(inventoryProvider.notifier).addItem(item);
    }
  }

  void _completeJourney() {
    if (state.currentJourney == null) return;

    final destinationId = state.currentJourney!.toLocationId;

    // Mark destination as visited
    final updatedLocations = state.locations.map((location) {
      if (location.id == destinationId) {
        return location.copyWith(isVisited: true);
      }
      return location;
    }).toList();

    // Check for newly unlocked locations
    final destination = LocationsData.getLocationById(destinationId);
    final newUnlocked = <String>{...state.unlockedLocationIds};

    if (destination != null) {
      // Unlock connected locations based on level/progress
      for (final connectedId in destination.connectedLocations) {
        final connected = LocationsData.getLocationById(connectedId);
        if (connected != null && !newUnlocked.contains(connectedId)) {
          // Simple unlock logic - can be enhanced
          newUnlocked.add(connectedId);
        }
      }
    }

    state = state.copyWith(
      currentLocationId: destinationId,
      locations: updatedLocations,
      unlockedLocationIds: newUnlocked.toList(),
      currentJourney: null,
      isJourneyInProgress: false,
      shouldNavigateToLocation: destinationId, // Add navigation flag
    );

    _journeyTimer?.cancel();

    // Navigate immediately to the destination location
    _navigateToLocation(destinationId);
  }

  void _navigateToLocation(String locationId) {
    // This will be called by the UI to navigate
    print('Journey complete! Should navigate to: $locationId');
  }

  void clearNavigationFlag() {
    state = state.copyWith(shouldNavigateToLocation: null);
  }

  void syncWithPlayerLocation(String playerLocationId) {
    if (state.currentLocationId != playerLocationId) {
      state = state.copyWith(currentLocationId: playerLocationId);
    }
  }

  void unlockLocation(String locationId) {
    if (!state.unlockedLocationIds.contains(locationId)) {
      state = state.copyWith(
        unlockedLocationIds: [...state.unlockedLocationIds, locationId],
      );
    }
  }

  void cancelJourney() {
    _journeyTimer?.cancel();
    state = state.copyWith(
      currentJourney: null,
      isJourneyInProgress: false,
    );
  }

  // Get available destinations from current location
  List<GameLocation> getAvailableDestinations() {
    final currentLocation = LocationsData.getLocationById(state.currentLocationId);
    if (currentLocation == null) return [];

    return currentLocation.connectedLocations
        .where((id) => state.unlockedLocationIds.contains(id))
        .map((id) => LocationsData.getLocationById(id))
        .where((location) => location != null)
        .cast<GameLocation>()
        .toList();
  }

  // Get travel route to destination
  TravelRoute? getRouteToDestination(String destinationId) {
    return TravelRoutesData.getRoute(state.currentLocationId, destinationId);
  }
}

@freezed
class GameMapState with _$GameMapState {
  const factory GameMapState({
    @Default([]) List<GameLocation> locations,
    @Default('athens') String currentLocationId,
    @Default(['athens', 'marathon', 'thebes', 'corinth', 'delphi', 'sparta']) List<String> unlockedLocationIds,
    @Default(false) bool isJourneyInProgress,
    PlayerJourney? currentJourney,
    String? shouldNavigateToLocation,
  }) = _GameMapState;

  factory GameMapState.fromJson(Map<String, dynamic> json) => _$GameMapStateFromJson(json);
}

final gameMapProvider = StateNotifierProvider<GameMapNotifier, GameMapState>((ref) {
  return GameMapNotifier();
});

// Convenience providers
final currentLocationProvider = Provider<GameLocation?>((ref) {
  final mapState = ref.watch(gameMapProvider);
  return LocationsData.getLocationById(mapState.currentLocationId);
});

final unlockedLocationsProvider = Provider<List<GameLocation>>((ref) {
  final mapState = ref.watch(gameMapProvider);
  return mapState.unlockedLocationIds
      .map((id) => LocationsData.getLocationById(id))
      .where((location) => location != null)
      .cast<GameLocation>()
      .toList();
});

final availableDestinationsProvider = Provider<List<GameLocation>>((ref) {
  final notifier = ref.watch(gameMapProvider.notifier);
  return notifier.getAvailableDestinations();
});

final isJourneyInProgressProvider = Provider<bool>((ref) {
  return ref.watch(gameMapProvider).isJourneyInProgress;
});

final currentJourneyProvider = Provider<PlayerJourney?>((ref) {
  return ref.watch(gameMapProvider).currentJourney;
});