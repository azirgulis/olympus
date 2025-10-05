// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      name: json['name'] as String? ?? '',
      characterClass: $enumDecodeNullable(
              _$CharacterClassEnumMap, json['characterClass']) ??
          CharacterClass.merchant,
      health: (json['health'] as num?)?.toInt() ?? 100,
      energy: (json['energy'] as num?)?.toInt() ?? 100,
      drachmae: (json['drachmae'] as num?)?.toInt() ?? 100,
      level: (json['level'] as num?)?.toInt() ?? 1,
      experience: (json['experience'] as num?)?.toInt() ?? 0,
      reputation: (json['reputation'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      skills: (json['skills'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      currentLocation: json['currentLocation'] as String? ?? 'athens',
      completedQuests: (json['completedQuests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      activeQuests: (json['activeQuests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      storyFlags: (json['storyFlags'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          const {},
      inventory: (json['inventory'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      equippedItems: (json['equippedItems'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      unlockedAchievements: (json['unlockedAchievements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characterClass': _$CharacterClassEnumMap[instance.characterClass]!,
      'health': instance.health,
      'energy': instance.energy,
      'drachmae': instance.drachmae,
      'level': instance.level,
      'experience': instance.experience,
      'reputation': instance.reputation,
      'skills': instance.skills,
      'currentLocation': instance.currentLocation,
      'completedQuests': instance.completedQuests,
      'activeQuests': instance.activeQuests,
      'storyFlags': instance.storyFlags,
      'inventory': instance.inventory,
      'equippedItems': instance.equippedItems,
      'unlockedAchievements': instance.unlockedAchievements,
    };

const _$CharacterClassEnumMap = {
  CharacterClass.merchant: 'merchant',
  CharacterClass.scholar: 'scholar',
  CharacterClass.warrior: 'warrior',
};
