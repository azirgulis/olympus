import 'package:freezed_annotation/freezed_annotation.dart';

part 'world_map.freezed.dart';
part 'world_map.g.dart';

/// City location on the world map
@freezed
class CityLocation with _$CityLocation {
  const factory CityLocation({
    required String cityId,
    required String name,
    required String description,
    required double x, // Position on world map (0-1000)
    required double y, // Position on world map (0-1000)
    required String iconPath,
    @Default(false) bool isUnlocked,
    @Default(false) bool isCurrentLocation,
    @Default([]) List<String> connectedCities,
    int? travelCostDrachmae,
    int? travelTimeMinutes,
    String? specialFeature,
  }) = _CityLocation;

  factory CityLocation.fromJson(Map<String, dynamic> json) => _$CityLocationFromJson(json);
}

/// Travel route between cities
@freezed
class TravelRoute with _$TravelRoute {
  const factory TravelRoute({
    required String fromCityId,
    required String toCityId,
    required int cost, // in drachmae
    required int duration, // in game minutes
    required TravelMethod method,
    @Default([]) List<String> possibleEncounters,
    String? description,
  }) = _TravelRoute;

  factory TravelRoute.fromJson(Map<String, dynamic> json) => _$TravelRouteFromJson(json);
}

/// Method of travel
enum TravelMethod {
  @JsonValue('foot')
  foot,
  @JsonValue('horse')
  horse,
  @JsonValue('ship')
  ship,
  @JsonValue('merchant_caravan')
  merchantCaravan,
}

/// Random encounter during travel
@freezed
class TravelEncounter with _$TravelEncounter {
  const factory TravelEncounter({
    required String id,
    required String title,
    required String description,
    required EncounterType type,
    required List<EncounterChoice> choices,
    String? imageUrl,
  }) = _TravelEncounter;

  factory TravelEncounter.fromJson(Map<String, dynamic> json) => _$TravelEncounterFromJson(json);
}

/// Type of encounter
enum EncounterType {
  @JsonValue('friendly')
  friendly,
  @JsonValue('trade')
  trade,
  @JsonValue('combat_puzzle')
  combatPuzzle,
  @JsonValue('quest_trigger')
  questTrigger,
  @JsonValue('random_event')
  randomEvent,
}

/// Choice in an encounter
@freezed
class EncounterChoice with _$EncounterChoice {
  const factory EncounterChoice({
    required String id,
    required String text,
    required EncounterOutcome outcome,
    List<String>? requiredItems,
    int? requiredReputation,
    int? requiredDrachmae,
  }) = _EncounterChoice;

  factory EncounterChoice.fromJson(Map<String, dynamic> json) => _$EncounterChoiceFromJson(json);
}

/// Outcome of an encounter choice
@freezed
class EncounterOutcome with _$EncounterOutcome {
  const factory EncounterOutcome({
    required String resultText,
    int? drachmaeChange,
    int? healthChange,
    int? reputationChange,
    int? experienceChange,
    List<String>? itemsGained,
    List<String>? itemsLost,
    String? questTriggered,
  }) = _EncounterOutcome;

  factory EncounterOutcome.fromJson(Map<String, dynamic> json) => _$EncounterOutcomeFromJson(json);
}
