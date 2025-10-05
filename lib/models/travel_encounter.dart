import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_encounter.freezed.dart';
part 'travel_encounter.g.dart';

@freezed
class TravelEncounter with _$TravelEncounter {
  const factory TravelEncounter({
    required String id,
    required String title,
    required String description,
    required EncounterType type,
    required List<EncounterChoice> choices,
    String? economicLesson, // Educational tie-in
  }) = _TravelEncounter;

  factory TravelEncounter.fromJson(Map<String, dynamic> json) =>
      _$TravelEncounterFromJson(json);
}

@freezed
class EncounterChoice with _$EncounterChoice {
  const factory EncounterChoice({
    required String id,
    required String text,
    required EncounterOutcome outcome,
  }) = _EncounterChoice;

  factory EncounterChoice.fromJson(Map<String, dynamic> json) =>
      _$EncounterChoiceFromJson(json);
}

@freezed
class EncounterOutcome with _$EncounterOutcome {
  const factory EncounterOutcome({
    required String resultText,
    int? drachmaeChange, // Positive = gain, negative = loss
    int? healthChange,
    int? energyChange,
    Map<String, int>? reputationChanges, // faction -> change amount
    String? itemGained,
    String? itemLost,
  }) = _EncounterOutcome;

  factory EncounterOutcome.fromJson(Map<String, dynamic> json) =>
      _$EncounterOutcomeFromJson(json);
}

enum EncounterType {
  @JsonValue('merchant')
  merchant,
  @JsonValue('bandit')
  bandit,
  @JsonValue('traveler')
  traveler,
  @JsonValue('oracle')
  oracle,
  @JsonValue('event')
  event,
}
