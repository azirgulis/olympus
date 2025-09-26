// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameLocation _$GameLocationFromJson(Map<String, dynamic> json) {
  return _GameLocation.fromJson(json);
}

/// @nodoc
mixin _$GameLocation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LocationType get type => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  List<String> get specialties => throw _privateConstructorUsedError;
  List<String> get availableServices => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  bool get isVisited => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  List<String> get connectedLocations => throw _privateConstructorUsedError;
  String? get backgroundImage => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;

  /// Serializes this GameLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameLocationCopyWith<GameLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameLocationCopyWith<$Res> {
  factory $GameLocationCopyWith(
          GameLocation value, $Res Function(GameLocation) then) =
      _$GameLocationCopyWithImpl<$Res, GameLocation>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LocationType type,
      double latitude,
      double longitude,
      String region,
      List<String> specialties,
      List<String> availableServices,
      bool isUnlocked,
      bool isVisited,
      int reputation,
      List<String> connectedLocations,
      String? backgroundImage,
      String? iconPath});
}

/// @nodoc
class _$GameLocationCopyWithImpl<$Res, $Val extends GameLocation>
    implements $GameLocationCopyWith<$Res> {
  _$GameLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? region = null,
    Object? specialties = null,
    Object? availableServices = null,
    Object? isUnlocked = null,
    Object? isVisited = null,
    Object? reputation = null,
    Object? connectedLocations = null,
    Object? backgroundImage = freezed,
    Object? iconPath = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocationType,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableServices: null == availableServices
          ? _value.availableServices
          : availableServices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisited: null == isVisited
          ? _value.isVisited
          : isVisited // ignore: cast_nullable_to_non_nullable
              as bool,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      connectedLocations: null == connectedLocations
          ? _value.connectedLocations
          : connectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameLocationImplCopyWith<$Res>
    implements $GameLocationCopyWith<$Res> {
  factory _$$GameLocationImplCopyWith(
          _$GameLocationImpl value, $Res Function(_$GameLocationImpl) then) =
      __$$GameLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LocationType type,
      double latitude,
      double longitude,
      String region,
      List<String> specialties,
      List<String> availableServices,
      bool isUnlocked,
      bool isVisited,
      int reputation,
      List<String> connectedLocations,
      String? backgroundImage,
      String? iconPath});
}

/// @nodoc
class __$$GameLocationImplCopyWithImpl<$Res>
    extends _$GameLocationCopyWithImpl<$Res, _$GameLocationImpl>
    implements _$$GameLocationImplCopyWith<$Res> {
  __$$GameLocationImplCopyWithImpl(
      _$GameLocationImpl _value, $Res Function(_$GameLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? region = null,
    Object? specialties = null,
    Object? availableServices = null,
    Object? isUnlocked = null,
    Object? isVisited = null,
    Object? reputation = null,
    Object? connectedLocations = null,
    Object? backgroundImage = freezed,
    Object? iconPath = freezed,
  }) {
    return _then(_$GameLocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocationType,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: null == specialties
          ? _value._specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableServices: null == availableServices
          ? _value._availableServices
          : availableServices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisited: null == isVisited
          ? _value.isVisited
          : isVisited // ignore: cast_nullable_to_non_nullable
              as bool,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      connectedLocations: null == connectedLocations
          ? _value._connectedLocations
          : connectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameLocationImpl implements _GameLocation {
  const _$GameLocationImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.latitude,
      required this.longitude,
      required this.region,
      final List<String> specialties = const [],
      final List<String> availableServices = const [],
      this.isUnlocked = false,
      this.isVisited = false,
      this.reputation = 0,
      final List<String> connectedLocations = const [],
      this.backgroundImage,
      this.iconPath})
      : _specialties = specialties,
        _availableServices = availableServices,
        _connectedLocations = connectedLocations;

  factory _$GameLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameLocationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final LocationType type;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String region;
  final List<String> _specialties;
  @override
  @JsonKey()
  List<String> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  final List<String> _availableServices;
  @override
  @JsonKey()
  List<String> get availableServices {
    if (_availableServices is EqualUnmodifiableListView)
      return _availableServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableServices);
  }

  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  @JsonKey()
  final bool isVisited;
  @override
  @JsonKey()
  final int reputation;
  final List<String> _connectedLocations;
  @override
  @JsonKey()
  List<String> get connectedLocations {
    if (_connectedLocations is EqualUnmodifiableListView)
      return _connectedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedLocations);
  }

  @override
  final String? backgroundImage;
  @override
  final String? iconPath;

  @override
  String toString() {
    return 'GameLocation(id: $id, name: $name, description: $description, type: $type, latitude: $latitude, longitude: $longitude, region: $region, specialties: $specialties, availableServices: $availableServices, isUnlocked: $isUnlocked, isVisited: $isVisited, reputation: $reputation, connectedLocations: $connectedLocations, backgroundImage: $backgroundImage, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality()
                .equals(other._specialties, _specialties) &&
            const DeepCollectionEquality()
                .equals(other._availableServices, _availableServices) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.isVisited, isVisited) ||
                other.isVisited == isVisited) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            const DeepCollectionEquality()
                .equals(other._connectedLocations, _connectedLocations) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      latitude,
      longitude,
      region,
      const DeepCollectionEquality().hash(_specialties),
      const DeepCollectionEquality().hash(_availableServices),
      isUnlocked,
      isVisited,
      reputation,
      const DeepCollectionEquality().hash(_connectedLocations),
      backgroundImage,
      iconPath);

  /// Create a copy of GameLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameLocationImplCopyWith<_$GameLocationImpl> get copyWith =>
      __$$GameLocationImplCopyWithImpl<_$GameLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameLocationImplToJson(
      this,
    );
  }
}

abstract class _GameLocation implements GameLocation {
  const factory _GameLocation(
      {required final String id,
      required final String name,
      required final String description,
      required final LocationType type,
      required final double latitude,
      required final double longitude,
      required final String region,
      final List<String> specialties,
      final List<String> availableServices,
      final bool isUnlocked,
      final bool isVisited,
      final int reputation,
      final List<String> connectedLocations,
      final String? backgroundImage,
      final String? iconPath}) = _$GameLocationImpl;

  factory _GameLocation.fromJson(Map<String, dynamic> json) =
      _$GameLocationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  LocationType get type;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get region;
  @override
  List<String> get specialties;
  @override
  List<String> get availableServices;
  @override
  bool get isUnlocked;
  @override
  bool get isVisited;
  @override
  int get reputation;
  @override
  List<String> get connectedLocations;
  @override
  String? get backgroundImage;
  @override
  String? get iconPath;

  /// Create a copy of GameLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameLocationImplCopyWith<_$GameLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelRoute _$TravelRouteFromJson(Map<String, dynamic> json) {
  return _TravelRoute.fromJson(json);
}

/// @nodoc
mixin _$TravelRoute {
  String get fromLocationId => throw _privateConstructorUsedError;
  String get toLocationId => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get baseTravelTime => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  RouteDifficulty get difficulty => throw _privateConstructorUsedError;
  List<String> get possibleEncounters => throw _privateConstructorUsedError;
  List<String> get requiredItems => throw _privateConstructorUsedError;
  int get minimumLevel => throw _privateConstructorUsedError;
  bool get requiresShip => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this TravelRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelRouteCopyWith<TravelRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelRouteCopyWith<$Res> {
  factory $TravelRouteCopyWith(
          TravelRoute value, $Res Function(TravelRoute) then) =
      _$TravelRouteCopyWithImpl<$Res, TravelRoute>;
  @useResult
  $Res call(
      {String fromLocationId,
      String toLocationId,
      int distance,
      int baseTravelTime,
      int cost,
      RouteDifficulty difficulty,
      List<String> possibleEncounters,
      List<String> requiredItems,
      int minimumLevel,
      bool requiresShip,
      String? description});
}

/// @nodoc
class _$TravelRouteCopyWithImpl<$Res, $Val extends TravelRoute>
    implements $TravelRouteCopyWith<$Res> {
  _$TravelRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? distance = null,
    Object? baseTravelTime = null,
    Object? cost = null,
    Object? difficulty = null,
    Object? possibleEncounters = null,
    Object? requiredItems = null,
    Object? minimumLevel = null,
    Object? requiresShip = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      baseTravelTime: null == baseTravelTime
          ? _value.baseTravelTime
          : baseTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as RouteDifficulty,
      possibleEncounters: null == possibleEncounters
          ? _value.possibleEncounters
          : possibleEncounters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requiredItems: null == requiredItems
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimumLevel: null == minimumLevel
          ? _value.minimumLevel
          : minimumLevel // ignore: cast_nullable_to_non_nullable
              as int,
      requiresShip: null == requiresShip
          ? _value.requiresShip
          : requiresShip // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelRouteImplCopyWith<$Res>
    implements $TravelRouteCopyWith<$Res> {
  factory _$$TravelRouteImplCopyWith(
          _$TravelRouteImpl value, $Res Function(_$TravelRouteImpl) then) =
      __$$TravelRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fromLocationId,
      String toLocationId,
      int distance,
      int baseTravelTime,
      int cost,
      RouteDifficulty difficulty,
      List<String> possibleEncounters,
      List<String> requiredItems,
      int minimumLevel,
      bool requiresShip,
      String? description});
}

/// @nodoc
class __$$TravelRouteImplCopyWithImpl<$Res>
    extends _$TravelRouteCopyWithImpl<$Res, _$TravelRouteImpl>
    implements _$$TravelRouteImplCopyWith<$Res> {
  __$$TravelRouteImplCopyWithImpl(
      _$TravelRouteImpl _value, $Res Function(_$TravelRouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? distance = null,
    Object? baseTravelTime = null,
    Object? cost = null,
    Object? difficulty = null,
    Object? possibleEncounters = null,
    Object? requiredItems = null,
    Object? minimumLevel = null,
    Object? requiresShip = null,
    Object? description = freezed,
  }) {
    return _then(_$TravelRouteImpl(
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      baseTravelTime: null == baseTravelTime
          ? _value.baseTravelTime
          : baseTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as RouteDifficulty,
      possibleEncounters: null == possibleEncounters
          ? _value._possibleEncounters
          : possibleEncounters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requiredItems: null == requiredItems
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimumLevel: null == minimumLevel
          ? _value.minimumLevel
          : minimumLevel // ignore: cast_nullable_to_non_nullable
              as int,
      requiresShip: null == requiresShip
          ? _value.requiresShip
          : requiresShip // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelRouteImpl implements _TravelRoute {
  const _$TravelRouteImpl(
      {required this.fromLocationId,
      required this.toLocationId,
      required this.distance,
      required this.baseTravelTime,
      required this.cost,
      required this.difficulty,
      required final List<String> possibleEncounters,
      final List<String> requiredItems = const [],
      this.minimumLevel = 0,
      this.requiresShip = false,
      this.description})
      : _possibleEncounters = possibleEncounters,
        _requiredItems = requiredItems;

  factory _$TravelRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelRouteImplFromJson(json);

  @override
  final String fromLocationId;
  @override
  final String toLocationId;
  @override
  final int distance;
  @override
  final int baseTravelTime;
  @override
  final int cost;
  @override
  final RouteDifficulty difficulty;
  final List<String> _possibleEncounters;
  @override
  List<String> get possibleEncounters {
    if (_possibleEncounters is EqualUnmodifiableListView)
      return _possibleEncounters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibleEncounters);
  }

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
  final int minimumLevel;
  @override
  @JsonKey()
  final bool requiresShip;
  @override
  final String? description;

  @override
  String toString() {
    return 'TravelRoute(fromLocationId: $fromLocationId, toLocationId: $toLocationId, distance: $distance, baseTravelTime: $baseTravelTime, cost: $cost, difficulty: $difficulty, possibleEncounters: $possibleEncounters, requiredItems: $requiredItems, minimumLevel: $minimumLevel, requiresShip: $requiresShip, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelRouteImpl &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.baseTravelTime, baseTravelTime) ||
                other.baseTravelTime == baseTravelTime) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._possibleEncounters, _possibleEncounters) &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems) &&
            (identical(other.minimumLevel, minimumLevel) ||
                other.minimumLevel == minimumLevel) &&
            (identical(other.requiresShip, requiresShip) ||
                other.requiresShip == requiresShip) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromLocationId,
      toLocationId,
      distance,
      baseTravelTime,
      cost,
      difficulty,
      const DeepCollectionEquality().hash(_possibleEncounters),
      const DeepCollectionEquality().hash(_requiredItems),
      minimumLevel,
      requiresShip,
      description);

  /// Create a copy of TravelRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelRouteImplCopyWith<_$TravelRouteImpl> get copyWith =>
      __$$TravelRouteImplCopyWithImpl<_$TravelRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelRouteImplToJson(
      this,
    );
  }
}

abstract class _TravelRoute implements TravelRoute {
  const factory _TravelRoute(
      {required final String fromLocationId,
      required final String toLocationId,
      required final int distance,
      required final int baseTravelTime,
      required final int cost,
      required final RouteDifficulty difficulty,
      required final List<String> possibleEncounters,
      final List<String> requiredItems,
      final int minimumLevel,
      final bool requiresShip,
      final String? description}) = _$TravelRouteImpl;

  factory _TravelRoute.fromJson(Map<String, dynamic> json) =
      _$TravelRouteImpl.fromJson;

  @override
  String get fromLocationId;
  @override
  String get toLocationId;
  @override
  int get distance;
  @override
  int get baseTravelTime;
  @override
  int get cost;
  @override
  RouteDifficulty get difficulty;
  @override
  List<String> get possibleEncounters;
  @override
  List<String> get requiredItems;
  @override
  int get minimumLevel;
  @override
  bool get requiresShip;
  @override
  String? get description;

  /// Create a copy of TravelRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelRouteImplCopyWith<_$TravelRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelEncounter _$TravelEncounterFromJson(Map<String, dynamic> json) {
  return _TravelEncounter.fromJson(json);
}

/// @nodoc
mixin _$TravelEncounter {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EncounterType get type => throw _privateConstructorUsedError;
  List<EncounterOption> get options => throw _privateConstructorUsedError;
  double get probability => throw _privateConstructorUsedError;
  List<String> get requiredConditions => throw _privateConstructorUsedError;
  List<String> get outcomes => throw _privateConstructorUsedError;

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
      List<EncounterOption> options,
      double probability,
      List<String> requiredConditions,
      List<String> outcomes});
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
    Object? options = null,
    Object? probability = null,
    Object? requiredConditions = null,
    Object? outcomes = null,
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
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<EncounterOption>,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      requiredConditions: null == requiredConditions
          ? _value.requiredConditions
          : requiredConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outcomes: null == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      List<EncounterOption> options,
      double probability,
      List<String> requiredConditions,
      List<String> outcomes});
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
    Object? options = null,
    Object? probability = null,
    Object? requiredConditions = null,
    Object? outcomes = null,
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
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<EncounterOption>,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      requiredConditions: null == requiredConditions
          ? _value._requiredConditions
          : requiredConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outcomes: null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      required final List<EncounterOption> options,
      this.probability = 0.0,
      final List<String> requiredConditions = const [],
      final List<String> outcomes = const []})
      : _options = options,
        _requiredConditions = requiredConditions,
        _outcomes = outcomes;

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
  final List<EncounterOption> _options;
  @override
  List<EncounterOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final double probability;
  final List<String> _requiredConditions;
  @override
  @JsonKey()
  List<String> get requiredConditions {
    if (_requiredConditions is EqualUnmodifiableListView)
      return _requiredConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredConditions);
  }

  final List<String> _outcomes;
  @override
  @JsonKey()
  List<String> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  String toString() {
    return 'TravelEncounter(id: $id, title: $title, description: $description, type: $type, options: $options, probability: $probability, requiredConditions: $requiredConditions, outcomes: $outcomes)';
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
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            const DeepCollectionEquality()
                .equals(other._requiredConditions, _requiredConditions) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      const DeepCollectionEquality().hash(_options),
      probability,
      const DeepCollectionEquality().hash(_requiredConditions),
      const DeepCollectionEquality().hash(_outcomes));

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
      required final List<EncounterOption> options,
      final double probability,
      final List<String> requiredConditions,
      final List<String> outcomes}) = _$TravelEncounterImpl;

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
  List<EncounterOption> get options;
  @override
  double get probability;
  @override
  List<String> get requiredConditions;
  @override
  List<String> get outcomes;

  /// Create a copy of TravelEncounter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelEncounterImplCopyWith<_$TravelEncounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncounterOption _$EncounterOptionFromJson(Map<String, dynamic> json) {
  return _EncounterOption.fromJson(json);
}

/// @nodoc
mixin _$EncounterOption {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<EncounterOutcome> get outcomes => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;

  /// Serializes this EncounterOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncounterOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncounterOptionCopyWith<EncounterOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterOptionCopyWith<$Res> {
  factory $EncounterOptionCopyWith(
          EncounterOption value, $Res Function(EncounterOption) then) =
      _$EncounterOptionCopyWithImpl<$Res, EncounterOption>;
  @useResult
  $Res call(
      {String id,
      String text,
      String description,
      List<EncounterOutcome> outcomes,
      List<String> requirements,
      int cost});
}

/// @nodoc
class _$EncounterOptionCopyWithImpl<$Res, $Val extends EncounterOption>
    implements $EncounterOptionCopyWith<$Res> {
  _$EncounterOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncounterOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? description = null,
    Object? outcomes = null,
    Object? requirements = null,
    Object? cost = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      outcomes: null == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<EncounterOutcome>,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncounterOptionImplCopyWith<$Res>
    implements $EncounterOptionCopyWith<$Res> {
  factory _$$EncounterOptionImplCopyWith(_$EncounterOptionImpl value,
          $Res Function(_$EncounterOptionImpl) then) =
      __$$EncounterOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String description,
      List<EncounterOutcome> outcomes,
      List<String> requirements,
      int cost});
}

/// @nodoc
class __$$EncounterOptionImplCopyWithImpl<$Res>
    extends _$EncounterOptionCopyWithImpl<$Res, _$EncounterOptionImpl>
    implements _$$EncounterOptionImplCopyWith<$Res> {
  __$$EncounterOptionImplCopyWithImpl(
      _$EncounterOptionImpl _value, $Res Function(_$EncounterOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncounterOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? description = null,
    Object? outcomes = null,
    Object? requirements = null,
    Object? cost = null,
  }) {
    return _then(_$EncounterOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      outcomes: null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<EncounterOutcome>,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterOptionImpl implements _EncounterOption {
  const _$EncounterOptionImpl(
      {required this.id,
      required this.text,
      required this.description,
      final List<EncounterOutcome> outcomes = const [],
      final List<String> requirements = const [],
      this.cost = 0})
      : _outcomes = outcomes,
        _requirements = requirements;

  factory _$EncounterOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String description;
  final List<EncounterOutcome> _outcomes;
  @override
  @JsonKey()
  List<EncounterOutcome> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  final List<String> _requirements;
  @override
  @JsonKey()
  List<String> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  @JsonKey()
  final int cost;

  @override
  String toString() {
    return 'EncounterOption(id: $id, text: $text, description: $description, outcomes: $outcomes, requirements: $requirements, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      description,
      const DeepCollectionEquality().hash(_outcomes),
      const DeepCollectionEquality().hash(_requirements),
      cost);

  /// Create a copy of EncounterOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterOptionImplCopyWith<_$EncounterOptionImpl> get copyWith =>
      __$$EncounterOptionImplCopyWithImpl<_$EncounterOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterOptionImplToJson(
      this,
    );
  }
}

abstract class _EncounterOption implements EncounterOption {
  const factory _EncounterOption(
      {required final String id,
      required final String text,
      required final String description,
      final List<EncounterOutcome> outcomes,
      final List<String> requirements,
      final int cost}) = _$EncounterOptionImpl;

  factory _EncounterOption.fromJson(Map<String, dynamic> json) =
      _$EncounterOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get description;
  @override
  List<EncounterOutcome> get outcomes;
  @override
  List<String> get requirements;
  @override
  int get cost;

  /// Create a copy of EncounterOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncounterOptionImplCopyWith<_$EncounterOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncounterOutcome _$EncounterOutcomeFromJson(Map<String, dynamic> json) {
  return _EncounterOutcome.fromJson(json);
}

/// @nodoc
mixin _$EncounterOutcome {
  OutcomeType get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int get probability => throw _privateConstructorUsedError;

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
      {OutcomeType type,
      String description,
      int value,
      String itemId,
      int probability});
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
    Object? type = null,
    Object? description = null,
    Object? value = null,
    Object? itemId = null,
    Object? probability = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OutcomeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as int,
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
      {OutcomeType type,
      String description,
      int value,
      String itemId,
      int probability});
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
    Object? type = null,
    Object? description = null,
    Object? value = null,
    Object? itemId = null,
    Object? probability = null,
  }) {
    return _then(_$EncounterOutcomeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OutcomeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterOutcomeImpl implements _EncounterOutcome {
  const _$EncounterOutcomeImpl(
      {required this.type,
      required this.description,
      this.value = 0,
      this.itemId = '',
      this.probability = 0});

  factory _$EncounterOutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterOutcomeImplFromJson(json);

  @override
  final OutcomeType type;
  @override
  final String description;
  @override
  @JsonKey()
  final int value;
  @override
  @JsonKey()
  final String itemId;
  @override
  @JsonKey()
  final int probability;

  @override
  String toString() {
    return 'EncounterOutcome(type: $type, description: $description, value: $value, itemId: $itemId, probability: $probability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterOutcomeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.probability, probability) ||
                other.probability == probability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, description, value, itemId, probability);

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
      {required final OutcomeType type,
      required final String description,
      final int value,
      final String itemId,
      final int probability}) = _$EncounterOutcomeImpl;

  factory _EncounterOutcome.fromJson(Map<String, dynamic> json) =
      _$EncounterOutcomeImpl.fromJson;

  @override
  OutcomeType get type;
  @override
  String get description;
  @override
  int get value;
  @override
  String get itemId;
  @override
  int get probability;

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncounterOutcomeImplCopyWith<_$EncounterOutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerJourney _$PlayerJourneyFromJson(Map<String, dynamic> json) {
  return _PlayerJourney.fromJson(json);
}

/// @nodoc
mixin _$PlayerJourney {
  String get fromLocationId => throw _privateConstructorUsedError;
  String get toLocationId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  int get totalTravelTime => throw _privateConstructorUsedError;
  JourneyStatus get status => throw _privateConstructorUsedError;
  int get progressPercent => throw _privateConstructorUsedError;
  List<String> get encountersCompleted => throw _privateConstructorUsedError;
  TravelEncounter? get currentEncounter => throw _privateConstructorUsedError;

  /// Serializes this PlayerJourney to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerJourneyCopyWith<PlayerJourney> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerJourneyCopyWith<$Res> {
  factory $PlayerJourneyCopyWith(
          PlayerJourney value, $Res Function(PlayerJourney) then) =
      _$PlayerJourneyCopyWithImpl<$Res, PlayerJourney>;
  @useResult
  $Res call(
      {String fromLocationId,
      String toLocationId,
      DateTime startTime,
      int totalTravelTime,
      JourneyStatus status,
      int progressPercent,
      List<String> encountersCompleted,
      TravelEncounter? currentEncounter});

  $TravelEncounterCopyWith<$Res>? get currentEncounter;
}

/// @nodoc
class _$PlayerJourneyCopyWithImpl<$Res, $Val extends PlayerJourney>
    implements $PlayerJourneyCopyWith<$Res> {
  _$PlayerJourneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? startTime = null,
    Object? totalTravelTime = null,
    Object? status = null,
    Object? progressPercent = null,
    Object? encountersCompleted = null,
    Object? currentEncounter = freezed,
  }) {
    return _then(_value.copyWith(
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalTravelTime: null == totalTravelTime
          ? _value.totalTravelTime
          : totalTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JourneyStatus,
      progressPercent: null == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as int,
      encountersCompleted: null == encountersCompleted
          ? _value.encountersCompleted
          : encountersCompleted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentEncounter: freezed == currentEncounter
          ? _value.currentEncounter
          : currentEncounter // ignore: cast_nullable_to_non_nullable
              as TravelEncounter?,
    ) as $Val);
  }

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TravelEncounterCopyWith<$Res>? get currentEncounter {
    if (_value.currentEncounter == null) {
      return null;
    }

    return $TravelEncounterCopyWith<$Res>(_value.currentEncounter!, (value) {
      return _then(_value.copyWith(currentEncounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerJourneyImplCopyWith<$Res>
    implements $PlayerJourneyCopyWith<$Res> {
  factory _$$PlayerJourneyImplCopyWith(
          _$PlayerJourneyImpl value, $Res Function(_$PlayerJourneyImpl) then) =
      __$$PlayerJourneyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fromLocationId,
      String toLocationId,
      DateTime startTime,
      int totalTravelTime,
      JourneyStatus status,
      int progressPercent,
      List<String> encountersCompleted,
      TravelEncounter? currentEncounter});

  @override
  $TravelEncounterCopyWith<$Res>? get currentEncounter;
}

/// @nodoc
class __$$PlayerJourneyImplCopyWithImpl<$Res>
    extends _$PlayerJourneyCopyWithImpl<$Res, _$PlayerJourneyImpl>
    implements _$$PlayerJourneyImplCopyWith<$Res> {
  __$$PlayerJourneyImplCopyWithImpl(
      _$PlayerJourneyImpl _value, $Res Function(_$PlayerJourneyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? startTime = null,
    Object? totalTravelTime = null,
    Object? status = null,
    Object? progressPercent = null,
    Object? encountersCompleted = null,
    Object? currentEncounter = freezed,
  }) {
    return _then(_$PlayerJourneyImpl(
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalTravelTime: null == totalTravelTime
          ? _value.totalTravelTime
          : totalTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JourneyStatus,
      progressPercent: null == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as int,
      encountersCompleted: null == encountersCompleted
          ? _value._encountersCompleted
          : encountersCompleted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentEncounter: freezed == currentEncounter
          ? _value.currentEncounter
          : currentEncounter // ignore: cast_nullable_to_non_nullable
              as TravelEncounter?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerJourneyImpl implements _PlayerJourney {
  const _$PlayerJourneyImpl(
      {required this.fromLocationId,
      required this.toLocationId,
      required this.startTime,
      required this.totalTravelTime,
      required this.status,
      this.progressPercent = 0,
      final List<String> encountersCompleted = const [],
      this.currentEncounter})
      : _encountersCompleted = encountersCompleted;

  factory _$PlayerJourneyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerJourneyImplFromJson(json);

  @override
  final String fromLocationId;
  @override
  final String toLocationId;
  @override
  final DateTime startTime;
  @override
  final int totalTravelTime;
  @override
  final JourneyStatus status;
  @override
  @JsonKey()
  final int progressPercent;
  final List<String> _encountersCompleted;
  @override
  @JsonKey()
  List<String> get encountersCompleted {
    if (_encountersCompleted is EqualUnmodifiableListView)
      return _encountersCompleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_encountersCompleted);
  }

  @override
  final TravelEncounter? currentEncounter;

  @override
  String toString() {
    return 'PlayerJourney(fromLocationId: $fromLocationId, toLocationId: $toLocationId, startTime: $startTime, totalTravelTime: $totalTravelTime, status: $status, progressPercent: $progressPercent, encountersCompleted: $encountersCompleted, currentEncounter: $currentEncounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerJourneyImpl &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.totalTravelTime, totalTravelTime) ||
                other.totalTravelTime == totalTravelTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            const DeepCollectionEquality()
                .equals(other._encountersCompleted, _encountersCompleted) &&
            (identical(other.currentEncounter, currentEncounter) ||
                other.currentEncounter == currentEncounter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromLocationId,
      toLocationId,
      startTime,
      totalTravelTime,
      status,
      progressPercent,
      const DeepCollectionEquality().hash(_encountersCompleted),
      currentEncounter);

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerJourneyImplCopyWith<_$PlayerJourneyImpl> get copyWith =>
      __$$PlayerJourneyImplCopyWithImpl<_$PlayerJourneyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerJourneyImplToJson(
      this,
    );
  }
}

abstract class _PlayerJourney implements PlayerJourney {
  const factory _PlayerJourney(
      {required final String fromLocationId,
      required final String toLocationId,
      required final DateTime startTime,
      required final int totalTravelTime,
      required final JourneyStatus status,
      final int progressPercent,
      final List<String> encountersCompleted,
      final TravelEncounter? currentEncounter}) = _$PlayerJourneyImpl;

  factory _PlayerJourney.fromJson(Map<String, dynamic> json) =
      _$PlayerJourneyImpl.fromJson;

  @override
  String get fromLocationId;
  @override
  String get toLocationId;
  @override
  DateTime get startTime;
  @override
  int get totalTravelTime;
  @override
  JourneyStatus get status;
  @override
  int get progressPercent;
  @override
  List<String> get encountersCompleted;
  @override
  TravelEncounter? get currentEncounter;

  /// Create a copy of PlayerJourney
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerJourneyImplCopyWith<_$PlayerJourneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
