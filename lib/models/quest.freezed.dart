// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quest _$QuestFromJson(Map<String, dynamic> json) {
  return _Quest.fromJson(json);
}

/// @nodoc
mixin _$Quest {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  QuestType get type => throw _privateConstructorUsedError;
  QuestDifficulty get difficulty => throw _privateConstructorUsedError;
  List<QuestObjective> get objectives => throw _privateConstructorUsedError;
  List<QuestReward> get rewards => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  String get economicConcept => throw _privateConstructorUsedError;
  String get learningObjective => throw _privateConstructorUsedError;
  QuestStatus get status => throw _privateConstructorUsedError;
  List<String> get completedObjectives => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isStarted => throw _privateConstructorUsedError;
  String? get giver => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get timeLimit => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;

  /// Serializes this Quest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestCopyWith<Quest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestCopyWith<$Res> {
  factory $QuestCopyWith(Quest value, $Res Function(Quest) then) =
      _$QuestCopyWithImpl<$Res, Quest>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuestType type,
      QuestDifficulty difficulty,
      List<QuestObjective> objectives,
      List<QuestReward> rewards,
      List<String> prerequisites,
      String economicConcept,
      String learningObjective,
      QuestStatus status,
      List<String> completedObjectives,
      bool isCompleted,
      bool isStarted,
      String? giver,
      String? location,
      int? timeLimit,
      String? hint});
}

/// @nodoc
class _$QuestCopyWithImpl<$Res, $Val extends Quest>
    implements $QuestCopyWith<$Res> {
  _$QuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? objectives = null,
    Object? rewards = null,
    Object? prerequisites = null,
    Object? economicConcept = null,
    Object? learningObjective = null,
    Object? status = null,
    Object? completedObjectives = null,
    Object? isCompleted = null,
    Object? isStarted = null,
    Object? giver = freezed,
    Object? location = freezed,
    Object? timeLimit = freezed,
    Object? hint = freezed,
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
              as QuestType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuestDifficulty,
      objectives: null == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<QuestObjective>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<QuestReward>,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      economicConcept: null == economicConcept
          ? _value.economicConcept
          : economicConcept // ignore: cast_nullable_to_non_nullable
              as String,
      learningObjective: null == learningObjective
          ? _value.learningObjective
          : learningObjective // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestStatus,
      completedObjectives: null == completedObjectives
          ? _value.completedObjectives
          : completedObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isStarted: null == isStarted
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      giver: freezed == giver
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestImplCopyWith<$Res> implements $QuestCopyWith<$Res> {
  factory _$$QuestImplCopyWith(
          _$QuestImpl value, $Res Function(_$QuestImpl) then) =
      __$$QuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuestType type,
      QuestDifficulty difficulty,
      List<QuestObjective> objectives,
      List<QuestReward> rewards,
      List<String> prerequisites,
      String economicConcept,
      String learningObjective,
      QuestStatus status,
      List<String> completedObjectives,
      bool isCompleted,
      bool isStarted,
      String? giver,
      String? location,
      int? timeLimit,
      String? hint});
}

/// @nodoc
class __$$QuestImplCopyWithImpl<$Res>
    extends _$QuestCopyWithImpl<$Res, _$QuestImpl>
    implements _$$QuestImplCopyWith<$Res> {
  __$$QuestImplCopyWithImpl(
      _$QuestImpl _value, $Res Function(_$QuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? objectives = null,
    Object? rewards = null,
    Object? prerequisites = null,
    Object? economicConcept = null,
    Object? learningObjective = null,
    Object? status = null,
    Object? completedObjectives = null,
    Object? isCompleted = null,
    Object? isStarted = null,
    Object? giver = freezed,
    Object? location = freezed,
    Object? timeLimit = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$QuestImpl(
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
              as QuestType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuestDifficulty,
      objectives: null == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<QuestObjective>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<QuestReward>,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      economicConcept: null == economicConcept
          ? _value.economicConcept
          : economicConcept // ignore: cast_nullable_to_non_nullable
              as String,
      learningObjective: null == learningObjective
          ? _value.learningObjective
          : learningObjective // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestStatus,
      completedObjectives: null == completedObjectives
          ? _value._completedObjectives
          : completedObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isStarted: null == isStarted
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      giver: freezed == giver
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestImpl implements _Quest {
  const _$QuestImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.difficulty,
      required final List<QuestObjective> objectives,
      required final List<QuestReward> rewards,
      required final List<String> prerequisites,
      required this.economicConcept,
      required this.learningObjective,
      this.status = QuestStatus.available,
      final List<String> completedObjectives = const [],
      this.isCompleted = false,
      this.isStarted = false,
      this.giver,
      this.location,
      this.timeLimit,
      this.hint})
      : _objectives = objectives,
        _rewards = rewards,
        _prerequisites = prerequisites,
        _completedObjectives = completedObjectives;

  factory _$QuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final QuestType type;
  @override
  final QuestDifficulty difficulty;
  final List<QuestObjective> _objectives;
  @override
  List<QuestObjective> get objectives {
    if (_objectives is EqualUnmodifiableListView) return _objectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objectives);
  }

  final List<QuestReward> _rewards;
  @override
  List<QuestReward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  final List<String> _prerequisites;
  @override
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  @override
  final String economicConcept;
  @override
  final String learningObjective;
  @override
  @JsonKey()
  final QuestStatus status;
  final List<String> _completedObjectives;
  @override
  @JsonKey()
  List<String> get completedObjectives {
    if (_completedObjectives is EqualUnmodifiableListView)
      return _completedObjectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedObjectives);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool isStarted;
  @override
  final String? giver;
  @override
  final String? location;
  @override
  final int? timeLimit;
  @override
  final String? hint;

  @override
  String toString() {
    return 'Quest(id: $id, title: $title, description: $description, type: $type, difficulty: $difficulty, objectives: $objectives, rewards: $rewards, prerequisites: $prerequisites, economicConcept: $economicConcept, learningObjective: $learningObjective, status: $status, completedObjectives: $completedObjectives, isCompleted: $isCompleted, isStarted: $isStarted, giver: $giver, location: $location, timeLimit: $timeLimit, hint: $hint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            (identical(other.economicConcept, economicConcept) ||
                other.economicConcept == economicConcept) &&
            (identical(other.learningObjective, learningObjective) ||
                other.learningObjective == learningObjective) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._completedObjectives, _completedObjectives) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isStarted, isStarted) ||
                other.isStarted == isStarted) &&
            (identical(other.giver, giver) || other.giver == giver) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.hint, hint) || other.hint == hint));
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
      const DeepCollectionEquality().hash(_objectives),
      const DeepCollectionEquality().hash(_rewards),
      const DeepCollectionEquality().hash(_prerequisites),
      economicConcept,
      learningObjective,
      status,
      const DeepCollectionEquality().hash(_completedObjectives),
      isCompleted,
      isStarted,
      giver,
      location,
      timeLimit,
      hint);

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestImplCopyWith<_$QuestImpl> get copyWith =>
      __$$QuestImplCopyWithImpl<_$QuestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestImplToJson(
      this,
    );
  }
}

abstract class _Quest implements Quest {
  const factory _Quest(
      {required final String id,
      required final String title,
      required final String description,
      required final QuestType type,
      required final QuestDifficulty difficulty,
      required final List<QuestObjective> objectives,
      required final List<QuestReward> rewards,
      required final List<String> prerequisites,
      required final String economicConcept,
      required final String learningObjective,
      final QuestStatus status,
      final List<String> completedObjectives,
      final bool isCompleted,
      final bool isStarted,
      final String? giver,
      final String? location,
      final int? timeLimit,
      final String? hint}) = _$QuestImpl;

  factory _Quest.fromJson(Map<String, dynamic> json) = _$QuestImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  QuestType get type;
  @override
  QuestDifficulty get difficulty;
  @override
  List<QuestObjective> get objectives;
  @override
  List<QuestReward> get rewards;
  @override
  List<String> get prerequisites;
  @override
  String get economicConcept;
  @override
  String get learningObjective;
  @override
  QuestStatus get status;
  @override
  List<String> get completedObjectives;
  @override
  bool get isCompleted;
  @override
  bool get isStarted;
  @override
  String? get giver;
  @override
  String? get location;
  @override
  int? get timeLimit;
  @override
  String? get hint;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestImplCopyWith<_$QuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestObjective _$QuestObjectiveFromJson(Map<String, dynamic> json) {
  return _QuestObjective.fromJson(json);
}

/// @nodoc
mixin _$QuestObjective {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ObjectiveType get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int? get currentProgress => throw _privateConstructorUsedError;
  int? get targetProgress => throw _privateConstructorUsedError;

  /// Serializes this QuestObjective to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestObjective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestObjectiveCopyWith<QuestObjective> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestObjectiveCopyWith<$Res> {
  factory $QuestObjectiveCopyWith(
          QuestObjective value, $Res Function(QuestObjective) then) =
      _$QuestObjectiveCopyWithImpl<$Res, QuestObjective>;
  @useResult
  $Res call(
      {String id,
      String description,
      ObjectiveType type,
      Map<String, dynamic> parameters,
      bool isCompleted,
      int? currentProgress,
      int? targetProgress});
}

/// @nodoc
class _$QuestObjectiveCopyWithImpl<$Res, $Val extends QuestObjective>
    implements $QuestObjectiveCopyWith<$Res> {
  _$QuestObjectiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestObjective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? type = null,
    Object? parameters = null,
    Object? isCompleted = null,
    Object? currentProgress = freezed,
    Object? targetProgress = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ObjectiveType,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProgress: freezed == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as int?,
      targetProgress: freezed == targetProgress
          ? _value.targetProgress
          : targetProgress // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestObjectiveImplCopyWith<$Res>
    implements $QuestObjectiveCopyWith<$Res> {
  factory _$$QuestObjectiveImplCopyWith(_$QuestObjectiveImpl value,
          $Res Function(_$QuestObjectiveImpl) then) =
      __$$QuestObjectiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      ObjectiveType type,
      Map<String, dynamic> parameters,
      bool isCompleted,
      int? currentProgress,
      int? targetProgress});
}

/// @nodoc
class __$$QuestObjectiveImplCopyWithImpl<$Res>
    extends _$QuestObjectiveCopyWithImpl<$Res, _$QuestObjectiveImpl>
    implements _$$QuestObjectiveImplCopyWith<$Res> {
  __$$QuestObjectiveImplCopyWithImpl(
      _$QuestObjectiveImpl _value, $Res Function(_$QuestObjectiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestObjective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? type = null,
    Object? parameters = null,
    Object? isCompleted = null,
    Object? currentProgress = freezed,
    Object? targetProgress = freezed,
  }) {
    return _then(_$QuestObjectiveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ObjectiveType,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProgress: freezed == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as int?,
      targetProgress: freezed == targetProgress
          ? _value.targetProgress
          : targetProgress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestObjectiveImpl implements _QuestObjective {
  const _$QuestObjectiveImpl(
      {required this.id,
      required this.description,
      required this.type,
      required final Map<String, dynamic> parameters,
      this.isCompleted = false,
      this.currentProgress,
      this.targetProgress})
      : _parameters = parameters;

  factory _$QuestObjectiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestObjectiveImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final ObjectiveType type;
  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final int? currentProgress;
  @override
  final int? targetProgress;

  @override
  String toString() {
    return 'QuestObjective(id: $id, description: $description, type: $type, parameters: $parameters, isCompleted: $isCompleted, currentProgress: $currentProgress, targetProgress: $targetProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestObjectiveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.targetProgress, targetProgress) ||
                other.targetProgress == targetProgress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      type,
      const DeepCollectionEquality().hash(_parameters),
      isCompleted,
      currentProgress,
      targetProgress);

  /// Create a copy of QuestObjective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestObjectiveImplCopyWith<_$QuestObjectiveImpl> get copyWith =>
      __$$QuestObjectiveImplCopyWithImpl<_$QuestObjectiveImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestObjectiveImplToJson(
      this,
    );
  }
}

abstract class _QuestObjective implements QuestObjective {
  const factory _QuestObjective(
      {required final String id,
      required final String description,
      required final ObjectiveType type,
      required final Map<String, dynamic> parameters,
      final bool isCompleted,
      final int? currentProgress,
      final int? targetProgress}) = _$QuestObjectiveImpl;

  factory _QuestObjective.fromJson(Map<String, dynamic> json) =
      _$QuestObjectiveImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  ObjectiveType get type;
  @override
  Map<String, dynamic> get parameters;
  @override
  bool get isCompleted;
  @override
  int? get currentProgress;
  @override
  int? get targetProgress;

  /// Create a copy of QuestObjective
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestObjectiveImplCopyWith<_$QuestObjectiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestReward _$QuestRewardFromJson(Map<String, dynamic> json) {
  return _QuestReward.fromJson(json);
}

/// @nodoc
mixin _$QuestReward {
  RewardType get type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get skillType => throw _privateConstructorUsedError;

  /// Serializes this QuestReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestRewardCopyWith<QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestRewardCopyWith<$Res> {
  factory $QuestRewardCopyWith(
          QuestReward value, $Res Function(QuestReward) then) =
      _$QuestRewardCopyWithImpl<$Res, QuestReward>;
  @useResult
  $Res call({RewardType type, int amount, String? itemId, String? skillType});
}

/// @nodoc
class _$QuestRewardCopyWithImpl<$Res, $Val extends QuestReward>
    implements $QuestRewardCopyWith<$Res> {
  _$QuestRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? itemId = freezed,
    Object? skillType = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      skillType: freezed == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestRewardImplCopyWith<$Res>
    implements $QuestRewardCopyWith<$Res> {
  factory _$$QuestRewardImplCopyWith(
          _$QuestRewardImpl value, $Res Function(_$QuestRewardImpl) then) =
      __$$QuestRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardType type, int amount, String? itemId, String? skillType});
}

/// @nodoc
class __$$QuestRewardImplCopyWithImpl<$Res>
    extends _$QuestRewardCopyWithImpl<$Res, _$QuestRewardImpl>
    implements _$$QuestRewardImplCopyWith<$Res> {
  __$$QuestRewardImplCopyWithImpl(
      _$QuestRewardImpl _value, $Res Function(_$QuestRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? itemId = freezed,
    Object? skillType = freezed,
  }) {
    return _then(_$QuestRewardImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      skillType: freezed == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestRewardImpl implements _QuestReward {
  const _$QuestRewardImpl(
      {required this.type, required this.amount, this.itemId, this.skillType});

  factory _$QuestRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestRewardImplFromJson(json);

  @override
  final RewardType type;
  @override
  final int amount;
  @override
  final String? itemId;
  @override
  final String? skillType;

  @override
  String toString() {
    return 'QuestReward(type: $type, amount: $amount, itemId: $itemId, skillType: $skillType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.skillType, skillType) ||
                other.skillType == skillType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount, itemId, skillType);

  /// Create a copy of QuestReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestRewardImplCopyWith<_$QuestRewardImpl> get copyWith =>
      __$$QuestRewardImplCopyWithImpl<_$QuestRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestRewardImplToJson(
      this,
    );
  }
}

abstract class _QuestReward implements QuestReward {
  const factory _QuestReward(
      {required final RewardType type,
      required final int amount,
      final String? itemId,
      final String? skillType}) = _$QuestRewardImpl;

  factory _QuestReward.fromJson(Map<String, dynamic> json) =
      _$QuestRewardImpl.fromJson;

  @override
  RewardType get type;
  @override
  int get amount;
  @override
  String? get itemId;
  @override
  String? get skillType;

  /// Create a copy of QuestReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestRewardImplCopyWith<_$QuestRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
