// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_encounter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelEncounterImpl _$$TravelEncounterImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelEncounterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$EncounterTypeEnumMap, json['type']),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => EncounterChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      economicLesson: json['economicLesson'] as String?,
    );

Map<String, dynamic> _$$TravelEncounterImplToJson(
        _$TravelEncounterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$EncounterTypeEnumMap[instance.type]!,
      'choices': instance.choices,
      'economicLesson': instance.economicLesson,
    };

const _$EncounterTypeEnumMap = {
  EncounterType.merchant: 'merchant',
  EncounterType.bandit: 'bandit',
  EncounterType.traveler: 'traveler',
  EncounterType.oracle: 'oracle',
  EncounterType.event: 'event',
};

_$EncounterChoiceImpl _$$EncounterChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterChoiceImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      outcome:
          EncounterOutcome.fromJson(json['outcome'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EncounterChoiceImplToJson(
        _$EncounterChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'outcome': instance.outcome,
    };

_$EncounterOutcomeImpl _$$EncounterOutcomeImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterOutcomeImpl(
      resultText: json['resultText'] as String,
      drachmaeChange: (json['drachmaeChange'] as num?)?.toInt(),
      healthChange: (json['healthChange'] as num?)?.toInt(),
      energyChange: (json['energyChange'] as num?)?.toInt(),
      reputationChanges:
          (json['reputationChanges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      itemGained: json['itemGained'] as String?,
      itemLost: json['itemLost'] as String?,
    );

Map<String, dynamic> _$$EncounterOutcomeImplToJson(
        _$EncounterOutcomeImpl instance) =>
    <String, dynamic>{
      'resultText': instance.resultText,
      'drachmaeChange': instance.drachmaeChange,
      'healthChange': instance.healthChange,
      'energyChange': instance.energyChange,
      'reputationChanges': instance.reputationChanges,
      'itemGained': instance.itemGained,
      'itemLost': instance.itemLost,
    };
