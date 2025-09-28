// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'npc_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NPCState _$NPCStateFromJson(Map<String, dynamic> json) {
  return _NPCState.fromJson(json);
}

/// @nodoc
mixin _$NPCState {
  List<NPC> get npcs => throw _privateConstructorUsedError;
  List<NPCDialogue> get availableDialogues =>
      throw _privateConstructorUsedError;
  NPCDialogue? get currentDialogue => throw _privateConstructorUsedError;
  String? get currentNodeId => throw _privateConstructorUsedError;
  bool get isInDialogue => throw _privateConstructorUsedError;

  /// Serializes this NPCState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NPCStateCopyWith<NPCState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NPCStateCopyWith<$Res> {
  factory $NPCStateCopyWith(NPCState value, $Res Function(NPCState) then) =
      _$NPCStateCopyWithImpl<$Res, NPCState>;
  @useResult
  $Res call(
      {List<NPC> npcs,
      List<NPCDialogue> availableDialogues,
      NPCDialogue? currentDialogue,
      String? currentNodeId,
      bool isInDialogue});

  $NPCDialogueCopyWith<$Res>? get currentDialogue;
}

/// @nodoc
class _$NPCStateCopyWithImpl<$Res, $Val extends NPCState>
    implements $NPCStateCopyWith<$Res> {
  _$NPCStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? npcs = null,
    Object? availableDialogues = null,
    Object? currentDialogue = freezed,
    Object? currentNodeId = freezed,
    Object? isInDialogue = null,
  }) {
    return _then(_value.copyWith(
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<NPC>,
      availableDialogues: null == availableDialogues
          ? _value.availableDialogues
          : availableDialogues // ignore: cast_nullable_to_non_nullable
              as List<NPCDialogue>,
      currentDialogue: freezed == currentDialogue
          ? _value.currentDialogue
          : currentDialogue // ignore: cast_nullable_to_non_nullable
              as NPCDialogue?,
      currentNodeId: freezed == currentNodeId
          ? _value.currentNodeId
          : currentNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isInDialogue: null == isInDialogue
          ? _value.isInDialogue
          : isInDialogue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NPCDialogueCopyWith<$Res>? get currentDialogue {
    if (_value.currentDialogue == null) {
      return null;
    }

    return $NPCDialogueCopyWith<$Res>(_value.currentDialogue!, (value) {
      return _then(_value.copyWith(currentDialogue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NPCStateImplCopyWith<$Res>
    implements $NPCStateCopyWith<$Res> {
  factory _$$NPCStateImplCopyWith(
          _$NPCStateImpl value, $Res Function(_$NPCStateImpl) then) =
      __$$NPCStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NPC> npcs,
      List<NPCDialogue> availableDialogues,
      NPCDialogue? currentDialogue,
      String? currentNodeId,
      bool isInDialogue});

  @override
  $NPCDialogueCopyWith<$Res>? get currentDialogue;
}

/// @nodoc
class __$$NPCStateImplCopyWithImpl<$Res>
    extends _$NPCStateCopyWithImpl<$Res, _$NPCStateImpl>
    implements _$$NPCStateImplCopyWith<$Res> {
  __$$NPCStateImplCopyWithImpl(
      _$NPCStateImpl _value, $Res Function(_$NPCStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? npcs = null,
    Object? availableDialogues = null,
    Object? currentDialogue = freezed,
    Object? currentNodeId = freezed,
    Object? isInDialogue = null,
  }) {
    return _then(_$NPCStateImpl(
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<NPC>,
      availableDialogues: null == availableDialogues
          ? _value._availableDialogues
          : availableDialogues // ignore: cast_nullable_to_non_nullable
              as List<NPCDialogue>,
      currentDialogue: freezed == currentDialogue
          ? _value.currentDialogue
          : currentDialogue // ignore: cast_nullable_to_non_nullable
              as NPCDialogue?,
      currentNodeId: freezed == currentNodeId
          ? _value.currentNodeId
          : currentNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isInDialogue: null == isInDialogue
          ? _value.isInDialogue
          : isInDialogue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NPCStateImpl implements _NPCState {
  const _$NPCStateImpl(
      {final List<NPC> npcs = const [],
      final List<NPCDialogue> availableDialogues = const [],
      this.currentDialogue,
      this.currentNodeId,
      this.isInDialogue = false})
      : _npcs = npcs,
        _availableDialogues = availableDialogues;

  factory _$NPCStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NPCStateImplFromJson(json);

  final List<NPC> _npcs;
  @override
  @JsonKey()
  List<NPC> get npcs {
    if (_npcs is EqualUnmodifiableListView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_npcs);
  }

  final List<NPCDialogue> _availableDialogues;
  @override
  @JsonKey()
  List<NPCDialogue> get availableDialogues {
    if (_availableDialogues is EqualUnmodifiableListView)
      return _availableDialogues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDialogues);
  }

  @override
  final NPCDialogue? currentDialogue;
  @override
  final String? currentNodeId;
  @override
  @JsonKey()
  final bool isInDialogue;

  @override
  String toString() {
    return 'NPCState(npcs: $npcs, availableDialogues: $availableDialogues, currentDialogue: $currentDialogue, currentNodeId: $currentNodeId, isInDialogue: $isInDialogue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NPCStateImpl &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality()
                .equals(other._availableDialogues, _availableDialogues) &&
            (identical(other.currentDialogue, currentDialogue) ||
                other.currentDialogue == currentDialogue) &&
            (identical(other.currentNodeId, currentNodeId) ||
                other.currentNodeId == currentNodeId) &&
            (identical(other.isInDialogue, isInDialogue) ||
                other.isInDialogue == isInDialogue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_availableDialogues),
      currentDialogue,
      currentNodeId,
      isInDialogue);

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NPCStateImplCopyWith<_$NPCStateImpl> get copyWith =>
      __$$NPCStateImplCopyWithImpl<_$NPCStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NPCStateImplToJson(
      this,
    );
  }
}

abstract class _NPCState implements NPCState {
  const factory _NPCState(
      {final List<NPC> npcs,
      final List<NPCDialogue> availableDialogues,
      final NPCDialogue? currentDialogue,
      final String? currentNodeId,
      final bool isInDialogue}) = _$NPCStateImpl;

  factory _NPCState.fromJson(Map<String, dynamic> json) =
      _$NPCStateImpl.fromJson;

  @override
  List<NPC> get npcs;
  @override
  List<NPCDialogue> get availableDialogues;
  @override
  NPCDialogue? get currentDialogue;
  @override
  String? get currentNodeId;
  @override
  bool get isInDialogue;

  /// Create a copy of NPCState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NPCStateImplCopyWith<_$NPCStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
