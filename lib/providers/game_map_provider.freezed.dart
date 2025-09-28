// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_map_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameMapState _$GameMapStateFromJson(Map<String, dynamic> json) {
  return _GameMapState.fromJson(json);
}

/// @nodoc
mixin _$GameMapState {
  List<GameLocation> get locations => throw _privateConstructorUsedError;
  String get currentLocationId => throw _privateConstructorUsedError;
  List<String> get unlockedLocationIds => throw _privateConstructorUsedError;
  bool get isJourneyInProgress => throw _privateConstructorUsedError;
  PlayerJourney? get currentJourney => throw _privateConstructorUsedError;
  String? get shouldNavigateToLocation => throw _privateConstructorUsedError;

  /// Serializes this GameMapState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameMapStateCopyWith<GameMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMapStateCopyWith<$Res> {
  factory $GameMapStateCopyWith(
          GameMapState value, $Res Function(GameMapState) then) =
      _$GameMapStateCopyWithImpl<$Res, GameMapState>;
  @useResult
  $Res call(
      {List<GameLocation> locations,
      String currentLocationId,
      List<String> unlockedLocationIds,
      bool isJourneyInProgress,
      PlayerJourney? currentJourney,
      String? shouldNavigateToLocation});

  $PlayerJourneyCopyWith<$Res>? get currentJourney;
}

/// @nodoc
class _$GameMapStateCopyWithImpl<$Res, $Val extends GameMapState>
    implements $GameMapStateCopyWith<$Res> {
  _$GameMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? currentLocationId = null,
    Object? unlockedLocationIds = null,
    Object? isJourneyInProgress = null,
    Object? currentJourney = freezed,
    Object? shouldNavigateToLocation = freezed,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<GameLocation>,
      currentLocationId: null == currentLocationId
          ? _value.currentLocationId
          : currentLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      unlockedLocationIds: null == unlockedLocationIds
          ? _value.unlockedLocationIds
          : unlockedLocationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isJourneyInProgress: null == isJourneyInProgress
          ? _value.isJourneyInProgress
          : isJourneyInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      currentJourney: freezed == currentJourney
          ? _value.currentJourney
          : currentJourney // ignore: cast_nullable_to_non_nullable
              as PlayerJourney?,
      shouldNavigateToLocation: freezed == shouldNavigateToLocation
          ? _value.shouldNavigateToLocation
          : shouldNavigateToLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerJourneyCopyWith<$Res>? get currentJourney {
    if (_value.currentJourney == null) {
      return null;
    }

    return $PlayerJourneyCopyWith<$Res>(_value.currentJourney!, (value) {
      return _then(_value.copyWith(currentJourney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameMapStateImplCopyWith<$Res>
    implements $GameMapStateCopyWith<$Res> {
  factory _$$GameMapStateImplCopyWith(
          _$GameMapStateImpl value, $Res Function(_$GameMapStateImpl) then) =
      __$$GameMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GameLocation> locations,
      String currentLocationId,
      List<String> unlockedLocationIds,
      bool isJourneyInProgress,
      PlayerJourney? currentJourney,
      String? shouldNavigateToLocation});

  @override
  $PlayerJourneyCopyWith<$Res>? get currentJourney;
}

/// @nodoc
class __$$GameMapStateImplCopyWithImpl<$Res>
    extends _$GameMapStateCopyWithImpl<$Res, _$GameMapStateImpl>
    implements _$$GameMapStateImplCopyWith<$Res> {
  __$$GameMapStateImplCopyWithImpl(
      _$GameMapStateImpl _value, $Res Function(_$GameMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? currentLocationId = null,
    Object? unlockedLocationIds = null,
    Object? isJourneyInProgress = null,
    Object? currentJourney = freezed,
    Object? shouldNavigateToLocation = freezed,
  }) {
    return _then(_$GameMapStateImpl(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<GameLocation>,
      currentLocationId: null == currentLocationId
          ? _value.currentLocationId
          : currentLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      unlockedLocationIds: null == unlockedLocationIds
          ? _value._unlockedLocationIds
          : unlockedLocationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isJourneyInProgress: null == isJourneyInProgress
          ? _value.isJourneyInProgress
          : isJourneyInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      currentJourney: freezed == currentJourney
          ? _value.currentJourney
          : currentJourney // ignore: cast_nullable_to_non_nullable
              as PlayerJourney?,
      shouldNavigateToLocation: freezed == shouldNavigateToLocation
          ? _value.shouldNavigateToLocation
          : shouldNavigateToLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameMapStateImpl implements _GameMapState {
  const _$GameMapStateImpl(
      {final List<GameLocation> locations = const [],
      this.currentLocationId = 'athens',
      final List<String> unlockedLocationIds = const [
        'athens',
        'marathon',
        'thebes',
        'corinth',
        'delphi',
        'sparta'
      ],
      this.isJourneyInProgress = false,
      this.currentJourney,
      this.shouldNavigateToLocation})
      : _locations = locations,
        _unlockedLocationIds = unlockedLocationIds;

  factory _$GameMapStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameMapStateImplFromJson(json);

  final List<GameLocation> _locations;
  @override
  @JsonKey()
  List<GameLocation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @JsonKey()
  final String currentLocationId;
  final List<String> _unlockedLocationIds;
  @override
  @JsonKey()
  List<String> get unlockedLocationIds {
    if (_unlockedLocationIds is EqualUnmodifiableListView)
      return _unlockedLocationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unlockedLocationIds);
  }

  @override
  @JsonKey()
  final bool isJourneyInProgress;
  @override
  final PlayerJourney? currentJourney;
  @override
  final String? shouldNavigateToLocation;

  @override
  String toString() {
    return 'GameMapState(locations: $locations, currentLocationId: $currentLocationId, unlockedLocationIds: $unlockedLocationIds, isJourneyInProgress: $isJourneyInProgress, currentJourney: $currentJourney, shouldNavigateToLocation: $shouldNavigateToLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMapStateImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.currentLocationId, currentLocationId) ||
                other.currentLocationId == currentLocationId) &&
            const DeepCollectionEquality()
                .equals(other._unlockedLocationIds, _unlockedLocationIds) &&
            (identical(other.isJourneyInProgress, isJourneyInProgress) ||
                other.isJourneyInProgress == isJourneyInProgress) &&
            (identical(other.currentJourney, currentJourney) ||
                other.currentJourney == currentJourney) &&
            (identical(
                    other.shouldNavigateToLocation, shouldNavigateToLocation) ||
                other.shouldNavigateToLocation == shouldNavigateToLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_locations),
      currentLocationId,
      const DeepCollectionEquality().hash(_unlockedLocationIds),
      isJourneyInProgress,
      currentJourney,
      shouldNavigateToLocation);

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMapStateImplCopyWith<_$GameMapStateImpl> get copyWith =>
      __$$GameMapStateImplCopyWithImpl<_$GameMapStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameMapStateImplToJson(
      this,
    );
  }
}

abstract class _GameMapState implements GameMapState {
  const factory _GameMapState(
      {final List<GameLocation> locations,
      final String currentLocationId,
      final List<String> unlockedLocationIds,
      final bool isJourneyInProgress,
      final PlayerJourney? currentJourney,
      final String? shouldNavigateToLocation}) = _$GameMapStateImpl;

  factory _GameMapState.fromJson(Map<String, dynamic> json) =
      _$GameMapStateImpl.fromJson;

  @override
  List<GameLocation> get locations;
  @override
  String get currentLocationId;
  @override
  List<String> get unlockedLocationIds;
  @override
  bool get isJourneyInProgress;
  @override
  PlayerJourney? get currentJourney;
  @override
  String? get shouldNavigateToLocation;

  /// Create a copy of GameMapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameMapStateImplCopyWith<_$GameMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
