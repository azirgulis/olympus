// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImpl _$$QuestImplFromJson(Map<String, dynamic> json) => _$QuestImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$QuestTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$QuestDifficultyEnumMap, json['difficulty']),
      objectives: (json['objectives'] as List<dynamic>)
          .map((e) => QuestObjective.fromJson(e as Map<String, dynamic>))
          .toList(),
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => QuestReward.fromJson(e as Map<String, dynamic>))
          .toList(),
      prerequisites: (json['prerequisites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      economicConcept: json['economicConcept'] as String,
      learningObjective: json['learningObjective'] as String,
      status: $enumDecodeNullable(_$QuestStatusEnumMap, json['status']) ??
          QuestStatus.available,
      completedObjectives: (json['completedObjectives'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isCompleted: json['isCompleted'] as bool? ?? false,
      isStarted: json['isStarted'] as bool? ?? false,
      giver: json['giver'] as String?,
      location: json['location'] as String?,
      timeLimit: (json['timeLimit'] as num?)?.toInt(),
      hint: json['hint'] as String?,
    );

Map<String, dynamic> _$$QuestImplToJson(_$QuestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$QuestTypeEnumMap[instance.type]!,
      'difficulty': _$QuestDifficultyEnumMap[instance.difficulty]!,
      'objectives': instance.objectives,
      'rewards': instance.rewards,
      'prerequisites': instance.prerequisites,
      'economicConcept': instance.economicConcept,
      'learningObjective': instance.learningObjective,
      'status': _$QuestStatusEnumMap[instance.status]!,
      'completedObjectives': instance.completedObjectives,
      'isCompleted': instance.isCompleted,
      'isStarted': instance.isStarted,
      'giver': instance.giver,
      'location': instance.location,
      'timeLimit': instance.timeLimit,
      'hint': instance.hint,
    };

const _$QuestTypeEnumMap = {
  QuestType.main: 'main',
  QuestType.side: 'side',
  QuestType.tutorial: 'tutorial',
  QuestType.daily: 'daily',
  QuestType.economic: 'economic',
};

const _$QuestDifficultyEnumMap = {
  QuestDifficulty.easy: 'easy',
  QuestDifficulty.medium: 'medium',
  QuestDifficulty.hard: 'hard',
  QuestDifficulty.expert: 'expert',
  QuestDifficulty.veryHard: 'veryHard',
};

const _$QuestStatusEnumMap = {
  QuestStatus.available: 'available',
  QuestStatus.started: 'started',
  QuestStatus.completed: 'completed',
  QuestStatus.failed: 'failed',
  QuestStatus.locked: 'locked',
};

_$QuestObjectiveImpl _$$QuestObjectiveImplFromJson(Map<String, dynamic> json) =>
    _$QuestObjectiveImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ObjectiveTypeEnumMap, json['type']),
      parameters: json['parameters'] as Map<String, dynamic>,
      isCompleted: json['isCompleted'] as bool? ?? false,
      currentProgress: (json['currentProgress'] as num?)?.toInt(),
      targetProgress: (json['targetProgress'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuestObjectiveImplToJson(
        _$QuestObjectiveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': _$ObjectiveTypeEnumMap[instance.type]!,
      'parameters': instance.parameters,
      'isCompleted': instance.isCompleted,
      'currentProgress': instance.currentProgress,
      'targetProgress': instance.targetProgress,
    };

const _$ObjectiveTypeEnumMap = {
  ObjectiveType.trade: 'trade',
  ObjectiveType.collect: 'collect',
  ObjectiveType.visit: 'visit',
  ObjectiveType.talk: 'talk',
  ObjectiveType.learn: 'learn',
  ObjectiveType.earn: 'earn',
  ObjectiveType.spend: 'spend',
  ObjectiveType.craft: 'craft',
  ObjectiveType.travel: 'travel',
  ObjectiveType.custom: 'custom',
};

_$QuestRewardImpl _$$QuestRewardImplFromJson(Map<String, dynamic> json) =>
    _$QuestRewardImpl(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toInt(),
      itemId: json['itemId'] as String?,
      skillType: json['skillType'] as String?,
    );

Map<String, dynamic> _$$QuestRewardImplToJson(_$QuestRewardImpl instance) =>
    <String, dynamic>{
      'type': _$RewardTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'itemId': instance.itemId,
      'skillType': instance.skillType,
    };

const _$RewardTypeEnumMap = {
  RewardType.drachmae: 'drachmae',
  RewardType.experience: 'experience',
  RewardType.item: 'item',
  RewardType.skill: 'skill',
  RewardType.reputation: 'reputation',
  RewardType.health: 'health',
  RewardType.energy: 'energy',
};
