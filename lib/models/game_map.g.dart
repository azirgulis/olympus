// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameLocationImpl _$$GameLocationImplFromJson(Map<String, dynamic> json) =>
    _$GameLocationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      region: json['region'] as String,
      specialties: (json['specialties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableServices: (json['availableServices'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      isVisited: json['isVisited'] as bool? ?? false,
      reputation: (json['reputation'] as num?)?.toInt() ?? 0,
      connectedLocations: (json['connectedLocations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      backgroundImage: json['backgroundImage'] as String?,
      iconPath: json['iconPath'] as String?,
    );

Map<String, dynamic> _$$GameLocationImplToJson(_$GameLocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$LocationTypeEnumMap[instance.type]!,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'region': instance.region,
      'specialties': instance.specialties,
      'availableServices': instance.availableServices,
      'isUnlocked': instance.isUnlocked,
      'isVisited': instance.isVisited,
      'reputation': instance.reputation,
      'connectedLocations': instance.connectedLocations,
      'backgroundImage': instance.backgroundImage,
      'iconPath': instance.iconPath,
    };

const _$LocationTypeEnumMap = {
  LocationType.cityState: 'cityState',
  LocationType.village: 'village',
  LocationType.port: 'port',
  LocationType.sanctuary: 'sanctuary',
  LocationType.battlefield: 'battlefield',
  LocationType.wilderness: 'wilderness',
  LocationType.ruin: 'ruin',
};

_$TravelRouteImpl _$$TravelRouteImplFromJson(Map<String, dynamic> json) =>
    _$TravelRouteImpl(
      fromLocationId: json['fromLocationId'] as String,
      toLocationId: json['toLocationId'] as String,
      distance: (json['distance'] as num).toInt(),
      baseTravelTime: (json['baseTravelTime'] as num).toInt(),
      cost: (json['cost'] as num).toInt(),
      difficulty: $enumDecode(_$RouteDifficultyEnumMap, json['difficulty']),
      possibleEncounters: (json['possibleEncounters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      requiredItems: (json['requiredItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minimumLevel: (json['minimumLevel'] as num?)?.toInt() ?? 0,
      requiresShip: json['requiresShip'] as bool? ?? false,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TravelRouteImplToJson(_$TravelRouteImpl instance) =>
    <String, dynamic>{
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'distance': instance.distance,
      'baseTravelTime': instance.baseTravelTime,
      'cost': instance.cost,
      'difficulty': _$RouteDifficultyEnumMap[instance.difficulty]!,
      'possibleEncounters': instance.possibleEncounters,
      'requiredItems': instance.requiredItems,
      'minimumLevel': instance.minimumLevel,
      'requiresShip': instance.requiresShip,
      'description': instance.description,
    };

const _$RouteDifficultyEnumMap = {
  RouteDifficulty.easy: 'easy',
  RouteDifficulty.moderate: 'moderate',
  RouteDifficulty.hard: 'hard',
  RouteDifficulty.dangerous: 'dangerous',
  RouteDifficulty.legendary: 'legendary',
};

_$TravelEncounterImpl _$$TravelEncounterImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelEncounterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$EncounterTypeEnumMap, json['type']),
      options: (json['options'] as List<dynamic>)
          .map((e) => EncounterOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      probability: (json['probability'] as num?)?.toDouble() ?? 0.0,
      requiredConditions: (json['requiredConditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      outcomes: (json['outcomes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TravelEncounterImplToJson(
        _$TravelEncounterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$EncounterTypeEnumMap[instance.type]!,
      'options': instance.options,
      'probability': instance.probability,
      'requiredConditions': instance.requiredConditions,
      'outcomes': instance.outcomes,
    };

const _$EncounterTypeEnumMap = {
  EncounterType.merchant: 'merchant',
  EncounterType.bandit: 'bandit',
  EncounterType.philosopher: 'philosopher',
  EncounterType.traveler: 'traveler',
  EncounterType.soldier: 'soldier',
  EncounterType.priest: 'priest',
  EncounterType.scholar: 'scholar',
  EncounterType.mystic: 'mystic',
  EncounterType.event: 'event',
  EncounterType.discovery: 'discovery',
};

_$EncounterOptionImpl _$$EncounterOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterOptionImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      description: json['description'] as String,
      outcomes: (json['outcomes'] as List<dynamic>?)
              ?.map((e) => EncounterOutcome.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cost: (json['cost'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$EncounterOptionImplToJson(
        _$EncounterOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'description': instance.description,
      'outcomes': instance.outcomes,
      'requirements': instance.requirements,
      'cost': instance.cost,
    };

_$EncounterOutcomeImpl _$$EncounterOutcomeImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterOutcomeImpl(
      type: $enumDecode(_$OutcomeTypeEnumMap, json['type']),
      description: json['description'] as String,
      value: (json['value'] as num?)?.toInt() ?? 0,
      itemId: json['itemId'] as String? ?? '',
      probability: (json['probability'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$EncounterOutcomeImplToJson(
        _$EncounterOutcomeImpl instance) =>
    <String, dynamic>{
      'type': _$OutcomeTypeEnumMap[instance.type]!,
      'description': instance.description,
      'value': instance.value,
      'itemId': instance.itemId,
      'probability': instance.probability,
    };

const _$OutcomeTypeEnumMap = {
  OutcomeType.gainDrachmae: 'gainDrachmae',
  OutcomeType.loseDrachmae: 'loseDrachmae',
  OutcomeType.gainExperience: 'gainExperience',
  OutcomeType.gainItem: 'gainItem',
  OutcomeType.loseItem: 'loseItem',
  OutcomeType.gainReputation: 'gainReputation',
  OutcomeType.loseReputation: 'loseReputation',
  OutcomeType.gainHealth: 'gainHealth',
  OutcomeType.loseHealth: 'loseHealth',
  OutcomeType.gainKnowledge: 'gainKnowledge',
  OutcomeType.unlockLocation: 'unlockLocation',
  OutcomeType.questTrigger: 'questTrigger',
};

_$PlayerJourneyImpl _$$PlayerJourneyImplFromJson(Map<String, dynamic> json) =>
    _$PlayerJourneyImpl(
      fromLocationId: json['fromLocationId'] as String,
      toLocationId: json['toLocationId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      totalTravelTime: (json['totalTravelTime'] as num).toInt(),
      status: $enumDecode(_$JourneyStatusEnumMap, json['status']),
      progressPercent: (json['progressPercent'] as num?)?.toInt() ?? 0,
      encountersCompleted: (json['encountersCompleted'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      currentEncounter: json['currentEncounter'] == null
          ? null
          : TravelEncounter.fromJson(
              json['currentEncounter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayerJourneyImplToJson(_$PlayerJourneyImpl instance) =>
    <String, dynamic>{
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'startTime': instance.startTime.toIso8601String(),
      'totalTravelTime': instance.totalTravelTime,
      'status': _$JourneyStatusEnumMap[instance.status]!,
      'progressPercent': instance.progressPercent,
      'encountersCompleted': instance.encountersCompleted,
      'currentEncounter': instance.currentEncounter,
    };

const _$JourneyStatusEnumMap = {
  JourneyStatus.planning: 'planning',
  JourneyStatus.traveling: 'traveling',
  JourneyStatus.encountering: 'encountering',
  JourneyStatus.completed: 'completed',
  JourneyStatus.interrupted: 'interrupted',
};
