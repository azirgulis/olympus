import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle.freezed.dart';
part 'puzzle.g.dart';

/// Economic puzzle for teaching concepts
@freezed
class EconomicPuzzle with _$EconomicPuzzle {
  const factory EconomicPuzzle({
    required String id,
    required String title,
    required String description,
    required PuzzleType type,
    required PuzzleDifficulty difficulty,
    required String economicConcept,
    required List<PuzzleQuestion> questions,
    required List<PuzzleReward> rewards,
    @Default(false) bool isCompleted,
    @Default([]) List<String> requiredItems,
    @Default(0) int minLevel,
  }) = _EconomicPuzzle;

  factory EconomicPuzzle.fromJson(Map<String, dynamic> json) => _$EconomicPuzzleFromJson(json);
}

/// Question in a puzzle
@freezed
class PuzzleQuestion with _$PuzzleQuestion {
  const factory PuzzleQuestion({
    required String id,
    required String questionText,
    required QuestionType type,
    required List<PuzzleAnswer> answers,
    String? explanation,
    String? hint,
  }) = _PuzzleQuestion;

  factory PuzzleQuestion.fromJson(Map<String, dynamic> json) => _$PuzzleQuestionFromJson(json);
}

/// Answer option
@freezed
class PuzzleAnswer with _$PuzzleAnswer {
  const factory PuzzleAnswer({
    required String id,
    required String text,
    required bool isCorrect,
    String? feedback,
    @Default(0) int value, // For numerical/calculation answers
  }) = _PuzzleAnswer;

  factory PuzzleAnswer.fromJson(Map<String, dynamic> json) => _$PuzzleAnswerFromJson(json);
}

/// Puzzle rewards
@freezed
class PuzzleReward with _$PuzzleReward {
  const factory PuzzleReward({
    required RewardType type,
    required int value,
    String? itemId,
  }) = _PuzzleReward;

  factory PuzzleReward.fromJson(Map<String, dynamic> json) => _$PuzzleRewardFromJson(json);
}

/// Resource allocation puzzle
@freezed
class ResourceAllocationPuzzle with _$ResourceAllocationPuzzle {
  const factory ResourceAllocationPuzzle({
    required String id,
    required String scenario,
    required List<Resource> resources,
    required List<AllocationOption> options,
    required int correctAllocation,
    String? explanation,
  }) = _ResourceAllocationPuzzle;

  factory ResourceAllocationPuzzle.fromJson(Map<String, dynamic> json) => _$ResourceAllocationPuzzleFromJson(json);
}

@freezed
class Resource with _$Resource {
  const factory Resource({
    required String name,
    required int available,
    required String unit,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
}

@freezed
class AllocationOption with _$AllocationOption {
  const factory AllocationOption({
    required String id,
    required String description,
    required Map<String, int> allocation,
    required int score,
  }) = _AllocationOption;

  factory AllocationOption.fromJson(Map<String, dynamic> json) => _$AllocationOptionFromJson(json);
}

/// Trade route puzzle
@freezed
class TradeRoutePuzzle with _$TradeRoutePuzzle {
  const factory TradeRoutePuzzle({
    required String id,
    required String scenario,
    required List<TradeCity> cities,
    required List<TradeGood> goods,
    required int targetProfit,
  }) = _TradeRoutePuzzle;

  factory TradeRoutePuzzle.fromJson(Map<String, dynamic> json) => _$TradeRoutePuzzleFromJson(json);
}

@freezed
class TradeCity with _$TradeCity {
  const factory TradeCity({
    required String id,
    required String name,
    required Map<String, int> buyPrices,
    required Map<String, int> sellPrices,
  }) = _TradeCity;

  factory TradeCity.fromJson(Map<String, dynamic> json) => _$TradeCityFromJson(json);
}

@freezed
class TradeGood with _$TradeGood {
  const factory TradeGood({
    required String id,
    required String name,
    required int weight,
  }) = _TradeGood;

  factory TradeGood.fromJson(Map<String, dynamic> json) => _$TradeGoodFromJson(json);
}

enum PuzzleType {
  @JsonValue('multiple_choice')
  multipleChoice,
  @JsonValue('resource_allocation')
  resourceAllocation,
  @JsonValue('trade_route')
  tradeRoute,
  @JsonValue('supply_demand')
  supplyDemand,
  @JsonValue('negotiation')
  negotiation,
  @JsonValue('calculation')
  calculation,
}

enum PuzzleDifficulty {
  @JsonValue('easy')
  easy,
  @JsonValue('medium')
  medium,
  @JsonValue('hard')
  hard,
  @JsonValue('expert')
  expert,
}

enum QuestionType {
  @JsonValue('single_choice')
  singleChoice,
  @JsonValue('multiple_choice')
  multipleChoice,
  @JsonValue('true_false')
  trueFalse,
  @JsonValue('numerical')
  numerical,
  @JsonValue('scenario')
  scenario,
}

enum RewardType {
  @JsonValue('drachmae')
  drachmae,
  @JsonValue('experience')
  experience,
  @JsonValue('item')
  item,
  @JsonValue('reputation')
  reputation,
  @JsonValue('unlock')
  unlock,
}
