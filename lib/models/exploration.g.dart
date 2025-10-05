// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exploration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerPositionImpl _$$PlayerPositionImplFromJson(Map<String, dynamic> json) =>
    _$PlayerPositionImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      facing: $enumDecodeNullable(_$DirectionEnumMap, json['facing']) ??
          Direction.down,
      isMoving: json['isMoving'] as bool? ?? false,
      speed: $enumDecodeNullable(_$MovementSpeedEnumMap, json['speed']) ??
          MovementSpeed.normal,
    );

Map<String, dynamic> _$$PlayerPositionImplToJson(
        _$PlayerPositionImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'facing': _$DirectionEnumMap[instance.facing]!,
      'isMoving': instance.isMoving,
      'speed': _$MovementSpeedEnumMap[instance.speed]!,
    };

const _$DirectionEnumMap = {
  Direction.up: 'up',
  Direction.down: 'down',
  Direction.left: 'left',
  Direction.right: 'right',
};

const _$MovementSpeedEnumMap = {
  MovementSpeed.slow: 'slow',
  MovementSpeed.normal: 'normal',
  MovementSpeed.fast: 'fast',
};

_$CityMapImpl _$$CityMapImplFromJson(Map<String, dynamic> json) =>
    _$CityMapImpl(
      cityId: json['cityId'] as String,
      name: json['name'] as String,
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      backgroundImagePath: json['backgroundImagePath'] as String,
      buildings: (json['buildings'] as List<dynamic>?)
              ?.map((e) => Building.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      npcs: (json['npcs'] as List<dynamic>?)
              ?.map((e) => NpcPosition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      collisionAreas: (json['collisionAreas'] as List<dynamic>?)
              ?.map((e) => CollisionArea.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      interactionZones: (json['interactionZones'] as List<dynamic>?)
              ?.map((e) => InteractionZone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      transitions: (json['transitions'] as List<dynamic>?)
              ?.map((e) => MapTransition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      spawnPoint: json['spawnPoint'] == null
          ? null
          : PlayerPosition.fromJson(json['spawnPoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityMapImplToJson(_$CityMapImpl instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'name': instance.name,
      'width': instance.width,
      'height': instance.height,
      'backgroundImagePath': instance.backgroundImagePath,
      'buildings': instance.buildings,
      'npcs': instance.npcs,
      'collisionAreas': instance.collisionAreas,
      'interactionZones': instance.interactionZones,
      'transitions': instance.transitions,
      'spawnPoint': instance.spawnPoint,
    };

_$BuildingImpl _$$BuildingImplFromJson(Map<String, dynamic> json) =>
    _$BuildingImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$BuildingTypeEnumMap, json['type']),
      bounds: MapRect.fromJson(json['bounds'] as Map<String, dynamic>),
      entranceRoute: json['entranceRoute'] as String,
      requiredItems: (json['requiredItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minReputation: (json['minReputation'] as num?)?.toInt() ?? 0,
      iconPath: json['iconPath'] as String?,
    );

Map<String, dynamic> _$$BuildingImplToJson(_$BuildingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$BuildingTypeEnumMap[instance.type]!,
      'bounds': instance.bounds,
      'entranceRoute': instance.entranceRoute,
      'requiredItems': instance.requiredItems,
      'minReputation': instance.minReputation,
      'iconPath': instance.iconPath,
    };

const _$BuildingTypeEnumMap = {
  BuildingType.market: 'market',
  BuildingType.harbor: 'harbor',
  BuildingType.academy: 'academy',
  BuildingType.temple: 'temple',
  BuildingType.home: 'home',
  BuildingType.shop: 'shop',
  BuildingType.tavern: 'tavern',
  BuildingType.barracks: 'barracks',
};

_$NpcPositionImpl _$$NpcPositionImplFromJson(Map<String, dynamic> json) =>
    _$NpcPositionImpl(
      npcId: json['npcId'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      facing: $enumDecodeNullable(_$DirectionEnumMap, json['facing']) ??
          Direction.down,
      isInteractable: json['isInteractable'] as bool? ?? true,
      hasQuest: json['hasQuest'] as bool? ?? false,
      spriteSheet: json['spriteSheet'] as String?,
    );

Map<String, dynamic> _$$NpcPositionImplToJson(_$NpcPositionImpl instance) =>
    <String, dynamic>{
      'npcId': instance.npcId,
      'x': instance.x,
      'y': instance.y,
      'facing': _$DirectionEnumMap[instance.facing]!,
      'isInteractable': instance.isInteractable,
      'hasQuest': instance.hasQuest,
      'spriteSheet': instance.spriteSheet,
    };

_$CollisionAreaImpl _$$CollisionAreaImplFromJson(Map<String, dynamic> json) =>
    _$CollisionAreaImpl(
      bounds: MapRect.fromJson(json['bounds'] as Map<String, dynamic>),
      type: $enumDecode(_$CollisionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$CollisionAreaImplToJson(_$CollisionAreaImpl instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'type': _$CollisionTypeEnumMap[instance.type]!,
    };

const _$CollisionTypeEnumMap = {
  CollisionType.solid: 'solid',
  CollisionType.water: 'water',
  CollisionType.elevated: 'elevated',
};

_$InteractionZoneImpl _$$InteractionZoneImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionZoneImpl(
      id: json['id'] as String,
      bounds: MapRect.fromJson(json['bounds'] as Map<String, dynamic>),
      type: $enumDecode(_$InteractionTypeEnumMap, json['type']),
      targetId: json['targetId'] as String?,
      requiresPlayerAction: json['requiresPlayerAction'] as bool? ?? false,
    );

Map<String, dynamic> _$$InteractionZoneImplToJson(
        _$InteractionZoneImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bounds': instance.bounds,
      'type': _$InteractionTypeEnumMap[instance.type]!,
      'targetId': instance.targetId,
      'requiresPlayerAction': instance.requiresPlayerAction,
    };

const _$InteractionTypeEnumMap = {
  InteractionType.dialogue: 'dialogue',
  InteractionType.questTrigger: 'quest_trigger',
  InteractionType.itemPickup: 'item_pickup',
  InteractionType.puzzle: 'puzzle',
  InteractionType.combat: 'combat',
  InteractionType.discovery: 'discovery',
};

_$MapTransitionImpl _$$MapTransitionImplFromJson(Map<String, dynamic> json) =>
    _$MapTransitionImpl(
      id: json['id'] as String,
      triggerBounds:
          MapRect.fromJson(json['triggerBounds'] as Map<String, dynamic>),
      targetMapId: json['targetMapId'] as String,
      targetPosition: json['targetPosition'] == null
          ? null
          : PlayerPosition.fromJson(
              json['targetPosition'] as Map<String, dynamic>),
      requiresConfirmation: json['requiresConfirmation'] as bool? ?? false,
    );

Map<String, dynamic> _$$MapTransitionImplToJson(_$MapTransitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'triggerBounds': instance.triggerBounds,
      'targetMapId': instance.targetMapId,
      'targetPosition': instance.targetPosition,
      'requiresConfirmation': instance.requiresConfirmation,
    };

_$MapRectImpl _$$MapRectImplFromJson(Map<String, dynamic> json) =>
    _$MapRectImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$$MapRectImplToJson(_$MapRectImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
