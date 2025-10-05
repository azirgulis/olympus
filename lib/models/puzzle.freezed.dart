// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puzzle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EconomicPuzzle _$EconomicPuzzleFromJson(Map<String, dynamic> json) {
  return _EconomicPuzzle.fromJson(json);
}

/// @nodoc
mixin _$EconomicPuzzle {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PuzzleType get type => throw _privateConstructorUsedError;
  PuzzleDifficulty get difficulty => throw _privateConstructorUsedError;
  String get economicConcept => throw _privateConstructorUsedError;
  List<PuzzleQuestion> get questions => throw _privateConstructorUsedError;
  List<PuzzleReward> get rewards => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  List<String> get requiredItems => throw _privateConstructorUsedError;
  int get minLevel => throw _privateConstructorUsedError;

  /// Serializes this EconomicPuzzle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EconomicPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EconomicPuzzleCopyWith<EconomicPuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EconomicPuzzleCopyWith<$Res> {
  factory $EconomicPuzzleCopyWith(
          EconomicPuzzle value, $Res Function(EconomicPuzzle) then) =
      _$EconomicPuzzleCopyWithImpl<$Res, EconomicPuzzle>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      PuzzleType type,
      PuzzleDifficulty difficulty,
      String economicConcept,
      List<PuzzleQuestion> questions,
      List<PuzzleReward> rewards,
      bool isCompleted,
      List<String> requiredItems,
      int minLevel});
}

/// @nodoc
class _$EconomicPuzzleCopyWithImpl<$Res, $Val extends EconomicPuzzle>
    implements $EconomicPuzzleCopyWith<$Res> {
  _$EconomicPuzzleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EconomicPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? economicConcept = null,
    Object? questions = null,
    Object? rewards = null,
    Object? isCompleted = null,
    Object? requiredItems = null,
    Object? minLevel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PuzzleType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as PuzzleDifficulty,
      economicConcept: null == economicConcept
          ? _value.economicConcept
          : economicConcept // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PuzzleQuestion>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<PuzzleReward>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredItems: null == requiredItems
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EconomicPuzzleImplCopyWith<$Res>
    implements $EconomicPuzzleCopyWith<$Res> {
  factory _$$EconomicPuzzleImplCopyWith(_$EconomicPuzzleImpl value,
          $Res Function(_$EconomicPuzzleImpl) then) =
      __$$EconomicPuzzleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      PuzzleType type,
      PuzzleDifficulty difficulty,
      String economicConcept,
      List<PuzzleQuestion> questions,
      List<PuzzleReward> rewards,
      bool isCompleted,
      List<String> requiredItems,
      int minLevel});
}

/// @nodoc
class __$$EconomicPuzzleImplCopyWithImpl<$Res>
    extends _$EconomicPuzzleCopyWithImpl<$Res, _$EconomicPuzzleImpl>
    implements _$$EconomicPuzzleImplCopyWith<$Res> {
  __$$EconomicPuzzleImplCopyWithImpl(
      _$EconomicPuzzleImpl _value, $Res Function(_$EconomicPuzzleImpl) _then)
      : super(_value, _then);

  /// Create a copy of EconomicPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? economicConcept = null,
    Object? questions = null,
    Object? rewards = null,
    Object? isCompleted = null,
    Object? requiredItems = null,
    Object? minLevel = null,
  }) {
    return _then(_$EconomicPuzzleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PuzzleType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as PuzzleDifficulty,
      economicConcept: null == economicConcept
          ? _value.economicConcept
          : economicConcept // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PuzzleQuestion>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<PuzzleReward>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredItems: null == requiredItems
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EconomicPuzzleImpl implements _EconomicPuzzle {
  const _$EconomicPuzzleImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.difficulty,
      required this.economicConcept,
      required final List<PuzzleQuestion> questions,
      required final List<PuzzleReward> rewards,
      this.isCompleted = false,
      final List<String> requiredItems = const [],
      this.minLevel = 0})
      : _questions = questions,
        _rewards = rewards,
        _requiredItems = requiredItems;

  factory _$EconomicPuzzleImpl.fromJson(Map<String, dynamic> json) =>
      _$$EconomicPuzzleImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final PuzzleType type;
  @override
  final PuzzleDifficulty difficulty;
  @override
  final String economicConcept;
  final List<PuzzleQuestion> _questions;
  @override
  List<PuzzleQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<PuzzleReward> _rewards;
  @override
  List<PuzzleReward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  final List<String> _requiredItems;
  @override
  @JsonKey()
  List<String> get requiredItems {
    if (_requiredItems is EqualUnmodifiableListView) return _requiredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredItems);
  }

  @override
  @JsonKey()
  final int minLevel;

  @override
  String toString() {
    return 'EconomicPuzzle(id: $id, title: $title, description: $description, type: $type, difficulty: $difficulty, economicConcept: $economicConcept, questions: $questions, rewards: $rewards, isCompleted: $isCompleted, requiredItems: $requiredItems, minLevel: $minLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EconomicPuzzleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.economicConcept, economicConcept) ||
                other.economicConcept == economicConcept) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      difficulty,
      economicConcept,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_rewards),
      isCompleted,
      const DeepCollectionEquality().hash(_requiredItems),
      minLevel);

  /// Create a copy of EconomicPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EconomicPuzzleImplCopyWith<_$EconomicPuzzleImpl> get copyWith =>
      __$$EconomicPuzzleImplCopyWithImpl<_$EconomicPuzzleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EconomicPuzzleImplToJson(
      this,
    );
  }
}

abstract class _EconomicPuzzle implements EconomicPuzzle {
  const factory _EconomicPuzzle(
      {required final String id,
      required final String title,
      required final String description,
      required final PuzzleType type,
      required final PuzzleDifficulty difficulty,
      required final String economicConcept,
      required final List<PuzzleQuestion> questions,
      required final List<PuzzleReward> rewards,
      final bool isCompleted,
      final List<String> requiredItems,
      final int minLevel}) = _$EconomicPuzzleImpl;

  factory _EconomicPuzzle.fromJson(Map<String, dynamic> json) =
      _$EconomicPuzzleImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  PuzzleType get type;
  @override
  PuzzleDifficulty get difficulty;
  @override
  String get economicConcept;
  @override
  List<PuzzleQuestion> get questions;
  @override
  List<PuzzleReward> get rewards;
  @override
  bool get isCompleted;
  @override
  List<String> get requiredItems;
  @override
  int get minLevel;

  /// Create a copy of EconomicPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EconomicPuzzleImplCopyWith<_$EconomicPuzzleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PuzzleQuestion _$PuzzleQuestionFromJson(Map<String, dynamic> json) {
  return _PuzzleQuestion.fromJson(json);
}

/// @nodoc
mixin _$PuzzleQuestion {
  String get id => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  List<PuzzleAnswer> get answers => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;

  /// Serializes this PuzzleQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PuzzleQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PuzzleQuestionCopyWith<PuzzleQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleQuestionCopyWith<$Res> {
  factory $PuzzleQuestionCopyWith(
          PuzzleQuestion value, $Res Function(PuzzleQuestion) then) =
      _$PuzzleQuestionCopyWithImpl<$Res, PuzzleQuestion>;
  @useResult
  $Res call(
      {String id,
      String questionText,
      QuestionType type,
      List<PuzzleAnswer> answers,
      String? explanation,
      String? hint});
}

/// @nodoc
class _$PuzzleQuestionCopyWithImpl<$Res, $Val extends PuzzleQuestion>
    implements $PuzzleQuestionCopyWith<$Res> {
  _$PuzzleQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PuzzleQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionText = null,
    Object? type = null,
    Object? answers = null,
    Object? explanation = freezed,
    Object? hint = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PuzzleAnswer>,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PuzzleQuestionImplCopyWith<$Res>
    implements $PuzzleQuestionCopyWith<$Res> {
  factory _$$PuzzleQuestionImplCopyWith(_$PuzzleQuestionImpl value,
          $Res Function(_$PuzzleQuestionImpl) then) =
      __$$PuzzleQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String questionText,
      QuestionType type,
      List<PuzzleAnswer> answers,
      String? explanation,
      String? hint});
}

/// @nodoc
class __$$PuzzleQuestionImplCopyWithImpl<$Res>
    extends _$PuzzleQuestionCopyWithImpl<$Res, _$PuzzleQuestionImpl>
    implements _$$PuzzleQuestionImplCopyWith<$Res> {
  __$$PuzzleQuestionImplCopyWithImpl(
      _$PuzzleQuestionImpl _value, $Res Function(_$PuzzleQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PuzzleQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionText = null,
    Object? type = null,
    Object? answers = null,
    Object? explanation = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$PuzzleQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PuzzleAnswer>,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PuzzleQuestionImpl implements _PuzzleQuestion {
  const _$PuzzleQuestionImpl(
      {required this.id,
      required this.questionText,
      required this.type,
      required final List<PuzzleAnswer> answers,
      this.explanation,
      this.hint})
      : _answers = answers;

  factory _$PuzzleQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PuzzleQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String questionText;
  @override
  final QuestionType type;
  final List<PuzzleAnswer> _answers;
  @override
  List<PuzzleAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String? explanation;
  @override
  final String? hint;

  @override
  String toString() {
    return 'PuzzleQuestion(id: $id, questionText: $questionText, type: $type, answers: $answers, explanation: $explanation, hint: $hint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.hint, hint) || other.hint == hint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionText, type,
      const DeepCollectionEquality().hash(_answers), explanation, hint);

  /// Create a copy of PuzzleQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PuzzleQuestionImplCopyWith<_$PuzzleQuestionImpl> get copyWith =>
      __$$PuzzleQuestionImplCopyWithImpl<_$PuzzleQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PuzzleQuestionImplToJson(
      this,
    );
  }
}

abstract class _PuzzleQuestion implements PuzzleQuestion {
  const factory _PuzzleQuestion(
      {required final String id,
      required final String questionText,
      required final QuestionType type,
      required final List<PuzzleAnswer> answers,
      final String? explanation,
      final String? hint}) = _$PuzzleQuestionImpl;

  factory _PuzzleQuestion.fromJson(Map<String, dynamic> json) =
      _$PuzzleQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get questionText;
  @override
  QuestionType get type;
  @override
  List<PuzzleAnswer> get answers;
  @override
  String? get explanation;
  @override
  String? get hint;

  /// Create a copy of PuzzleQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PuzzleQuestionImplCopyWith<_$PuzzleQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PuzzleAnswer _$PuzzleAnswerFromJson(Map<String, dynamic> json) {
  return _PuzzleAnswer.fromJson(json);
}

/// @nodoc
mixin _$PuzzleAnswer {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this PuzzleAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PuzzleAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PuzzleAnswerCopyWith<PuzzleAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleAnswerCopyWith<$Res> {
  factory $PuzzleAnswerCopyWith(
          PuzzleAnswer value, $Res Function(PuzzleAnswer) then) =
      _$PuzzleAnswerCopyWithImpl<$Res, PuzzleAnswer>;
  @useResult
  $Res call(
      {String id, String text, bool isCorrect, String? feedback, int value});
}

/// @nodoc
class _$PuzzleAnswerCopyWithImpl<$Res, $Val extends PuzzleAnswer>
    implements $PuzzleAnswerCopyWith<$Res> {
  _$PuzzleAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PuzzleAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? isCorrect = null,
    Object? feedback = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PuzzleAnswerImplCopyWith<$Res>
    implements $PuzzleAnswerCopyWith<$Res> {
  factory _$$PuzzleAnswerImplCopyWith(
          _$PuzzleAnswerImpl value, $Res Function(_$PuzzleAnswerImpl) then) =
      __$$PuzzleAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String text, bool isCorrect, String? feedback, int value});
}

/// @nodoc
class __$$PuzzleAnswerImplCopyWithImpl<$Res>
    extends _$PuzzleAnswerCopyWithImpl<$Res, _$PuzzleAnswerImpl>
    implements _$$PuzzleAnswerImplCopyWith<$Res> {
  __$$PuzzleAnswerImplCopyWithImpl(
      _$PuzzleAnswerImpl _value, $Res Function(_$PuzzleAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PuzzleAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? isCorrect = null,
    Object? feedback = freezed,
    Object? value = null,
  }) {
    return _then(_$PuzzleAnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PuzzleAnswerImpl implements _PuzzleAnswer {
  const _$PuzzleAnswerImpl(
      {required this.id,
      required this.text,
      required this.isCorrect,
      this.feedback,
      this.value = 0});

  factory _$PuzzleAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PuzzleAnswerImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final bool isCorrect;
  @override
  final String? feedback;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'PuzzleAnswer(id: $id, text: $text, isCorrect: $isCorrect, feedback: $feedback, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, isCorrect, feedback, value);

  /// Create a copy of PuzzleAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PuzzleAnswerImplCopyWith<_$PuzzleAnswerImpl> get copyWith =>
      __$$PuzzleAnswerImplCopyWithImpl<_$PuzzleAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PuzzleAnswerImplToJson(
      this,
    );
  }
}

abstract class _PuzzleAnswer implements PuzzleAnswer {
  const factory _PuzzleAnswer(
      {required final String id,
      required final String text,
      required final bool isCorrect,
      final String? feedback,
      final int value}) = _$PuzzleAnswerImpl;

  factory _PuzzleAnswer.fromJson(Map<String, dynamic> json) =
      _$PuzzleAnswerImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  bool get isCorrect;
  @override
  String? get feedback;
  @override
  int get value;

  /// Create a copy of PuzzleAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PuzzleAnswerImplCopyWith<_$PuzzleAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PuzzleReward _$PuzzleRewardFromJson(Map<String, dynamic> json) {
  return _PuzzleReward.fromJson(json);
}

/// @nodoc
mixin _$PuzzleReward {
  RewardType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;

  /// Serializes this PuzzleReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PuzzleReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PuzzleRewardCopyWith<PuzzleReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleRewardCopyWith<$Res> {
  factory $PuzzleRewardCopyWith(
          PuzzleReward value, $Res Function(PuzzleReward) then) =
      _$PuzzleRewardCopyWithImpl<$Res, PuzzleReward>;
  @useResult
  $Res call({RewardType type, int value, String? itemId});
}

/// @nodoc
class _$PuzzleRewardCopyWithImpl<$Res, $Val extends PuzzleReward>
    implements $PuzzleRewardCopyWith<$Res> {
  _$PuzzleRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PuzzleReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PuzzleRewardImplCopyWith<$Res>
    implements $PuzzleRewardCopyWith<$Res> {
  factory _$$PuzzleRewardImplCopyWith(
          _$PuzzleRewardImpl value, $Res Function(_$PuzzleRewardImpl) then) =
      __$$PuzzleRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardType type, int value, String? itemId});
}

/// @nodoc
class __$$PuzzleRewardImplCopyWithImpl<$Res>
    extends _$PuzzleRewardCopyWithImpl<$Res, _$PuzzleRewardImpl>
    implements _$$PuzzleRewardImplCopyWith<$Res> {
  __$$PuzzleRewardImplCopyWithImpl(
      _$PuzzleRewardImpl _value, $Res Function(_$PuzzleRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PuzzleReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
  }) {
    return _then(_$PuzzleRewardImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PuzzleRewardImpl implements _PuzzleReward {
  const _$PuzzleRewardImpl(
      {required this.type, required this.value, this.itemId});

  factory _$PuzzleRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PuzzleRewardImplFromJson(json);

  @override
  final RewardType type;
  @override
  final int value;
  @override
  final String? itemId;

  @override
  String toString() {
    return 'PuzzleReward(type: $type, value: $value, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, itemId);

  /// Create a copy of PuzzleReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PuzzleRewardImplCopyWith<_$PuzzleRewardImpl> get copyWith =>
      __$$PuzzleRewardImplCopyWithImpl<_$PuzzleRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PuzzleRewardImplToJson(
      this,
    );
  }
}

abstract class _PuzzleReward implements PuzzleReward {
  const factory _PuzzleReward(
      {required final RewardType type,
      required final int value,
      final String? itemId}) = _$PuzzleRewardImpl;

  factory _PuzzleReward.fromJson(Map<String, dynamic> json) =
      _$PuzzleRewardImpl.fromJson;

  @override
  RewardType get type;
  @override
  int get value;
  @override
  String? get itemId;

  /// Create a copy of PuzzleReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PuzzleRewardImplCopyWith<_$PuzzleRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceAllocationPuzzle _$ResourceAllocationPuzzleFromJson(
    Map<String, dynamic> json) {
  return _ResourceAllocationPuzzle.fromJson(json);
}

/// @nodoc
mixin _$ResourceAllocationPuzzle {
  String get id => throw _privateConstructorUsedError;
  String get scenario => throw _privateConstructorUsedError;
  List<Resource> get resources => throw _privateConstructorUsedError;
  List<AllocationOption> get options => throw _privateConstructorUsedError;
  int get correctAllocation => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

  /// Serializes this ResourceAllocationPuzzle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourceAllocationPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceAllocationPuzzleCopyWith<ResourceAllocationPuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceAllocationPuzzleCopyWith<$Res> {
  factory $ResourceAllocationPuzzleCopyWith(ResourceAllocationPuzzle value,
          $Res Function(ResourceAllocationPuzzle) then) =
      _$ResourceAllocationPuzzleCopyWithImpl<$Res, ResourceAllocationPuzzle>;
  @useResult
  $Res call(
      {String id,
      String scenario,
      List<Resource> resources,
      List<AllocationOption> options,
      int correctAllocation,
      String? explanation});
}

/// @nodoc
class _$ResourceAllocationPuzzleCopyWithImpl<$Res,
        $Val extends ResourceAllocationPuzzle>
    implements $ResourceAllocationPuzzleCopyWith<$Res> {
  _$ResourceAllocationPuzzleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceAllocationPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? resources = null,
    Object? options = null,
    Object? correctAllocation = null,
    Object? explanation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AllocationOption>,
      correctAllocation: null == correctAllocation
          ? _value.correctAllocation
          : correctAllocation // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceAllocationPuzzleImplCopyWith<$Res>
    implements $ResourceAllocationPuzzleCopyWith<$Res> {
  factory _$$ResourceAllocationPuzzleImplCopyWith(
          _$ResourceAllocationPuzzleImpl value,
          $Res Function(_$ResourceAllocationPuzzleImpl) then) =
      __$$ResourceAllocationPuzzleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String scenario,
      List<Resource> resources,
      List<AllocationOption> options,
      int correctAllocation,
      String? explanation});
}

/// @nodoc
class __$$ResourceAllocationPuzzleImplCopyWithImpl<$Res>
    extends _$ResourceAllocationPuzzleCopyWithImpl<$Res,
        _$ResourceAllocationPuzzleImpl>
    implements _$$ResourceAllocationPuzzleImplCopyWith<$Res> {
  __$$ResourceAllocationPuzzleImplCopyWithImpl(
      _$ResourceAllocationPuzzleImpl _value,
      $Res Function(_$ResourceAllocationPuzzleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceAllocationPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? resources = null,
    Object? options = null,
    Object? correctAllocation = null,
    Object? explanation = freezed,
  }) {
    return _then(_$ResourceAllocationPuzzleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AllocationOption>,
      correctAllocation: null == correctAllocation
          ? _value.correctAllocation
          : correctAllocation // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceAllocationPuzzleImpl implements _ResourceAllocationPuzzle {
  const _$ResourceAllocationPuzzleImpl(
      {required this.id,
      required this.scenario,
      required final List<Resource> resources,
      required final List<AllocationOption> options,
      required this.correctAllocation,
      this.explanation})
      : _resources = resources,
        _options = options;

  factory _$ResourceAllocationPuzzleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceAllocationPuzzleImplFromJson(json);

  @override
  final String id;
  @override
  final String scenario;
  final List<Resource> _resources;
  @override
  List<Resource> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  final List<AllocationOption> _options;
  @override
  List<AllocationOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final int correctAllocation;
  @override
  final String? explanation;

  @override
  String toString() {
    return 'ResourceAllocationPuzzle(id: $id, scenario: $scenario, resources: $resources, options: $options, correctAllocation: $correctAllocation, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceAllocationPuzzleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAllocation, correctAllocation) ||
                other.correctAllocation == correctAllocation) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenario,
      const DeepCollectionEquality().hash(_resources),
      const DeepCollectionEquality().hash(_options),
      correctAllocation,
      explanation);

  /// Create a copy of ResourceAllocationPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceAllocationPuzzleImplCopyWith<_$ResourceAllocationPuzzleImpl>
      get copyWith => __$$ResourceAllocationPuzzleImplCopyWithImpl<
          _$ResourceAllocationPuzzleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceAllocationPuzzleImplToJson(
      this,
    );
  }
}

abstract class _ResourceAllocationPuzzle implements ResourceAllocationPuzzle {
  const factory _ResourceAllocationPuzzle(
      {required final String id,
      required final String scenario,
      required final List<Resource> resources,
      required final List<AllocationOption> options,
      required final int correctAllocation,
      final String? explanation}) = _$ResourceAllocationPuzzleImpl;

  factory _ResourceAllocationPuzzle.fromJson(Map<String, dynamic> json) =
      _$ResourceAllocationPuzzleImpl.fromJson;

  @override
  String get id;
  @override
  String get scenario;
  @override
  List<Resource> get resources;
  @override
  List<AllocationOption> get options;
  @override
  int get correctAllocation;
  @override
  String? get explanation;

  /// Create a copy of ResourceAllocationPuzzle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceAllocationPuzzleImplCopyWith<_$ResourceAllocationPuzzleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
mixin _$Resource {
  String get name => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call({String name, int available, String unit});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? available = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int available, String unit});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? available = null,
    Object? unit = null,
  }) {
    return _then(_$ResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceImpl implements _Resource {
  const _$ResourceImpl(
      {required this.name, required this.available, required this.unit});

  factory _$ResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImplFromJson(json);

  @override
  final String name;
  @override
  final int available;
  @override
  final String unit;

  @override
  String toString() {
    return 'Resource(name: $name, available: $available, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, available, unit);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImplToJson(
      this,
    );
  }
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {required final String name,
      required final int available,
      required final String unit}) = _$ResourceImpl;

  factory _Resource.fromJson(Map<String, dynamic> json) =
      _$ResourceImpl.fromJson;

  @override
  String get name;
  @override
  int get available;
  @override
  String get unit;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllocationOption _$AllocationOptionFromJson(Map<String, dynamic> json) {
  return _AllocationOption.fromJson(json);
}

/// @nodoc
mixin _$AllocationOption {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, int> get allocation => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Serializes this AllocationOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllocationOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllocationOptionCopyWith<AllocationOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllocationOptionCopyWith<$Res> {
  factory $AllocationOptionCopyWith(
          AllocationOption value, $Res Function(AllocationOption) then) =
      _$AllocationOptionCopyWithImpl<$Res, AllocationOption>;
  @useResult
  $Res call(
      {String id, String description, Map<String, int> allocation, int score});
}

/// @nodoc
class _$AllocationOptionCopyWithImpl<$Res, $Val extends AllocationOption>
    implements $AllocationOptionCopyWith<$Res> {
  _$AllocationOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllocationOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? allocation = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allocation: null == allocation
          ? _value.allocation
          : allocation // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllocationOptionImplCopyWith<$Res>
    implements $AllocationOptionCopyWith<$Res> {
  factory _$$AllocationOptionImplCopyWith(_$AllocationOptionImpl value,
          $Res Function(_$AllocationOptionImpl) then) =
      __$$AllocationOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String description, Map<String, int> allocation, int score});
}

/// @nodoc
class __$$AllocationOptionImplCopyWithImpl<$Res>
    extends _$AllocationOptionCopyWithImpl<$Res, _$AllocationOptionImpl>
    implements _$$AllocationOptionImplCopyWith<$Res> {
  __$$AllocationOptionImplCopyWithImpl(_$AllocationOptionImpl _value,
      $Res Function(_$AllocationOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllocationOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? allocation = null,
    Object? score = null,
  }) {
    return _then(_$AllocationOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allocation: null == allocation
          ? _value._allocation
          : allocation // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllocationOptionImpl implements _AllocationOption {
  const _$AllocationOptionImpl(
      {required this.id,
      required this.description,
      required final Map<String, int> allocation,
      required this.score})
      : _allocation = allocation;

  factory _$AllocationOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllocationOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  final Map<String, int> _allocation;
  @override
  Map<String, int> get allocation {
    if (_allocation is EqualUnmodifiableMapView) return _allocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allocation);
  }

  @override
  final int score;

  @override
  String toString() {
    return 'AllocationOption(id: $id, description: $description, allocation: $allocation, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllocationOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._allocation, _allocation) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description,
      const DeepCollectionEquality().hash(_allocation), score);

  /// Create a copy of AllocationOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllocationOptionImplCopyWith<_$AllocationOptionImpl> get copyWith =>
      __$$AllocationOptionImplCopyWithImpl<_$AllocationOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllocationOptionImplToJson(
      this,
    );
  }
}

abstract class _AllocationOption implements AllocationOption {
  const factory _AllocationOption(
      {required final String id,
      required final String description,
      required final Map<String, int> allocation,
      required final int score}) = _$AllocationOptionImpl;

  factory _AllocationOption.fromJson(Map<String, dynamic> json) =
      _$AllocationOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  Map<String, int> get allocation;
  @override
  int get score;

  /// Create a copy of AllocationOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllocationOptionImplCopyWith<_$AllocationOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeRoutePuzzle _$TradeRoutePuzzleFromJson(Map<String, dynamic> json) {
  return _TradeRoutePuzzle.fromJson(json);
}

/// @nodoc
mixin _$TradeRoutePuzzle {
  String get id => throw _privateConstructorUsedError;
  String get scenario => throw _privateConstructorUsedError;
  List<TradeCity> get cities => throw _privateConstructorUsedError;
  List<TradeGood> get goods => throw _privateConstructorUsedError;
  int get targetProfit => throw _privateConstructorUsedError;

  /// Serializes this TradeRoutePuzzle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRoutePuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRoutePuzzleCopyWith<TradeRoutePuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRoutePuzzleCopyWith<$Res> {
  factory $TradeRoutePuzzleCopyWith(
          TradeRoutePuzzle value, $Res Function(TradeRoutePuzzle) then) =
      _$TradeRoutePuzzleCopyWithImpl<$Res, TradeRoutePuzzle>;
  @useResult
  $Res call(
      {String id,
      String scenario,
      List<TradeCity> cities,
      List<TradeGood> goods,
      int targetProfit});
}

/// @nodoc
class _$TradeRoutePuzzleCopyWithImpl<$Res, $Val extends TradeRoutePuzzle>
    implements $TradeRoutePuzzleCopyWith<$Res> {
  _$TradeRoutePuzzleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRoutePuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? cities = null,
    Object? goods = null,
    Object? targetProfit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<TradeCity>,
      goods: null == goods
          ? _value.goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      targetProfit: null == targetProfit
          ? _value.targetProfit
          : targetProfit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRoutePuzzleImplCopyWith<$Res>
    implements $TradeRoutePuzzleCopyWith<$Res> {
  factory _$$TradeRoutePuzzleImplCopyWith(_$TradeRoutePuzzleImpl value,
          $Res Function(_$TradeRoutePuzzleImpl) then) =
      __$$TradeRoutePuzzleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String scenario,
      List<TradeCity> cities,
      List<TradeGood> goods,
      int targetProfit});
}

/// @nodoc
class __$$TradeRoutePuzzleImplCopyWithImpl<$Res>
    extends _$TradeRoutePuzzleCopyWithImpl<$Res, _$TradeRoutePuzzleImpl>
    implements _$$TradeRoutePuzzleImplCopyWith<$Res> {
  __$$TradeRoutePuzzleImplCopyWithImpl(_$TradeRoutePuzzleImpl _value,
      $Res Function(_$TradeRoutePuzzleImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRoutePuzzle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? cities = null,
    Object? goods = null,
    Object? targetProfit = null,
  }) {
    return _then(_$TradeRoutePuzzleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<TradeCity>,
      goods: null == goods
          ? _value._goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      targetProfit: null == targetProfit
          ? _value.targetProfit
          : targetProfit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeRoutePuzzleImpl implements _TradeRoutePuzzle {
  const _$TradeRoutePuzzleImpl(
      {required this.id,
      required this.scenario,
      required final List<TradeCity> cities,
      required final List<TradeGood> goods,
      required this.targetProfit})
      : _cities = cities,
        _goods = goods;

  factory _$TradeRoutePuzzleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRoutePuzzleImplFromJson(json);

  @override
  final String id;
  @override
  final String scenario;
  final List<TradeCity> _cities;
  @override
  List<TradeCity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<TradeGood> _goods;
  @override
  List<TradeGood> get goods {
    if (_goods is EqualUnmodifiableListView) return _goods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goods);
  }

  @override
  final int targetProfit;

  @override
  String toString() {
    return 'TradeRoutePuzzle(id: $id, scenario: $scenario, cities: $cities, goods: $goods, targetProfit: $targetProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRoutePuzzleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._goods, _goods) &&
            (identical(other.targetProfit, targetProfit) ||
                other.targetProfit == targetProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenario,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_goods),
      targetProfit);

  /// Create a copy of TradeRoutePuzzle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRoutePuzzleImplCopyWith<_$TradeRoutePuzzleImpl> get copyWith =>
      __$$TradeRoutePuzzleImplCopyWithImpl<_$TradeRoutePuzzleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRoutePuzzleImplToJson(
      this,
    );
  }
}

abstract class _TradeRoutePuzzle implements TradeRoutePuzzle {
  const factory _TradeRoutePuzzle(
      {required final String id,
      required final String scenario,
      required final List<TradeCity> cities,
      required final List<TradeGood> goods,
      required final int targetProfit}) = _$TradeRoutePuzzleImpl;

  factory _TradeRoutePuzzle.fromJson(Map<String, dynamic> json) =
      _$TradeRoutePuzzleImpl.fromJson;

  @override
  String get id;
  @override
  String get scenario;
  @override
  List<TradeCity> get cities;
  @override
  List<TradeGood> get goods;
  @override
  int get targetProfit;

  /// Create a copy of TradeRoutePuzzle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRoutePuzzleImplCopyWith<_$TradeRoutePuzzleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeCity _$TradeCityFromJson(Map<String, dynamic> json) {
  return _TradeCity.fromJson(json);
}

/// @nodoc
mixin _$TradeCity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, int> get buyPrices => throw _privateConstructorUsedError;
  Map<String, int> get sellPrices => throw _privateConstructorUsedError;

  /// Serializes this TradeCity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeCityCopyWith<TradeCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCityCopyWith<$Res> {
  factory $TradeCityCopyWith(TradeCity value, $Res Function(TradeCity) then) =
      _$TradeCityCopyWithImpl<$Res, TradeCity>;
  @useResult
  $Res call(
      {String id,
      String name,
      Map<String, int> buyPrices,
      Map<String, int> sellPrices});
}

/// @nodoc
class _$TradeCityCopyWithImpl<$Res, $Val extends TradeCity>
    implements $TradeCityCopyWith<$Res> {
  _$TradeCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? buyPrices = null,
    Object? sellPrices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrices: null == buyPrices
          ? _value.buyPrices
          : buyPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sellPrices: null == sellPrices
          ? _value.sellPrices
          : sellPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeCityImplCopyWith<$Res>
    implements $TradeCityCopyWith<$Res> {
  factory _$$TradeCityImplCopyWith(
          _$TradeCityImpl value, $Res Function(_$TradeCityImpl) then) =
      __$$TradeCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Map<String, int> buyPrices,
      Map<String, int> sellPrices});
}

/// @nodoc
class __$$TradeCityImplCopyWithImpl<$Res>
    extends _$TradeCityCopyWithImpl<$Res, _$TradeCityImpl>
    implements _$$TradeCityImplCopyWith<$Res> {
  __$$TradeCityImplCopyWithImpl(
      _$TradeCityImpl _value, $Res Function(_$TradeCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? buyPrices = null,
    Object? sellPrices = null,
  }) {
    return _then(_$TradeCityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrices: null == buyPrices
          ? _value._buyPrices
          : buyPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sellPrices: null == sellPrices
          ? _value._sellPrices
          : sellPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeCityImpl implements _TradeCity {
  const _$TradeCityImpl(
      {required this.id,
      required this.name,
      required final Map<String, int> buyPrices,
      required final Map<String, int> sellPrices})
      : _buyPrices = buyPrices,
        _sellPrices = sellPrices;

  factory _$TradeCityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeCityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Map<String, int> _buyPrices;
  @override
  Map<String, int> get buyPrices {
    if (_buyPrices is EqualUnmodifiableMapView) return _buyPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_buyPrices);
  }

  final Map<String, int> _sellPrices;
  @override
  Map<String, int> get sellPrices {
    if (_sellPrices is EqualUnmodifiableMapView) return _sellPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sellPrices);
  }

  @override
  String toString() {
    return 'TradeCity(id: $id, name: $name, buyPrices: $buyPrices, sellPrices: $sellPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeCityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._buyPrices, _buyPrices) &&
            const DeepCollectionEquality()
                .equals(other._sellPrices, _sellPrices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_buyPrices),
      const DeepCollectionEquality().hash(_sellPrices));

  /// Create a copy of TradeCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeCityImplCopyWith<_$TradeCityImpl> get copyWith =>
      __$$TradeCityImplCopyWithImpl<_$TradeCityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeCityImplToJson(
      this,
    );
  }
}

abstract class _TradeCity implements TradeCity {
  const factory _TradeCity(
      {required final String id,
      required final String name,
      required final Map<String, int> buyPrices,
      required final Map<String, int> sellPrices}) = _$TradeCityImpl;

  factory _TradeCity.fromJson(Map<String, dynamic> json) =
      _$TradeCityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, int> get buyPrices;
  @override
  Map<String, int> get sellPrices;

  /// Create a copy of TradeCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeCityImplCopyWith<_$TradeCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeGood _$TradeGoodFromJson(Map<String, dynamic> json) {
  return _TradeGood.fromJson(json);
}

/// @nodoc
mixin _$TradeGood {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this TradeGood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeGoodCopyWith<TradeGood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeGoodCopyWith<$Res> {
  factory $TradeGoodCopyWith(TradeGood value, $Res Function(TradeGood) then) =
      _$TradeGoodCopyWithImpl<$Res, TradeGood>;
  @useResult
  $Res call({String id, String name, int weight});
}

/// @nodoc
class _$TradeGoodCopyWithImpl<$Res, $Val extends TradeGood>
    implements $TradeGoodCopyWith<$Res> {
  _$TradeGoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeGoodImplCopyWith<$Res>
    implements $TradeGoodCopyWith<$Res> {
  factory _$$TradeGoodImplCopyWith(
          _$TradeGoodImpl value, $Res Function(_$TradeGoodImpl) then) =
      __$$TradeGoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int weight});
}

/// @nodoc
class __$$TradeGoodImplCopyWithImpl<$Res>
    extends _$TradeGoodCopyWithImpl<$Res, _$TradeGoodImpl>
    implements _$$TradeGoodImplCopyWith<$Res> {
  __$$TradeGoodImplCopyWithImpl(
      _$TradeGoodImpl _value, $Res Function(_$TradeGoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_$TradeGoodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeGoodImpl implements _TradeGood {
  const _$TradeGoodImpl(
      {required this.id, required this.name, required this.weight});

  factory _$TradeGoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeGoodImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int weight;

  @override
  String toString() {
    return 'TradeGood(id: $id, name: $name, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeGoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight);

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeGoodImplCopyWith<_$TradeGoodImpl> get copyWith =>
      __$$TradeGoodImplCopyWithImpl<_$TradeGoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeGoodImplToJson(
      this,
    );
  }
}

abstract class _TradeGood implements TradeGood {
  const factory _TradeGood(
      {required final String id,
      required final String name,
      required final int weight}) = _$TradeGoodImpl;

  factory _TradeGood.fromJson(Map<String, dynamic> json) =
      _$TradeGoodImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get weight;

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeGoodImplCopyWith<_$TradeGoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
