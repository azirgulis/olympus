// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityLocationImpl _$$CityLocationImplFromJson(Map<String, dynamic> json) =>
    _$CityLocationImpl(
      cityId: json['cityId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      iconPath: json['iconPath'] as String,
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      isCurrentLocation: json['isCurrentLocation'] as bool? ?? false,
      connectedCities: (json['connectedCities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      travelCostDrachmae: (json['travelCostDrachmae'] as num?)?.toInt(),
      travelTimeMinutes: (json['travelTimeMinutes'] as num?)?.toInt(),
      specialFeature: json['specialFeature'] as String?,
    );

Map<String, dynamic> _$$CityLocationImplToJson(_$CityLocationImpl instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'name': instance.name,
      'description': instance.description,
      'x': instance.x,
      'y': instance.y,
      'iconPath': instance.iconPath,
      'isUnlocked': instance.isUnlocked,
      'isCurrentLocation': instance.isCurrentLocation,
      'connectedCities': instance.connectedCities,
      'travelCostDrachmae': instance.travelCostDrachmae,
      'travelTimeMinutes': instance.travelTimeMinutes,
      'specialFeature': instance.specialFeature,
    };

_$TravelRouteImpl _$$TravelRouteImplFromJson(Map<String, dynamic> json) =>
    _$TravelRouteImpl(
      fromCityId: json['fromCityId'] as String,
      toCityId: json['toCityId'] as String,
      cost: (json['cost'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      method: $enumDecode(_$TravelMethodEnumMap, json['method']),
      possibleEncounters: (json['possibleEncounters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TravelRouteImplToJson(_$TravelRouteImpl instance) =>
    <String, dynamic>{
      'fromCityId': instance.fromCityId,
      'toCityId': instance.toCityId,
      'cost': instance.cost,
      'duration': instance.duration,
      'method': _$TravelMethodEnumMap[instance.method]!,
      'possibleEncounters': instance.possibleEncounters,
      'description': instance.description,
    };

const _$TravelMethodEnumMap = {
  TravelMethod.foot: 'foot',
  TravelMethod.horse: 'horse',
  TravelMethod.ship: 'ship',
  TravelMethod.merchantCaravan: 'merchant_caravan',
};

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
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$TravelEncounterImplToJson(
        _$TravelEncounterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$EncounterTypeEnumMap[instance.type]!,
      'choices': instance.choices,
      'imageUrl': instance.imageUrl,
    };

const _$EncounterTypeEnumMap = {
  EncounterType.friendly: 'friendly',
  EncounterType.trade: 'trade',
  EncounterType.combatPuzzle: 'combat_puzzle',
  EncounterType.questTrigger: 'quest_trigger',
  EncounterType.randomEvent: 'random_event',
};

_$EncounterChoiceImpl _$$EncounterChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterChoiceImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      outcome:
          EncounterOutcome.fromJson(json['outcome'] as Map<String, dynamic>),
      requiredItems: (json['requiredItems'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      requiredReputation: (json['requiredReputation'] as num?)?.toInt(),
      requiredDrachmae: (json['requiredDrachmae'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EncounterChoiceImplToJson(
        _$EncounterChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'outcome': instance.outcome,
      'requiredItems': instance.requiredItems,
      'requiredReputation': instance.requiredReputation,
      'requiredDrachmae': instance.requiredDrachmae,
    };

_$EncounterOutcomeImpl _$$EncounterOutcomeImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterOutcomeImpl(
      resultText: json['resultText'] as String,
      drachmaeChange: (json['drachmaeChange'] as num?)?.toInt(),
      healthChange: (json['healthChange'] as num?)?.toInt(),
      reputationChange: (json['reputationChange'] as num?)?.toInt(),
      experienceChange: (json['experienceChange'] as num?)?.toInt(),
      itemsGained: (json['itemsGained'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemsLost: (json['itemsLost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      questTriggered: json['questTriggered'] as String?,
    );

Map<String, dynamic> _$$EncounterOutcomeImplToJson(
        _$EncounterOutcomeImpl instance) =>
    <String, dynamic>{
      'resultText': instance.resultText,
      'drachmaeChange': instance.drachmaeChange,
      'healthChange': instance.healthChange,
      'reputationChange': instance.reputationChange,
      'experienceChange': instance.experienceChange,
      'itemsGained': instance.itemsGained,
      'itemsLost': instance.itemsLost,
      'questTriggered': instance.questTriggered,
    };
