// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      category: $enumDecode(_$AchievementCategoryEnumMap, json['category']),
      rewardDrachmae: (json['rewardDrachmae'] as num).toInt(),
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      unlockedAt: json['unlockedAt'] == null
          ? null
          : DateTime.parse(json['unlockedAt'] as String),
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'category': _$AchievementCategoryEnumMap[instance.category]!,
      'rewardDrachmae': instance.rewardDrachmae,
      'isUnlocked': instance.isUnlocked,
      'unlockedAt': instance.unlockedAt?.toIso8601String(),
    };

const _$AchievementCategoryEnumMap = {
  AchievementCategory.wealth: 'wealth',
  AchievementCategory.trading: 'trading',
  AchievementCategory.exploration: 'exploration',
  AchievementCategory.reputation: 'reputation',
  AchievementCategory.quests: 'quests',
  AchievementCategory.learning: 'learning',
};
