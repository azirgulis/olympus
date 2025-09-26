import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_map.freezed.dart';
part 'game_map.g.dart';

@freezed
class GameLocation with _$GameLocation {
  const factory GameLocation({
    required String id,
    required String name,
    required String description,
    required LocationType type,
    required double latitude,
    required double longitude,
    required String region,
    @Default([]) List<String> specialties,
    @Default([]) List<String> availableServices,
    @Default(false) bool isUnlocked,
    @Default(false) bool isVisited,
    @Default(0) int reputation,
    @Default([]) List<String> connectedLocations,
    String? backgroundImage,
    String? iconPath,
  }) = _GameLocation;

  factory GameLocation.fromJson(Map<String, dynamic> json) => _$GameLocationFromJson(json);
}

@freezed
class TravelRoute with _$TravelRoute {
  const factory TravelRoute({
    required String fromLocationId,
    required String toLocationId,
    required int distance,
    required int baseTravelTime,
    required int cost,
    required RouteDifficulty difficulty,
    required List<String> possibleEncounters,
    @Default([]) List<String> requiredItems,
    @Default(0) int minimumLevel,
    @Default(false) bool requiresShip,
    String? description,
  }) = _TravelRoute;

  factory TravelRoute.fromJson(Map<String, dynamic> json) => _$TravelRouteFromJson(json);
}

@freezed
class TravelEncounter with _$TravelEncounter {
  const factory TravelEncounter({
    required String id,
    required String title,
    required String description,
    required EncounterType type,
    required List<EncounterOption> options,
    @Default(0.0) double probability,
    @Default([]) List<String> requiredConditions,
    @Default([]) List<String> outcomes,
  }) = _TravelEncounter;

  factory TravelEncounter.fromJson(Map<String, dynamic> json) => _$TravelEncounterFromJson(json);
}

@freezed
class EncounterOption with _$EncounterOption {
  const factory EncounterOption({
    required String id,
    required String text,
    required String description,
    @Default([]) List<EncounterOutcome> outcomes,
    @Default([]) List<String> requirements,
    @Default(0) int cost,
  }) = _EncounterOption;

  factory EncounterOption.fromJson(Map<String, dynamic> json) => _$EncounterOptionFromJson(json);
}

@freezed
class EncounterOutcome with _$EncounterOutcome {
  const factory EncounterOutcome({
    required OutcomeType type,
    required String description,
    @Default(0) int value,
    @Default('') String itemId,
    @Default(0) int probability,
  }) = _EncounterOutcome;

  factory EncounterOutcome.fromJson(Map<String, dynamic> json) => _$EncounterOutcomeFromJson(json);
}

@freezed
class PlayerJourney with _$PlayerJourney {
  const factory PlayerJourney({
    required String fromLocationId,
    required String toLocationId,
    required DateTime startTime,
    required int totalTravelTime,
    required JourneyStatus status,
    @Default(0) int progressPercent,
    @Default([]) List<String> encountersCompleted,
    TravelEncounter? currentEncounter,
  }) = _PlayerJourney;

  factory PlayerJourney.fromJson(Map<String, dynamic> json) => _$PlayerJourneyFromJson(json);
}

enum LocationType {
  cityState,
  village,
  port,
  sanctuary,
  battlefield,
  wilderness,
  ruin,
}

enum RouteDifficulty {
  easy,
  moderate,
  hard,
  dangerous,
  legendary,
}

enum EncounterType {
  merchant,
  bandit,
  philosopher,
  traveler,
  soldier,
  priest,
  scholar,
  mystic,
  event,
  discovery,
}

enum JourneyStatus {
  planning,
  traveling,
  encountering,
  completed,
  interrupted,
}

enum OutcomeType {
  gainDrachmae,
  loseDrachmae,
  gainExperience,
  gainItem,
  loseItem,
  gainReputation,
  loseReputation,
  gainHealth,
  loseHealth,
  gainKnowledge,
  unlockLocation,
  questTrigger,
}