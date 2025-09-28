// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'npc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NPCImpl _$$NPCImplFromJson(Map<String, dynamic> json) => _$NPCImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$NPCTypeEnumMap, json['type']),
      locationId: json['locationId'] as String,
      availableDialogues: (json['availableDialogues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      completedDialogues: (json['completedDialogues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableQuests: (json['availableQuests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      relationshipLevel: (json['relationshipLevel'] as num?)?.toInt() ?? 0,
      isAvailable: json['isAvailable'] as bool? ?? true,
    );

Map<String, dynamic> _$$NPCImplToJson(_$NPCImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'type': _$NPCTypeEnumMap[instance.type]!,
      'locationId': instance.locationId,
      'availableDialogues': instance.availableDialogues,
      'completedDialogues': instance.completedDialogues,
      'availableQuests': instance.availableQuests,
      'relationshipLevel': instance.relationshipLevel,
      'isAvailable': instance.isAvailable,
    };

const _$NPCTypeEnumMap = {
  NPCType.philosopher: 'philosopher',
  NPCType.merchant: 'merchant',
  NPCType.trader: 'trader',
  NPCType.teacher: 'teacher',
  NPCType.official: 'official',
  NPCType.citizen: 'citizen',
};

_$NPCDialogueImpl _$$NPCDialogueImplFromJson(Map<String, dynamic> json) =>
    _$NPCDialogueImpl(
      id: json['id'] as String,
      npcId: json['npcId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      nodes: (json['nodes'] as List<dynamic>)
          .map((e) => DialogueNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      prerequisites: (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      rewards: (json['rewards'] as List<dynamic>?)
              ?.map((e) => DialogueReward.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isCompleted: json['isCompleted'] as bool? ?? false,
      educationalTopic:
          $enumDecode(_$EconomicConceptEnumMap, json['educationalTopic']),
    );

Map<String, dynamic> _$$NPCDialogueImplToJson(_$NPCDialogueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'npcId': instance.npcId,
      'title': instance.title,
      'description': instance.description,
      'nodes': instance.nodes,
      'prerequisites': instance.prerequisites,
      'rewards': instance.rewards,
      'isCompleted': instance.isCompleted,
      'educationalTopic': _$EconomicConceptEnumMap[instance.educationalTopic]!,
    };

const _$EconomicConceptEnumMap = {
  EconomicConcept.supplyAndDemand: 'supplyAndDemand',
  EconomicConcept.trading: 'trading',
  EconomicConcept.currency: 'currency',
  EconomicConcept.markets: 'markets',
  EconomicConcept.specialization: 'specialization',
  EconomicConcept.opportunity_cost: 'opportunity_cost',
  EconomicConcept.resources: 'resources',
  EconomicConcept.inflation: 'inflation',
  EconomicConcept.banking: 'banking',
  EconomicConcept.international_trade: 'international_trade',
};

_$DialogueNodeImpl _$$DialogueNodeImplFromJson(Map<String, dynamic> json) =>
    _$DialogueNodeImpl(
      id: json['id'] as String,
      speaker: json['speaker'] as String,
      text: json['text'] as String,
      choices: (json['choices'] as List<dynamic>?)
              ?.map((e) => DialogueChoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextNodeId: json['nextNodeId'] as String?,
      isEndNode: json['isEndNode'] as bool? ?? false,
    );

Map<String, dynamic> _$$DialogueNodeImplToJson(_$DialogueNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'speaker': instance.speaker,
      'text': instance.text,
      'choices': instance.choices,
      'nextNodeId': instance.nextNodeId,
      'isEndNode': instance.isEndNode,
    };

_$DialogueChoiceImpl _$$DialogueChoiceImplFromJson(Map<String, dynamic> json) =>
    _$DialogueChoiceImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      nextNodeId: json['nextNodeId'] as String,
      effects: (json['effects'] as List<dynamic>?)
              ?.map((e) => DialogueEffect.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DialogueChoiceImplToJson(
        _$DialogueChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'nextNodeId': instance.nextNodeId,
      'effects': instance.effects,
      'requirements': instance.requirements,
    };

_$DialogueEffectImpl _$$DialogueEffectImplFromJson(Map<String, dynamic> json) =>
    _$DialogueEffectImpl(
      type: $enumDecode(_$EffectTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
      itemId: json['itemId'] as String?,
      targetId: json['targetId'] as String?,
    );

Map<String, dynamic> _$$DialogueEffectImplToJson(
        _$DialogueEffectImpl instance) =>
    <String, dynamic>{
      'type': _$EffectTypeEnumMap[instance.type]!,
      'value': instance.value,
      'itemId': instance.itemId,
      'targetId': instance.targetId,
    };

const _$EffectTypeEnumMap = {
  EffectType.gainDrachmae: 'gainDrachmae',
  EffectType.loseDrachmae: 'loseDrachmae',
  EffectType.gainExperience: 'gainExperience',
  EffectType.gainItem: 'gainItem',
  EffectType.loseItem: 'loseItem',
  EffectType.changeReputation: 'changeReputation',
  EffectType.unlockDialogue: 'unlockDialogue',
  EffectType.unlockQuest: 'unlockQuest',
};

_$DialogueRewardImpl _$$DialogueRewardImplFromJson(Map<String, dynamic> json) =>
    _$DialogueRewardImpl(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
      itemId: json['itemId'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DialogueRewardImplToJson(
        _$DialogueRewardImpl instance) =>
    <String, dynamic>{
      'type': _$RewardTypeEnumMap[instance.type]!,
      'value': instance.value,
      'itemId': instance.itemId,
      'description': instance.description,
    };

const _$RewardTypeEnumMap = {
  RewardType.drachmae: 'drachmae',
  RewardType.experience: 'experience',
  RewardType.item: 'item',
  RewardType.knowledge: 'knowledge',
  RewardType.reputation: 'reputation',
};
