// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'harbor_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HarborState _$HarborStateFromJson(Map<String, dynamic> json) {
  return _HarborState.fromJson(json);
}

/// @nodoc
mixin _$HarborState {
  List<TradeRoute> get availableRoutes => throw _privateConstructorUsedError;
  List<Ship> get playerShips => throw _privateConstructorUsedError;
  List<TradingExpedition> get activeExpeditions =>
      throw _privateConstructorUsedError;
  List<TradeContract> get availableContracts =>
      throw _privateConstructorUsedError;

  /// Serializes this HarborState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HarborState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HarborStateCopyWith<HarborState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HarborStateCopyWith<$Res> {
  factory $HarborStateCopyWith(
          HarborState value, $Res Function(HarborState) then) =
      _$HarborStateCopyWithImpl<$Res, HarborState>;
  @useResult
  $Res call(
      {List<TradeRoute> availableRoutes,
      List<Ship> playerShips,
      List<TradingExpedition> activeExpeditions,
      List<TradeContract> availableContracts});
}

/// @nodoc
class _$HarborStateCopyWithImpl<$Res, $Val extends HarborState>
    implements $HarborStateCopyWith<$Res> {
  _$HarborStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HarborState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableRoutes = null,
    Object? playerShips = null,
    Object? activeExpeditions = null,
    Object? availableContracts = null,
  }) {
    return _then(_value.copyWith(
      availableRoutes: null == availableRoutes
          ? _value.availableRoutes
          : availableRoutes // ignore: cast_nullable_to_non_nullable
              as List<TradeRoute>,
      playerShips: null == playerShips
          ? _value.playerShips
          : playerShips // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
      activeExpeditions: null == activeExpeditions
          ? _value.activeExpeditions
          : activeExpeditions // ignore: cast_nullable_to_non_nullable
              as List<TradingExpedition>,
      availableContracts: null == availableContracts
          ? _value.availableContracts
          : availableContracts // ignore: cast_nullable_to_non_nullable
              as List<TradeContract>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HarborStateImplCopyWith<$Res>
    implements $HarborStateCopyWith<$Res> {
  factory _$$HarborStateImplCopyWith(
          _$HarborStateImpl value, $Res Function(_$HarborStateImpl) then) =
      __$$HarborStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TradeRoute> availableRoutes,
      List<Ship> playerShips,
      List<TradingExpedition> activeExpeditions,
      List<TradeContract> availableContracts});
}

/// @nodoc
class __$$HarborStateImplCopyWithImpl<$Res>
    extends _$HarborStateCopyWithImpl<$Res, _$HarborStateImpl>
    implements _$$HarborStateImplCopyWith<$Res> {
  __$$HarborStateImplCopyWithImpl(
      _$HarborStateImpl _value, $Res Function(_$HarborStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HarborState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableRoutes = null,
    Object? playerShips = null,
    Object? activeExpeditions = null,
    Object? availableContracts = null,
  }) {
    return _then(_$HarborStateImpl(
      availableRoutes: null == availableRoutes
          ? _value._availableRoutes
          : availableRoutes // ignore: cast_nullable_to_non_nullable
              as List<TradeRoute>,
      playerShips: null == playerShips
          ? _value._playerShips
          : playerShips // ignore: cast_nullable_to_non_nullable
              as List<Ship>,
      activeExpeditions: null == activeExpeditions
          ? _value._activeExpeditions
          : activeExpeditions // ignore: cast_nullable_to_non_nullable
              as List<TradingExpedition>,
      availableContracts: null == availableContracts
          ? _value._availableContracts
          : availableContracts // ignore: cast_nullable_to_non_nullable
              as List<TradeContract>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HarborStateImpl implements _HarborState {
  const _$HarborStateImpl(
      {final List<TradeRoute> availableRoutes = const [],
      final List<Ship> playerShips = const [],
      final List<TradingExpedition> activeExpeditions = const [],
      final List<TradeContract> availableContracts = const []})
      : _availableRoutes = availableRoutes,
        _playerShips = playerShips,
        _activeExpeditions = activeExpeditions,
        _availableContracts = availableContracts;

  factory _$HarborStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HarborStateImplFromJson(json);

  final List<TradeRoute> _availableRoutes;
  @override
  @JsonKey()
  List<TradeRoute> get availableRoutes {
    if (_availableRoutes is EqualUnmodifiableListView) return _availableRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableRoutes);
  }

  final List<Ship> _playerShips;
  @override
  @JsonKey()
  List<Ship> get playerShips {
    if (_playerShips is EqualUnmodifiableListView) return _playerShips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerShips);
  }

  final List<TradingExpedition> _activeExpeditions;
  @override
  @JsonKey()
  List<TradingExpedition> get activeExpeditions {
    if (_activeExpeditions is EqualUnmodifiableListView)
      return _activeExpeditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeExpeditions);
  }

  final List<TradeContract> _availableContracts;
  @override
  @JsonKey()
  List<TradeContract> get availableContracts {
    if (_availableContracts is EqualUnmodifiableListView)
      return _availableContracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableContracts);
  }

  @override
  String toString() {
    return 'HarborState(availableRoutes: $availableRoutes, playerShips: $playerShips, activeExpeditions: $activeExpeditions, availableContracts: $availableContracts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HarborStateImpl &&
            const DeepCollectionEquality()
                .equals(other._availableRoutes, _availableRoutes) &&
            const DeepCollectionEquality()
                .equals(other._playerShips, _playerShips) &&
            const DeepCollectionEquality()
                .equals(other._activeExpeditions, _activeExpeditions) &&
            const DeepCollectionEquality()
                .equals(other._availableContracts, _availableContracts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableRoutes),
      const DeepCollectionEquality().hash(_playerShips),
      const DeepCollectionEquality().hash(_activeExpeditions),
      const DeepCollectionEquality().hash(_availableContracts));

  /// Create a copy of HarborState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HarborStateImplCopyWith<_$HarborStateImpl> get copyWith =>
      __$$HarborStateImplCopyWithImpl<_$HarborStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HarborStateImplToJson(
      this,
    );
  }
}

abstract class _HarborState implements HarborState {
  const factory _HarborState(
      {final List<TradeRoute> availableRoutes,
      final List<Ship> playerShips,
      final List<TradingExpedition> activeExpeditions,
      final List<TradeContract> availableContracts}) = _$HarborStateImpl;

  factory _HarborState.fromJson(Map<String, dynamic> json) =
      _$HarborStateImpl.fromJson;

  @override
  List<TradeRoute> get availableRoutes;
  @override
  List<Ship> get playerShips;
  @override
  List<TradingExpedition> get activeExpeditions;
  @override
  List<TradeContract> get availableContracts;

  /// Create a copy of HarborState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HarborStateImplCopyWith<_$HarborStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
