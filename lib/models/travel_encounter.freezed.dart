// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_encounter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelEncounter _$TravelEncounterFromJson(Map<String, dynamic> json) {
  return _TravelEncounter.fromJson(json);
}

/// @nodoc
mixin _$TravelEncounter {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EncounterType get type => throw _privateConstructorUsedError;
  List<EncounterChoice> get choices => throw _privateConstructorUsedError;
  String? get economicLesson => throw _privateConstructorUsedError;

  /// Serializes this TravelEncounter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelEncounterCopyWith<TravelEncounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelEncounterCopyWith<$Res> {
  factory $TravelEncounterCopyWith(
          TravelEncounter value, $Res Function(TravelEncounter) then) =
      _$TravelEncounterCopyWithImpl<$Res, TravelEncounter>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      EncounterType type,
      List<EncounterChoice> choices,
      String? economicLesson});
}

/// @nodoc
class _$TravelEncounterCopyWithImpl<$Res, $Val extends TravelEncounter>
    implements $TravelEncounterCopyWith<$Res> {
  _$TravelEncounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? choices = null,
    Object? economicLesson = freezed,
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
              as EncounterType,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<EncounterChoice>,
      economicLesson: freezed == economicLesson
          ? _value.economicLesson
          : economicLesson // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelEncounterImplCopyWith<$Res>
    implements $TravelEncounterCopyWith<$Res> {
  factory _$$TravelEncounterImplCopyWith(_$TravelEncounterImpl value,
          $Res Function(_$TravelEncounterImpl) then) =
      __$$TravelEncounterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      EncounterType type,
      List<EncounterChoice> choices,
      String? economicLesson});
}

/// @nodoc
class __$$TravelEncounterImplCopyWithImpl<$Res>
    extends _$TravelEncounterCopyWithImpl<$Res, _$TravelEncounterImpl>
    implements _$$TravelEncounterImplCopyWith<$Res> {
  __$$TravelEncounterImplCopyWithImpl(
      _$TravelEncounterImpl _value, $Res Function(_$TravelEncounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? choices = null,
    Object? economicLesson = freezed,
  }) {
    return _then(_$TravelEncounterImpl(
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
              as EncounterType,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<EncounterChoice>,
      economicLesson: freezed == economicLesson
          ? _value.economicLesson
          : economicLesson // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelEncounterImpl implements _TravelEncounter {
  const _$TravelEncounterImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required final List<EncounterChoice> choices,
      this.economicLesson})
      : _choices = choices;

  factory _$TravelEncounterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelEncounterImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final EncounterType type;
  final List<EncounterChoice> _choices;
  @override
  List<EncounterChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String? economicLesson;

  @override
  String toString() {
    return 'TravelEncounter(id: $id, title: $title, description: $description, type: $type, choices: $choices, economicLesson: $economicLesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelEncounterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.economicLesson, economicLesson) ||
                other.economicLesson == economicLesson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      const DeepCollectionEquality().hash(_choices), economicLesson);

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelEncounterImplCopyWith<_$TravelEncounterImpl> get copyWith =>
      __$$TravelEncounterImplCopyWithImpl<_$TravelEncounterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelEncounterImplToJson(
      this,
    );
  }
}

abstract class _TravelEncounter implements TravelEncounter {
  const factory _TravelEncounter(
      {required final String id,
      required final String title,
      required final String description,
      required final EncounterType type,
      required final List<EncounterChoice> choices,
      final String? economicLesson}) = _$TravelEncounterImpl;

  factory _TravelEncounter.fromJson(Map<String, dynamic> json) =
      _$TravelEncounterImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  EncounterType get type;
  @override
  List<EncounterChoice> get choices;
  @override
  String? get economicLesson;

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelEncounterImplCopyWith<_$TravelEncounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncounterChoice _$EncounterChoiceFromJson(Map<String, dynamic> json) {
  return _EncounterChoice.fromJson(json);
}

/// @nodoc
mixin _$EncounterChoice {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  EncounterOutcome get outcome => throw _privateConstructorUsedError;

  /// Serializes this EncounterChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncounterChoiceCopyWith<EncounterChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterChoiceCopyWith<$Res> {
  factory $EncounterChoiceCopyWith(
          EncounterChoice value, $Res Function(EncounterChoice) then) =
      _$EncounterChoiceCopyWithImpl<$Res, EncounterChoice>;
  @useResult
  $Res call({String id, String text, EncounterOutcome outcome});

  $EncounterOutcomeCopyWith<$Res> get outcome;
}

/// @nodoc
class _$EncounterChoiceCopyWithImpl<$Res, $Val extends EncounterChoice>
    implements $EncounterChoiceCopyWith<$Res> {
  _$EncounterChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? outcome = null,
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
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as EncounterOutcome,
    ) as $Val);
  }

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncounterOutcomeCopyWith<$Res> get outcome {
    return $EncounterOutcomeCopyWith<$Res>(_value.outcome, (value) {
      return _then(_value.copyWith(outcome: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncounterChoiceImplCopyWith<$Res>
    implements $EncounterChoiceCopyWith<$Res> {
  factory _$$EncounterChoiceImplCopyWith(_$EncounterChoiceImpl value,
          $Res Function(_$EncounterChoiceImpl) then) =
      __$$EncounterChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, EncounterOutcome outcome});

  @override
  $EncounterOutcomeCopyWith<$Res> get outcome;
}

/// @nodoc
class __$$EncounterChoiceImplCopyWithImpl<$Res>
    extends _$EncounterChoiceCopyWithImpl<$Res, _$EncounterChoiceImpl>
    implements _$$EncounterChoiceImplCopyWith<$Res> {
  __$$EncounterChoiceImplCopyWithImpl(
      _$EncounterChoiceImpl _value, $Res Function(_$EncounterChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? outcome = null,
  }) {
    return _then(_$EncounterChoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as EncounterOutcome,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterChoiceImpl implements _EncounterChoice {
  const _$EncounterChoiceImpl(
      {required this.id, required this.text, required this.outcome});

  factory _$EncounterChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterChoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final EncounterOutcome outcome;

  @override
  String toString() {
    return 'EncounterChoice(id: $id, text: $text, outcome: $outcome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.outcome, outcome) || other.outcome == outcome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, outcome);

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterChoiceImplCopyWith<_$EncounterChoiceImpl> get copyWith =>
      __$$EncounterChoiceImplCopyWithImpl<_$EncounterChoiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterChoiceImplToJson(
      this,
    );
  }
}

abstract class _EncounterChoice implements EncounterChoice {
  const factory _EncounterChoice(
      {required final String id,
      required final String text,
      required final EncounterOutcome outcome}) = _$EncounterChoiceImpl;

  factory _EncounterChoice.fromJson(Map<String, dynamic> json) =
      _$EncounterChoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  EncounterOutcome get outcome;

  /// Create a copy of EncounterChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncounterChoiceImplCopyWith<_$EncounterChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncounterOutcome _$EncounterOutcomeFromJson(Map<String, dynamic> json) {
  return _EncounterOutcome.fromJson(json);
}

/// @nodoc
mixin _$EncounterOutcome {
  String get resultText => throw _privateConstructorUsedError;
  int? get drachmaeChange =>
      throw _privateConstructorUsedError; // Positive = gain, negative = loss
  int? get healthChange => throw _privateConstructorUsedError;
  int? get energyChange => throw _privateConstructorUsedError;
  Map<String, int>? get reputationChanges =>
      throw _privateConstructorUsedError; // faction -> change amount
  String? get itemGained => throw _privateConstructorUsedError;
  String? get itemLost => throw _privateConstructorUsedError;

  /// Serializes this EncounterOutcome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncounterOutcomeCopyWith<EncounterOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterOutcomeCopyWith<$Res> {
  factory $EncounterOutcomeCopyWith(
          EncounterOutcome value, $Res Function(EncounterOutcome) then) =
      _$EncounterOutcomeCopyWithImpl<$Res, EncounterOutcome>;
  @useResult
  $Res call(
      {String resultText,
      int? drachmaeChange,
      int? healthChange,
      int? energyChange,
      Map<String, int>? reputationChanges,
      String? itemGained,
      String? itemLost});
}

/// @nodoc
class _$EncounterOutcomeCopyWithImpl<$Res, $Val extends EncounterOutcome>
    implements $EncounterOutcomeCopyWith<$Res> {
  _$EncounterOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultText = null,
    Object? drachmaeChange = freezed,
    Object? healthChange = freezed,
    Object? energyChange = freezed,
    Object? reputationChanges = freezed,
    Object? itemGained = freezed,
    Object? itemLost = freezed,
  }) {
    return _then(_value.copyWith(
      resultText: null == resultText
          ? _value.resultText
          : resultText // ignore: cast_nullable_to_non_nullable
              as String,
      drachmaeChange: freezed == drachmaeChange
          ? _value.drachmaeChange
          : drachmaeChange // ignore: cast_nullable_to_non_nullable
              as int?,
      healthChange: freezed == healthChange
          ? _value.healthChange
          : healthChange // ignore: cast_nullable_to_non_nullable
              as int?,
      energyChange: freezed == energyChange
          ? _value.energyChange
          : energyChange // ignore: cast_nullable_to_non_nullable
              as int?,
      reputationChanges: freezed == reputationChanges
          ? _value.reputationChanges
          : reputationChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      itemGained: freezed == itemGained
          ? _value.itemGained
          : itemGained // ignore: cast_nullable_to_non_nullable
              as String?,
      itemLost: freezed == itemLost
          ? _value.itemLost
          : itemLost // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncounterOutcomeImplCopyWith<$Res>
    implements $EncounterOutcomeCopyWith<$Res> {
  factory _$$EncounterOutcomeImplCopyWith(_$EncounterOutcomeImpl value,
          $Res Function(_$EncounterOutcomeImpl) then) =
      __$$EncounterOutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String resultText,
      int? drachmaeChange,
      int? healthChange,
      int? energyChange,
      Map<String, int>? reputationChanges,
      String? itemGained,
      String? itemLost});
}

/// @nodoc
class __$$EncounterOutcomeImplCopyWithImpl<$Res>
    extends _$EncounterOutcomeCopyWithImpl<$Res, _$EncounterOutcomeImpl>
    implements _$$EncounterOutcomeImplCopyWith<$Res> {
  __$$EncounterOutcomeImplCopyWithImpl(_$EncounterOutcomeImpl _value,
      $Res Function(_$EncounterOutcomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultText = null,
    Object? drachmaeChange = freezed,
    Object? healthChange = freezed,
    Object? energyChange = freezed,
    Object? reputationChanges = freezed,
    Object? itemGained = freezed,
    Object? itemLost = freezed,
  }) {
    return _then(_$EncounterOutcomeImpl(
      resultText: null == resultText
          ? _value.resultText
          : resultText // ignore: cast_nullable_to_non_nullable
              as String,
      drachmaeChange: freezed == drachmaeChange
          ? _value.drachmaeChange
          : drachmaeChange // ignore: cast_nullable_to_non_nullable
              as int?,
      healthChange: freezed == healthChange
          ? _value.healthChange
          : healthChange // ignore: cast_nullable_to_non_nullable
              as int?,
      energyChange: freezed == energyChange
          ? _value.energyChange
          : energyChange // ignore: cast_nullable_to_non_nullable
              as int?,
      reputationChanges: freezed == reputationChanges
          ? _value._reputationChanges
          : reputationChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      itemGained: freezed == itemGained
          ? _value.itemGained
          : itemGained // ignore: cast_nullable_to_non_nullable
              as String?,
      itemLost: freezed == itemLost
          ? _value.itemLost
          : itemLost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterOutcomeImpl implements _EncounterOutcome {
  const _$EncounterOutcomeImpl(
      {required this.resultText,
      this.drachmaeChange,
      this.healthChange,
      this.energyChange,
      final Map<String, int>? reputationChanges,
      this.itemGained,
      this.itemLost})
      : _reputationChanges = reputationChanges;

  factory _$EncounterOutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterOutcomeImplFromJson(json);

  @override
  final String resultText;
  @override
  final int? drachmaeChange;
// Positive = gain, negative = loss
  @override
  final int? healthChange;
  @override
  final int? energyChange;
  final Map<String, int>? _reputationChanges;
  @override
  Map<String, int>? get reputationChanges {
    final value = _reputationChanges;
    if (value == null) return null;
    if (_reputationChanges is EqualUnmodifiableMapView)
      return _reputationChanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// faction -> change amount
  @override
  final String? itemGained;
  @override
  final String? itemLost;

  @override
  String toString() {
    return 'EncounterOutcome(resultText: $resultText, drachmaeChange: $drachmaeChange, healthChange: $healthChange, energyChange: $energyChange, reputationChanges: $reputationChanges, itemGained: $itemGained, itemLost: $itemLost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterOutcomeImpl &&
            (identical(other.resultText, resultText) ||
                other.resultText == resultText) &&
            (identical(other.drachmaeChange, drachmaeChange) ||
                other.drachmaeChange == drachmaeChange) &&
            (identical(other.healthChange, healthChange) ||
                other.healthChange == healthChange) &&
            (identical(other.energyChange, energyChange) ||
                other.energyChange == energyChange) &&
            const DeepCollectionEquality()
                .equals(other._reputationChanges, _reputationChanges) &&
            (identical(other.itemGained, itemGained) ||
                other.itemGained == itemGained) &&
            (identical(other.itemLost, itemLost) ||
                other.itemLost == itemLost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      resultText,
      drachmaeChange,
      healthChange,
      energyChange,
      const DeepCollectionEquality().hash(_reputationChanges),
      itemGained,
      itemLost);

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterOutcomeImplCopyWith<_$EncounterOutcomeImpl> get copyWith =>
      __$$EncounterOutcomeImplCopyWithImpl<_$EncounterOutcomeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterOutcomeImplToJson(
      this,
    );
  }
}

abstract class _EncounterOutcome implements EncounterOutcome {
  const factory _EncounterOutcome(
      {required final String resultText,
      final int? drachmaeChange,
      final int? healthChange,
      final int? energyChange,
      final Map<String, int>? reputationChanges,
      final String? itemGained,
      final String? itemLost}) = _$EncounterOutcomeImpl;

  factory _EncounterOutcome.fromJson(Map<String, dynamic> json) =
      _$EncounterOutcomeImpl.fromJson;

  @override
  String get resultText;
  @override
  int? get drachmaeChange; // Positive = gain, negative = loss
  @override
  int? get healthChange;
  @override
  int? get energyChange;
  @override
  Map<String, int>? get reputationChanges; // faction -> change amount
  @override
  String? get itemGained;
  @override
  String? get itemLost;

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncounterOutcomeImplCopyWith<_$EncounterOutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
