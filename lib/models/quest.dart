import 'package:freezed_annotation/freezed_annotation.dart';
import 'inventory.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

@freezed
class Quest with _$Quest {
  const factory Quest({
    required String id,
    required String title,
    required String description,
    required QuestType type,
    required QuestDifficulty difficulty,
    required List<QuestObjective> objectives,
    required List<QuestReward> rewards,
    required List<String> prerequisites,
    required String economicConcept,
    required String learningObjective,
    @Default(QuestStatus.available) QuestStatus status,
    @Default([]) List<String> completedObjectives,
    @Default(false) bool isCompleted,
    @Default(false) bool isStarted,
    String? giver,
    String? location,
    int? timeLimit,
    String? hint,
  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}

@freezed
class QuestObjective with _$QuestObjective {
  const factory QuestObjective({
    required String id,
    required String description,
    required ObjectiveType type,
    required Map<String, dynamic> parameters,
    @Default(false) bool isCompleted,
    int? currentProgress,
    int? targetProgress,
  }) = _QuestObjective;

  factory QuestObjective.fromJson(Map<String, dynamic> json) => _$QuestObjectiveFromJson(json);
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward({
    required RewardType type,
    required int amount,
    String? itemId,
    String? skillType,
  }) = _QuestReward;

  factory QuestReward.fromJson(Map<String, dynamic> json) => _$QuestRewardFromJson(json);
}

enum QuestType {
  main,
  side,
  tutorial,
  daily,
  economic,
}

enum QuestDifficulty {
  easy,
  medium,
  hard,
  expert,
  veryHard,
}

enum QuestStatus {
  available,
  started,
  completed,
  failed,
  locked,
}

enum ObjectiveType {
  trade,
  collect,
  visit,
  talk,
  learn,
  earn,
  spend,
  craft,
  travel,
  custom,
}

enum RewardType {
  drachmae,
  experience,
  item,
  skill,
  reputation,
  health,
  energy,
}