// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puzzle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EconomicPuzzleImpl _$$EconomicPuzzleImplFromJson(Map<String, dynamic> json) =>
    _$EconomicPuzzleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$PuzzleTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$PuzzleDifficultyEnumMap, json['difficulty']),
      economicConcept: json['economicConcept'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => PuzzleQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => PuzzleReward.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCompleted: json['isCompleted'] as bool? ?? false,
      requiredItems: (json['requiredItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minLevel: (json['minLevel'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$EconomicPuzzleImplToJson(
        _$EconomicPuzzleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$PuzzleTypeEnumMap[instance.type]!,
      'difficulty': _$PuzzleDifficultyEnumMap[instance.difficulty]!,
      'economicConcept': instance.economicConcept,
      'questions': instance.questions,
      'rewards': instance.rewards,
      'isCompleted': instance.isCompleted,
      'requiredItems': instance.requiredItems,
      'minLevel': instance.minLevel,
    };

const _$PuzzleTypeEnumMap = {
  PuzzleType.multipleChoice: 'multiple_choice',
  PuzzleType.resourceAllocation: 'resource_allocation',
  PuzzleType.tradeRoute: 'trade_route',
  PuzzleType.supplyDemand: 'supply_demand',
  PuzzleType.negotiation: 'negotiation',
  PuzzleType.calculation: 'calculation',
};

const _$PuzzleDifficultyEnumMap = {
  PuzzleDifficulty.easy: 'easy',
  PuzzleDifficulty.medium: 'medium',
  PuzzleDifficulty.hard: 'hard',
  PuzzleDifficulty.expert: 'expert',
};

_$PuzzleQuestionImpl _$$PuzzleQuestionImplFromJson(Map<String, dynamic> json) =>
    _$PuzzleQuestionImpl(
      id: json['id'] as String,
      questionText: json['questionText'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PuzzleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      explanation: json['explanation'] as String?,
      hint: json['hint'] as String?,
    );

Map<String, dynamic> _$$PuzzleQuestionImplToJson(
        _$PuzzleQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionText': instance.questionText,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'answers': instance.answers,
      'explanation': instance.explanation,
      'hint': instance.hint,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.singleChoice: 'single_choice',
  QuestionType.multipleChoice: 'multiple_choice',
  QuestionType.trueFalse: 'true_false',
  QuestionType.numerical: 'numerical',
  QuestionType.scenario: 'scenario',
};

_$PuzzleAnswerImpl _$$PuzzleAnswerImplFromJson(Map<String, dynamic> json) =>
    _$PuzzleAnswerImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      isCorrect: json['isCorrect'] as bool,
      feedback: json['feedback'] as String?,
      value: (json['value'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PuzzleAnswerImplToJson(_$PuzzleAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      'feedback': instance.feedback,
      'value': instance.value,
    };

_$PuzzleRewardImpl _$$PuzzleRewardImplFromJson(Map<String, dynamic> json) =>
    _$PuzzleRewardImpl(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
      itemId: json['itemId'] as String?,
    );

Map<String, dynamic> _$$PuzzleRewardImplToJson(_$PuzzleRewardImpl instance) =>
    <String, dynamic>{
      'type': _$RewardTypeEnumMap[instance.type]!,
      'value': instance.value,
      'itemId': instance.itemId,
    };

const _$RewardTypeEnumMap = {
  RewardType.drachmae: 'drachmae',
  RewardType.experience: 'experience',
  RewardType.item: 'item',
  RewardType.reputation: 'reputation',
  RewardType.unlock: 'unlock',
};

_$ResourceAllocationPuzzleImpl _$$ResourceAllocationPuzzleImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceAllocationPuzzleImpl(
      id: json['id'] as String,
      scenario: json['scenario'] as String,
      resources: (json['resources'] as List<dynamic>)
          .map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: (json['options'] as List<dynamic>)
          .map((e) => AllocationOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAllocation: (json['correctAllocation'] as num).toInt(),
      explanation: json['explanation'] as String?,
    );

Map<String, dynamic> _$$ResourceAllocationPuzzleImplToJson(
        _$ResourceAllocationPuzzleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scenario': instance.scenario,
      'resources': instance.resources,
      'options': instance.options,
      'correctAllocation': instance.correctAllocation,
      'explanation': instance.explanation,
    };

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      name: json['name'] as String,
      available: (json['available'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'available': instance.available,
      'unit': instance.unit,
    };

_$AllocationOptionImpl _$$AllocationOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$AllocationOptionImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      allocation: Map<String, int>.from(json['allocation'] as Map),
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$AllocationOptionImplToJson(
        _$AllocationOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'allocation': instance.allocation,
      'score': instance.score,
    };

_$TradeRoutePuzzleImpl _$$TradeRoutePuzzleImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRoutePuzzleImpl(
      id: json['id'] as String,
      scenario: json['scenario'] as String,
      cities: (json['cities'] as List<dynamic>)
          .map((e) => TradeCity.fromJson(e as Map<String, dynamic>))
          .toList(),
      goods: (json['goods'] as List<dynamic>)
          .map((e) => TradeGood.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetProfit: (json['targetProfit'] as num).toInt(),
    );

Map<String, dynamic> _$$TradeRoutePuzzleImplToJson(
        _$TradeRoutePuzzleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scenario': instance.scenario,
      'cities': instance.cities,
      'goods': instance.goods,
      'targetProfit': instance.targetProfit,
    };

_$TradeCityImpl _$$TradeCityImplFromJson(Map<String, dynamic> json) =>
    _$TradeCityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      buyPrices: Map<String, int>.from(json['buyPrices'] as Map),
      sellPrices: Map<String, int>.from(json['sellPrices'] as Map),
    );

Map<String, dynamic> _$$TradeCityImplToJson(_$TradeCityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'buyPrices': instance.buyPrices,
      'sellPrices': instance.sellPrices,
    };

_$TradeGoodImpl _$$TradeGoodImplFromJson(Map<String, dynamic> json) =>
    _$TradeGoodImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$$TradeGoodImplToJson(_$TradeGoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
    };
