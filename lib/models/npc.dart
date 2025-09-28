import 'package:freezed_annotation/freezed_annotation.dart';

part 'npc.freezed.dart';
part 'npc.g.dart';

@freezed
class NPC with _$NPC {
  const factory NPC({
    required String id,
    required String name,
    required String title,
    required String description,
    required NPCType type,
    required String locationId,
    @Default([]) List<String> availableDialogues,
    @Default([]) List<String> completedDialogues,
    @Default([]) List<String> availableQuests,
    @Default(0) int relationshipLevel,
    @Default(true) bool isAvailable,
  }) = _NPC;

  factory NPC.fromJson(Map<String, dynamic> json) => _$NPCFromJson(json);
}

@freezed
class NPCDialogue with _$NPCDialogue {
  const factory NPCDialogue({
    required String id,
    required String npcId,
    required String title,
    required String description,
    required List<DialogueNode> nodes,
    @Default([]) List<String> prerequisites,
    @Default([]) List<DialogueReward> rewards,
    @Default(false) bool isCompleted,
    required EconomicConcept educationalTopic,
  }) = _NPCDialogue;

  factory NPCDialogue.fromJson(Map<String, dynamic> json) => _$NPCDialogueFromJson(json);
}

@freezed
class DialogueNode with _$DialogueNode {
  const factory DialogueNode({
    required String id,
    required String speaker,
    required String text,
    @Default([]) List<DialogueChoice> choices,
    String? nextNodeId,
    @Default(false) bool isEndNode,
  }) = _DialogueNode;

  factory DialogueNode.fromJson(Map<String, dynamic> json) => _$DialogueNodeFromJson(json);
}

@freezed
class DialogueChoice with _$DialogueChoice {
  const factory DialogueChoice({
    required String id,
    required String text,
    required String nextNodeId,
    @Default([]) List<DialogueEffect> effects,
    @Default([]) List<String> requirements,
  }) = _DialogueChoice;

  factory DialogueChoice.fromJson(Map<String, dynamic> json) => _$DialogueChoiceFromJson(json);
}

@freezed
class DialogueEffect with _$DialogueEffect {
  const factory DialogueEffect({
    required EffectType type,
    required int value,
    String? itemId,
    String? targetId,
  }) = _DialogueEffect;

  factory DialogueEffect.fromJson(Map<String, dynamic> json) => _$DialogueEffectFromJson(json);
}

@freezed
class DialogueReward with _$DialogueReward {
  const factory DialogueReward({
    required RewardType type,
    required int value,
    String? itemId,
    String? description,
  }) = _DialogueReward;

  factory DialogueReward.fromJson(Map<String, dynamic> json) => _$DialogueRewardFromJson(json);
}

enum NPCType {
  philosopher,
  merchant,
  trader,
  teacher,
  official,
  citizen,
}

enum EconomicConcept {
  supplyAndDemand,
  trading,
  currency,
  markets,
  specialization,
  opportunity_cost,
  resources,
  inflation,
  banking,
  international_trade,
}

enum EffectType {
  gainDrachmae,
  loseDrachmae,
  gainExperience,
  gainItem,
  loseItem,
  changeReputation,
  unlockDialogue,
  unlockQuest,
}

enum RewardType {
  drachmae,
  experience,
  item,
  knowledge,
  reputation,
}