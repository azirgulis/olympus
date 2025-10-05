// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exploration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerPosition _$PlayerPositionFromJson(Map<String, dynamic> json) {
  return _PlayerPosition.fromJson(json);
}

/// @nodoc
mixin _$PlayerPosition {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  Direction get facing => throw _privateConstructorUsedError;
  bool get isMoving => throw _privateConstructorUsedError;
  MovementSpeed get speed => throw _privateConstructorUsedError;

  /// Serializes this PlayerPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerPositionCopyWith<PlayerPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerPositionCopyWith<$Res> {
  factory $PlayerPositionCopyWith(
          PlayerPosition value, $Res Function(PlayerPosition) then) =
      _$PlayerPositionCopyWithImpl<$Res, PlayerPosition>;
  @useResult
  $Res call(
      {double x,
      double y,
      Direction facing,
      bool isMoving,
      MovementSpeed speed});
}

/// @nodoc
class _$PlayerPositionCopyWithImpl<$Res, $Val extends PlayerPosition>
    implements $PlayerPositionCopyWith<$Res> {
  _$PlayerPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? facing = null,
    Object? isMoving = null,
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      facing: null == facing
          ? _value.facing
          : facing // ignore: cast_nullable_to_non_nullable
              as Direction,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as MovementSpeed,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerPositionImplCopyWith<$Res>
    implements $PlayerPositionCopyWith<$Res> {
  factory _$$PlayerPositionImplCopyWith(_$PlayerPositionImpl value,
          $Res Function(_$PlayerPositionImpl) then) =
      __$$PlayerPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double x,
      double y,
      Direction facing,
      bool isMoving,
      MovementSpeed speed});
}

/// @nodoc
class __$$PlayerPositionImplCopyWithImpl<$Res>
    extends _$PlayerPositionCopyWithImpl<$Res, _$PlayerPositionImpl>
    implements _$$PlayerPositionImplCopyWith<$Res> {
  __$$PlayerPositionImplCopyWithImpl(
      _$PlayerPositionImpl _value, $Res Function(_$PlayerPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? facing = null,
    Object? isMoving = null,
    Object? speed = null,
  }) {
    return _then(_$PlayerPositionImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      facing: null == facing
          ? _value.facing
          : facing // ignore: cast_nullable_to_non_nullable
              as Direction,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as MovementSpeed,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerPositionImpl implements _PlayerPosition {
  const _$PlayerPositionImpl(
      {required this.x,
      required this.y,
      this.facing = Direction.down,
      this.isMoving = false,
      this.speed = MovementSpeed.normal});

  factory _$PlayerPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerPositionImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  @JsonKey()
  final Direction facing;
  @override
  @JsonKey()
  final bool isMoving;
  @override
  @JsonKey()
  final MovementSpeed speed;

  @override
  String toString() {
    return 'PlayerPosition(x: $x, y: $y, facing: $facing, isMoving: $isMoving, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerPositionImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.facing, facing) || other.facing == facing) &&
            (identical(other.isMoving, isMoving) ||
                other.isMoving == isMoving) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, facing, isMoving, speed);

  /// Create a copy of PlayerPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerPositionImplCopyWith<_$PlayerPositionImpl> get copyWith =>
      __$$PlayerPositionImplCopyWithImpl<_$PlayerPositionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerPositionImplToJson(
      this,
    );
  }
}

abstract class _PlayerPosition implements PlayerPosition {
  const factory _PlayerPosition(
      {required final double x,
      required final double y,
      final Direction facing,
      final bool isMoving,
      final MovementSpeed speed}) = _$PlayerPositionImpl;

  factory _PlayerPosition.fromJson(Map<String, dynamic> json) =
      _$PlayerPositionImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  Direction get facing;
  @override
  bool get isMoving;
  @override
  MovementSpeed get speed;

  /// Create a copy of PlayerPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerPositionImplCopyWith<_$PlayerPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityMap _$CityMapFromJson(Map<String, dynamic> json) {
  return _CityMap.fromJson(json);
}

/// @nodoc
mixin _$CityMap {
  String get cityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  String get backgroundImagePath => throw _privateConstructorUsedError;
  List<Building> get buildings => throw _privateConstructorUsedError;
  List<NpcPosition> get npcs => throw _privateConstructorUsedError;
  List<CollisionArea> get collisionAreas => throw _privateConstructorUsedError;
  List<InteractionZone> get interactionZones =>
      throw _privateConstructorUsedError;
  List<MapTransition> get transitions => throw _privateConstructorUsedError;
  PlayerPosition? get spawnPoint => throw _privateConstructorUsedError;

  /// Serializes this CityMap to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityMapCopyWith<CityMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityMapCopyWith<$Res> {
  factory $CityMapCopyWith(CityMap value, $Res Function(CityMap) then) =
      _$CityMapCopyWithImpl<$Res, CityMap>;
  @useResult
  $Res call(
      {String cityId,
      String name,
      double width,
      double height,
      String backgroundImagePath,
      List<Building> buildings,
      List<NpcPosition> npcs,
      List<CollisionArea> collisionAreas,
      List<InteractionZone> interactionZones,
      List<MapTransition> transitions,
      PlayerPosition? spawnPoint});

  $PlayerPositionCopyWith<$Res>? get spawnPoint;
}

/// @nodoc
class _$CityMapCopyWithImpl<$Res, $Val extends CityMap>
    implements $CityMapCopyWith<$Res> {
  _$CityMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? name = null,
    Object? width = null,
    Object? height = null,
    Object? backgroundImagePath = null,
    Object? buildings = null,
    Object? npcs = null,
    Object? collisionAreas = null,
    Object? interactionZones = null,
    Object? transitions = null,
    Object? spawnPoint = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundImagePath: null == backgroundImagePath
          ? _value.backgroundImagePath
          : backgroundImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      buildings: null == buildings
          ? _value.buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<NpcPosition>,
      collisionAreas: null == collisionAreas
          ? _value.collisionAreas
          : collisionAreas // ignore: cast_nullable_to_non_nullable
              as List<CollisionArea>,
      interactionZones: null == interactionZones
          ? _value.interactionZones
          : interactionZones // ignore: cast_nullable_to_non_nullable
              as List<InteractionZone>,
      transitions: null == transitions
          ? _value.transitions
          : transitions // ignore: cast_nullable_to_non_nullable
              as List<MapTransition>,
      spawnPoint: freezed == spawnPoint
          ? _value.spawnPoint
          : spawnPoint // ignore: cast_nullable_to_non_nullable
              as PlayerPosition?,
    ) as $Val);
  }

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerPositionCopyWith<$Res>? get spawnPoint {
    if (_value.spawnPoint == null) {
      return null;
    }

    return $PlayerPositionCopyWith<$Res>(_value.spawnPoint!, (value) {
      return _then(_value.copyWith(spawnPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityMapImplCopyWith<$Res> implements $CityMapCopyWith<$Res> {
  factory _$$CityMapImplCopyWith(
          _$CityMapImpl value, $Res Function(_$CityMapImpl) then) =
      __$$CityMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityId,
      String name,
      double width,
      double height,
      String backgroundImagePath,
      List<Building> buildings,
      List<NpcPosition> npcs,
      List<CollisionArea> collisionAreas,
      List<InteractionZone> interactionZones,
      List<MapTransition> transitions,
      PlayerPosition? spawnPoint});

  @override
  $PlayerPositionCopyWith<$Res>? get spawnPoint;
}

/// @nodoc
class __$$CityMapImplCopyWithImpl<$Res>
    extends _$CityMapCopyWithImpl<$Res, _$CityMapImpl>
    implements _$$CityMapImplCopyWith<$Res> {
  __$$CityMapImplCopyWithImpl(
      _$CityMapImpl _value, $Res Function(_$CityMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? name = null,
    Object? width = null,
    Object? height = null,
    Object? backgroundImagePath = null,
    Object? buildings = null,
    Object? npcs = null,
    Object? collisionAreas = null,
    Object? interactionZones = null,
    Object? transitions = null,
    Object? spawnPoint = freezed,
  }) {
    return _then(_$CityMapImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundImagePath: null == backgroundImagePath
          ? _value.backgroundImagePath
          : backgroundImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<NpcPosition>,
      collisionAreas: null == collisionAreas
          ? _value._collisionAreas
          : collisionAreas // ignore: cast_nullable_to_non_nullable
              as List<CollisionArea>,
      interactionZones: null == interactionZones
          ? _value._interactionZones
          : interactionZones // ignore: cast_nullable_to_non_nullable
              as List<InteractionZone>,
      transitions: null == transitions
          ? _value._transitions
          : transitions // ignore: cast_nullable_to_non_nullable
              as List<MapTransition>,
      spawnPoint: freezed == spawnPoint
          ? _value.spawnPoint
          : spawnPoint // ignore: cast_nullable_to_non_nullable
              as PlayerPosition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityMapImpl implements _CityMap {
  const _$CityMapImpl(
      {required this.cityId,
      required this.name,
      required this.width,
      required this.height,
      required this.backgroundImagePath,
      final List<Building> buildings = const [],
      final List<NpcPosition> npcs = const [],
      final List<CollisionArea> collisionAreas = const [],
      final List<InteractionZone> interactionZones = const [],
      final List<MapTransition> transitions = const [],
      this.spawnPoint})
      : _buildings = buildings,
        _npcs = npcs,
        _collisionAreas = collisionAreas,
        _interactionZones = interactionZones,
        _transitions = transitions;

  factory _$CityMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityMapImplFromJson(json);

  @override
  final String cityId;
  @override
  final String name;
  @override
  final double width;
  @override
  final double height;
  @override
  final String backgroundImagePath;
  final List<Building> _buildings;
  @override
  @JsonKey()
  List<Building> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  final List<NpcPosition> _npcs;
  @override
  @JsonKey()
  List<NpcPosition> get npcs {
    if (_npcs is EqualUnmodifiableListView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_npcs);
  }

  final List<CollisionArea> _collisionAreas;
  @override
  @JsonKey()
  List<CollisionArea> get collisionAreas {
    if (_collisionAreas is EqualUnmodifiableListView) return _collisionAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collisionAreas);
  }

  final List<InteractionZone> _interactionZones;
  @override
  @JsonKey()
  List<InteractionZone> get interactionZones {
    if (_interactionZones is EqualUnmodifiableListView)
      return _interactionZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interactionZones);
  }

  final List<MapTransition> _transitions;
  @override
  @JsonKey()
  List<MapTransition> get transitions {
    if (_transitions is EqualUnmodifiableListView) return _transitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transitions);
  }

  @override
  final PlayerPosition? spawnPoint;

  @override
  String toString() {
    return 'CityMap(cityId: $cityId, name: $name, width: $width, height: $height, backgroundImagePath: $backgroundImagePath, buildings: $buildings, npcs: $npcs, collisionAreas: $collisionAreas, interactionZones: $interactionZones, transitions: $transitions, spawnPoint: $spawnPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityMapImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.backgroundImagePath, backgroundImagePath) ||
                other.backgroundImagePath == backgroundImagePath) &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs) &&
            const DeepCollectionEquality()
                .equals(other._collisionAreas, _collisionAreas) &&
            const DeepCollectionEquality()
                .equals(other._interactionZones, _interactionZones) &&
            const DeepCollectionEquality()
                .equals(other._transitions, _transitions) &&
            (identical(other.spawnPoint, spawnPoint) ||
                other.spawnPoint == spawnPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityId,
      name,
      width,
      height,
      backgroundImagePath,
      const DeepCollectionEquality().hash(_buildings),
      const DeepCollectionEquality().hash(_npcs),
      const DeepCollectionEquality().hash(_collisionAreas),
      const DeepCollectionEquality().hash(_interactionZones),
      const DeepCollectionEquality().hash(_transitions),
      spawnPoint);

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityMapImplCopyWith<_$CityMapImpl> get copyWith =>
      __$$CityMapImplCopyWithImpl<_$CityMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityMapImplToJson(
      this,
    );
  }
}

abstract class _CityMap implements CityMap {
  const factory _CityMap(
      {required final String cityId,
      required final String name,
      required final double width,
      required final double height,
      required final String backgroundImagePath,
      final List<Building> buildings,
      final List<NpcPosition> npcs,
      final List<CollisionArea> collisionAreas,
      final List<InteractionZone> interactionZones,
      final List<MapTransition> transitions,
      final PlayerPosition? spawnPoint}) = _$CityMapImpl;

  factory _CityMap.fromJson(Map<String, dynamic> json) = _$CityMapImpl.fromJson;

  @override
  String get cityId;
  @override
  String get name;
  @override
  double get width;
  @override
  double get height;
  @override
  String get backgroundImagePath;
  @override
  List<Building> get buildings;
  @override
  List<NpcPosition> get npcs;
  @override
  List<CollisionArea> get collisionAreas;
  @override
  List<InteractionZone> get interactionZones;
  @override
  List<MapTransition> get transitions;
  @override
  PlayerPosition? get spawnPoint;

  /// Create a copy of CityMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityMapImplCopyWith<_$CityMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Building _$BuildingFromJson(Map<String, dynamic> json) {
  return _Building.fromJson(json);
}

/// @nodoc
mixin _$Building {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  BuildingType get type => throw _privateConstructorUsedError;
  MapRect get bounds => throw _privateConstructorUsedError;
  String get entranceRoute =>
      throw _privateConstructorUsedError; // GoRouter route to navigate to
  List<String> get requiredItems => throw _privateConstructorUsedError;
  int get minReputation => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;

  /// Serializes this Building to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res, Building>;
  @useResult
  $Res call(
      {String id,
      String name,
      BuildingType type,
      MapRect bounds,
      String entranceRoute,
      List<String> requiredItems,
      int minReputation,
      String? iconPath});

  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res, $Val extends Building>
    implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? bounds = null,
    Object? entranceRoute = null,
    Object? requiredItems = null,
    Object? minReputation = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BuildingType,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      entranceRoute: null == entranceRoute
          ? _value.entranceRoute
          : entranceRoute // ignore: cast_nullable_to_non_nullable
              as String,
      requiredItems: null == requiredItems
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minReputation: null == minReputation
          ? _value.minReputation
          : minReputation // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapRectCopyWith<$Res> get bounds {
    return $MapRectCopyWith<$Res>(_value.bounds, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuildingImplCopyWith<$Res>
    implements $BuildingCopyWith<$Res> {
  factory _$$BuildingImplCopyWith(
          _$BuildingImpl value, $Res Function(_$BuildingImpl) then) =
      __$$BuildingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      BuildingType type,
      MapRect bounds,
      String entranceRoute,
      List<String> requiredItems,
      int minReputation,
      String? iconPath});

  @override
  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class __$$BuildingImplCopyWithImpl<$Res>
    extends _$BuildingCopyWithImpl<$Res, _$BuildingImpl>
    implements _$$BuildingImplCopyWith<$Res> {
  __$$BuildingImplCopyWithImpl(
      _$BuildingImpl _value, $Res Function(_$BuildingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? bounds = null,
    Object? entranceRoute = null,
    Object? requiredItems = null,
    Object? minReputation = null,
    Object? iconPath = freezed,
  }) {
    return _then(_$BuildingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BuildingType,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      entranceRoute: null == entranceRoute
          ? _value.entranceRoute
          : entranceRoute // ignore: cast_nullable_to_non_nullable
              as String,
      requiredItems: null == requiredItems
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minReputation: null == minReputation
          ? _value.minReputation
          : minReputation // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingImpl implements _Building {
  const _$BuildingImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.bounds,
      required this.entranceRoute,
      final List<String> requiredItems = const [],
      this.minReputation = 0,
      this.iconPath})
      : _requiredItems = requiredItems;

  factory _$BuildingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildingImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final BuildingType type;
  @override
  final MapRect bounds;
  @override
  final String entranceRoute;
// GoRouter route to navigate to
  final List<String> _requiredItems;
// GoRouter route to navigate to
  @override
  @JsonKey()
  List<String> get requiredItems {
    if (_requiredItems is EqualUnmodifiableListView) return _requiredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredItems);
  }

  @override
  @JsonKey()
  final int minReputation;
  @override
  final String? iconPath;

  @override
  String toString() {
    return 'Building(id: $id, name: $name, type: $type, bounds: $bounds, entranceRoute: $entranceRoute, requiredItems: $requiredItems, minReputation: $minReputation, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.entranceRoute, entranceRoute) ||
                other.entranceRoute == entranceRoute) &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems) &&
            (identical(other.minReputation, minReputation) ||
                other.minReputation == minReputation) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      bounds,
      entranceRoute,
      const DeepCollectionEquality().hash(_requiredItems),
      minReputation,
      iconPath);

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingImplCopyWith<_$BuildingImpl> get copyWith =>
      __$$BuildingImplCopyWithImpl<_$BuildingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildingImplToJson(
      this,
    );
  }
}

abstract class _Building implements Building {
  const factory _Building(
      {required final String id,
      required final String name,
      required final BuildingType type,
      required final MapRect bounds,
      required final String entranceRoute,
      final List<String> requiredItems,
      final int minReputation,
      final String? iconPath}) = _$BuildingImpl;

  factory _Building.fromJson(Map<String, dynamic> json) =
      _$BuildingImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  BuildingType get type;
  @override
  MapRect get bounds;
  @override
  String get entranceRoute; // GoRouter route to navigate to
  @override
  List<String> get requiredItems;
  @override
  int get minReputation;
  @override
  String? get iconPath;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildingImplCopyWith<_$BuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NpcPosition _$NpcPositionFromJson(Map<String, dynamic> json) {
  return _NpcPosition.fromJson(json);
}

/// @nodoc
mixin _$NpcPosition {
  String get npcId => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  Direction get facing => throw _privateConstructorUsedError;
  bool get isInteractable => throw _privateConstructorUsedError;
  bool get hasQuest => throw _privateConstructorUsedError;
  String? get spriteSheet => throw _privateConstructorUsedError;

  /// Serializes this NpcPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NpcPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NpcPositionCopyWith<NpcPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NpcPositionCopyWith<$Res> {
  factory $NpcPositionCopyWith(
          NpcPosition value, $Res Function(NpcPosition) then) =
      _$NpcPositionCopyWithImpl<$Res, NpcPosition>;
  @useResult
  $Res call(
      {String npcId,
      double x,
      double y,
      Direction facing,
      bool isInteractable,
      bool hasQuest,
      String? spriteSheet});
}

/// @nodoc
class _$NpcPositionCopyWithImpl<$Res, $Val extends NpcPosition>
    implements $NpcPositionCopyWith<$Res> {
  _$NpcPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NpcPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? npcId = null,
    Object? x = null,
    Object? y = null,
    Object? facing = null,
    Object? isInteractable = null,
    Object? hasQuest = null,
    Object? spriteSheet = freezed,
  }) {
    return _then(_value.copyWith(
      npcId: null == npcId
          ? _value.npcId
          : npcId // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      facing: null == facing
          ? _value.facing
          : facing // ignore: cast_nullable_to_non_nullable
              as Direction,
      isInteractable: null == isInteractable
          ? _value.isInteractable
          : isInteractable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasQuest: null == hasQuest
          ? _value.hasQuest
          : hasQuest // ignore: cast_nullable_to_non_nullable
              as bool,
      spriteSheet: freezed == spriteSheet
          ? _value.spriteSheet
          : spriteSheet // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NpcPositionImplCopyWith<$Res>
    implements $NpcPositionCopyWith<$Res> {
  factory _$$NpcPositionImplCopyWith(
          _$NpcPositionImpl value, $Res Function(_$NpcPositionImpl) then) =
      __$$NpcPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String npcId,
      double x,
      double y,
      Direction facing,
      bool isInteractable,
      bool hasQuest,
      String? spriteSheet});
}

/// @nodoc
class __$$NpcPositionImplCopyWithImpl<$Res>
    extends _$NpcPositionCopyWithImpl<$Res, _$NpcPositionImpl>
    implements _$$NpcPositionImplCopyWith<$Res> {
  __$$NpcPositionImplCopyWithImpl(
      _$NpcPositionImpl _value, $Res Function(_$NpcPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of NpcPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? npcId = null,
    Object? x = null,
    Object? y = null,
    Object? facing = null,
    Object? isInteractable = null,
    Object? hasQuest = null,
    Object? spriteSheet = freezed,
  }) {
    return _then(_$NpcPositionImpl(
      npcId: null == npcId
          ? _value.npcId
          : npcId // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      facing: null == facing
          ? _value.facing
          : facing // ignore: cast_nullable_to_non_nullable
              as Direction,
      isInteractable: null == isInteractable
          ? _value.isInteractable
          : isInteractable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasQuest: null == hasQuest
          ? _value.hasQuest
          : hasQuest // ignore: cast_nullable_to_non_nullable
              as bool,
      spriteSheet: freezed == spriteSheet
          ? _value.spriteSheet
          : spriteSheet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NpcPositionImpl implements _NpcPosition {
  const _$NpcPositionImpl(
      {required this.npcId,
      required this.x,
      required this.y,
      this.facing = Direction.down,
      this.isInteractable = true,
      this.hasQuest = false,
      this.spriteSheet});

  factory _$NpcPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NpcPositionImplFromJson(json);

  @override
  final String npcId;
  @override
  final double x;
  @override
  final double y;
  @override
  @JsonKey()
  final Direction facing;
  @override
  @JsonKey()
  final bool isInteractable;
  @override
  @JsonKey()
  final bool hasQuest;
  @override
  final String? spriteSheet;

  @override
  String toString() {
    return 'NpcPosition(npcId: $npcId, x: $x, y: $y, facing: $facing, isInteractable: $isInteractable, hasQuest: $hasQuest, spriteSheet: $spriteSheet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NpcPositionImpl &&
            (identical(other.npcId, npcId) || other.npcId == npcId) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.facing, facing) || other.facing == facing) &&
            (identical(other.isInteractable, isInteractable) ||
                other.isInteractable == isInteractable) &&
            (identical(other.hasQuest, hasQuest) ||
                other.hasQuest == hasQuest) &&
            (identical(other.spriteSheet, spriteSheet) ||
                other.spriteSheet == spriteSheet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, npcId, x, y, facing, isInteractable, hasQuest, spriteSheet);

  /// Create a copy of NpcPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NpcPositionImplCopyWith<_$NpcPositionImpl> get copyWith =>
      __$$NpcPositionImplCopyWithImpl<_$NpcPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NpcPositionImplToJson(
      this,
    );
  }
}

abstract class _NpcPosition implements NpcPosition {
  const factory _NpcPosition(
      {required final String npcId,
      required final double x,
      required final double y,
      final Direction facing,
      final bool isInteractable,
      final bool hasQuest,
      final String? spriteSheet}) = _$NpcPositionImpl;

  factory _NpcPosition.fromJson(Map<String, dynamic> json) =
      _$NpcPositionImpl.fromJson;

  @override
  String get npcId;
  @override
  double get x;
  @override
  double get y;
  @override
  Direction get facing;
  @override
  bool get isInteractable;
  @override
  bool get hasQuest;
  @override
  String? get spriteSheet;

  /// Create a copy of NpcPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NpcPositionImplCopyWith<_$NpcPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollisionArea _$CollisionAreaFromJson(Map<String, dynamic> json) {
  return _CollisionArea.fromJson(json);
}

/// @nodoc
mixin _$CollisionArea {
  MapRect get bounds => throw _privateConstructorUsedError;
  CollisionType get type => throw _privateConstructorUsedError;

  /// Serializes this CollisionArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollisionAreaCopyWith<CollisionArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollisionAreaCopyWith<$Res> {
  factory $CollisionAreaCopyWith(
          CollisionArea value, $Res Function(CollisionArea) then) =
      _$CollisionAreaCopyWithImpl<$Res, CollisionArea>;
  @useResult
  $Res call({MapRect bounds, CollisionType type});

  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class _$CollisionAreaCopyWithImpl<$Res, $Val extends CollisionArea>
    implements $CollisionAreaCopyWith<$Res> {
  _$CollisionAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollisionType,
    ) as $Val);
  }

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapRectCopyWith<$Res> get bounds {
    return $MapRectCopyWith<$Res>(_value.bounds, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollisionAreaImplCopyWith<$Res>
    implements $CollisionAreaCopyWith<$Res> {
  factory _$$CollisionAreaImplCopyWith(
          _$CollisionAreaImpl value, $Res Function(_$CollisionAreaImpl) then) =
      __$$CollisionAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MapRect bounds, CollisionType type});

  @override
  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class __$$CollisionAreaImplCopyWithImpl<$Res>
    extends _$CollisionAreaCopyWithImpl<$Res, _$CollisionAreaImpl>
    implements _$$CollisionAreaImplCopyWith<$Res> {
  __$$CollisionAreaImplCopyWithImpl(
      _$CollisionAreaImpl _value, $Res Function(_$CollisionAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? type = null,
  }) {
    return _then(_$CollisionAreaImpl(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollisionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollisionAreaImpl implements _CollisionArea {
  const _$CollisionAreaImpl({required this.bounds, required this.type});

  factory _$CollisionAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollisionAreaImplFromJson(json);

  @override
  final MapRect bounds;
  @override
  final CollisionType type;

  @override
  String toString() {
    return 'CollisionArea(bounds: $bounds, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollisionAreaImpl &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bounds, type);

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollisionAreaImplCopyWith<_$CollisionAreaImpl> get copyWith =>
      __$$CollisionAreaImplCopyWithImpl<_$CollisionAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollisionAreaImplToJson(
      this,
    );
  }
}

abstract class _CollisionArea implements CollisionArea {
  const factory _CollisionArea(
      {required final MapRect bounds,
      required final CollisionType type}) = _$CollisionAreaImpl;

  factory _CollisionArea.fromJson(Map<String, dynamic> json) =
      _$CollisionAreaImpl.fromJson;

  @override
  MapRect get bounds;
  @override
  CollisionType get type;

  /// Create a copy of CollisionArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollisionAreaImplCopyWith<_$CollisionAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionZone _$InteractionZoneFromJson(Map<String, dynamic> json) {
  return _InteractionZone.fromJson(json);
}

/// @nodoc
mixin _$InteractionZone {
  String get id => throw _privateConstructorUsedError;
  MapRect get bounds => throw _privateConstructorUsedError;
  InteractionType get type => throw _privateConstructorUsedError;
  String? get targetId =>
      throw _privateConstructorUsedError; // Quest ID, dialogue ID, etc.
  bool get requiresPlayerAction => throw _privateConstructorUsedError;

  /// Serializes this InteractionZone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionZoneCopyWith<InteractionZone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionZoneCopyWith<$Res> {
  factory $InteractionZoneCopyWith(
          InteractionZone value, $Res Function(InteractionZone) then) =
      _$InteractionZoneCopyWithImpl<$Res, InteractionZone>;
  @useResult
  $Res call(
      {String id,
      MapRect bounds,
      InteractionType type,
      String? targetId,
      bool requiresPlayerAction});

  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class _$InteractionZoneCopyWithImpl<$Res, $Val extends InteractionZone>
    implements $InteractionZoneCopyWith<$Res> {
  _$InteractionZoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bounds = null,
    Object? type = null,
    Object? targetId = freezed,
    Object? requiresPlayerAction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionType,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresPlayerAction: null == requiresPlayerAction
          ? _value.requiresPlayerAction
          : requiresPlayerAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapRectCopyWith<$Res> get bounds {
    return $MapRectCopyWith<$Res>(_value.bounds, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InteractionZoneImplCopyWith<$Res>
    implements $InteractionZoneCopyWith<$Res> {
  factory _$$InteractionZoneImplCopyWith(_$InteractionZoneImpl value,
          $Res Function(_$InteractionZoneImpl) then) =
      __$$InteractionZoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MapRect bounds,
      InteractionType type,
      String? targetId,
      bool requiresPlayerAction});

  @override
  $MapRectCopyWith<$Res> get bounds;
}

/// @nodoc
class __$$InteractionZoneImplCopyWithImpl<$Res>
    extends _$InteractionZoneCopyWithImpl<$Res, _$InteractionZoneImpl>
    implements _$$InteractionZoneImplCopyWith<$Res> {
  __$$InteractionZoneImplCopyWithImpl(
      _$InteractionZoneImpl _value, $Res Function(_$InteractionZoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bounds = null,
    Object? type = null,
    Object? targetId = freezed,
    Object? requiresPlayerAction = null,
  }) {
    return _then(_$InteractionZoneImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionType,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresPlayerAction: null == requiresPlayerAction
          ? _value.requiresPlayerAction
          : requiresPlayerAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionZoneImpl implements _InteractionZone {
  const _$InteractionZoneImpl(
      {required this.id,
      required this.bounds,
      required this.type,
      this.targetId,
      this.requiresPlayerAction = false});

  factory _$InteractionZoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionZoneImplFromJson(json);

  @override
  final String id;
  @override
  final MapRect bounds;
  @override
  final InteractionType type;
  @override
  final String? targetId;
// Quest ID, dialogue ID, etc.
  @override
  @JsonKey()
  final bool requiresPlayerAction;

  @override
  String toString() {
    return 'InteractionZone(id: $id, bounds: $bounds, type: $type, targetId: $targetId, requiresPlayerAction: $requiresPlayerAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionZoneImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.requiresPlayerAction, requiresPlayerAction) ||
                other.requiresPlayerAction == requiresPlayerAction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bounds, type, targetId, requiresPlayerAction);

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionZoneImplCopyWith<_$InteractionZoneImpl> get copyWith =>
      __$$InteractionZoneImplCopyWithImpl<_$InteractionZoneImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionZoneImplToJson(
      this,
    );
  }
}

abstract class _InteractionZone implements InteractionZone {
  const factory _InteractionZone(
      {required final String id,
      required final MapRect bounds,
      required final InteractionType type,
      final String? targetId,
      final bool requiresPlayerAction}) = _$InteractionZoneImpl;

  factory _InteractionZone.fromJson(Map<String, dynamic> json) =
      _$InteractionZoneImpl.fromJson;

  @override
  String get id;
  @override
  MapRect get bounds;
  @override
  InteractionType get type;
  @override
  String? get targetId; // Quest ID, dialogue ID, etc.
  @override
  bool get requiresPlayerAction;

  /// Create a copy of InteractionZone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionZoneImplCopyWith<_$InteractionZoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapTransition _$MapTransitionFromJson(Map<String, dynamic> json) {
  return _MapTransition.fromJson(json);
}

/// @nodoc
mixin _$MapTransition {
  String get id => throw _privateConstructorUsedError;
  MapRect get triggerBounds => throw _privateConstructorUsedError;
  String get targetMapId =>
      throw _privateConstructorUsedError; // 'world_map', 'athens_harbor', etc.
  PlayerPosition? get targetPosition => throw _privateConstructorUsedError;
  bool get requiresConfirmation => throw _privateConstructorUsedError;

  /// Serializes this MapTransition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapTransitionCopyWith<MapTransition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTransitionCopyWith<$Res> {
  factory $MapTransitionCopyWith(
          MapTransition value, $Res Function(MapTransition) then) =
      _$MapTransitionCopyWithImpl<$Res, MapTransition>;
  @useResult
  $Res call(
      {String id,
      MapRect triggerBounds,
      String targetMapId,
      PlayerPosition? targetPosition,
      bool requiresConfirmation});

  $MapRectCopyWith<$Res> get triggerBounds;
  $PlayerPositionCopyWith<$Res>? get targetPosition;
}

/// @nodoc
class _$MapTransitionCopyWithImpl<$Res, $Val extends MapTransition>
    implements $MapTransitionCopyWith<$Res> {
  _$MapTransitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? triggerBounds = null,
    Object? targetMapId = null,
    Object? targetPosition = freezed,
    Object? requiresConfirmation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      triggerBounds: null == triggerBounds
          ? _value.triggerBounds
          : triggerBounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      targetMapId: null == targetMapId
          ? _value.targetMapId
          : targetMapId // ignore: cast_nullable_to_non_nullable
              as String,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PlayerPosition?,
      requiresConfirmation: null == requiresConfirmation
          ? _value.requiresConfirmation
          : requiresConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapRectCopyWith<$Res> get triggerBounds {
    return $MapRectCopyWith<$Res>(_value.triggerBounds, (value) {
      return _then(_value.copyWith(triggerBounds: value) as $Val);
    });
  }

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerPositionCopyWith<$Res>? get targetPosition {
    if (_value.targetPosition == null) {
      return null;
    }

    return $PlayerPositionCopyWith<$Res>(_value.targetPosition!, (value) {
      return _then(_value.copyWith(targetPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapTransitionImplCopyWith<$Res>
    implements $MapTransitionCopyWith<$Res> {
  factory _$$MapTransitionImplCopyWith(
          _$MapTransitionImpl value, $Res Function(_$MapTransitionImpl) then) =
      __$$MapTransitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MapRect triggerBounds,
      String targetMapId,
      PlayerPosition? targetPosition,
      bool requiresConfirmation});

  @override
  $MapRectCopyWith<$Res> get triggerBounds;
  @override
  $PlayerPositionCopyWith<$Res>? get targetPosition;
}

/// @nodoc
class __$$MapTransitionImplCopyWithImpl<$Res>
    extends _$MapTransitionCopyWithImpl<$Res, _$MapTransitionImpl>
    implements _$$MapTransitionImplCopyWith<$Res> {
  __$$MapTransitionImplCopyWithImpl(
      _$MapTransitionImpl _value, $Res Function(_$MapTransitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? triggerBounds = null,
    Object? targetMapId = null,
    Object? targetPosition = freezed,
    Object? requiresConfirmation = null,
  }) {
    return _then(_$MapTransitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      triggerBounds: null == triggerBounds
          ? _value.triggerBounds
          : triggerBounds // ignore: cast_nullable_to_non_nullable
              as MapRect,
      targetMapId: null == targetMapId
          ? _value.targetMapId
          : targetMapId // ignore: cast_nullable_to_non_nullable
              as String,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PlayerPosition?,
      requiresConfirmation: null == requiresConfirmation
          ? _value.requiresConfirmation
          : requiresConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapTransitionImpl implements _MapTransition {
  const _$MapTransitionImpl(
      {required this.id,
      required this.triggerBounds,
      required this.targetMapId,
      required this.targetPosition,
      this.requiresConfirmation = false});

  factory _$MapTransitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapTransitionImplFromJson(json);

  @override
  final String id;
  @override
  final MapRect triggerBounds;
  @override
  final String targetMapId;
// 'world_map', 'athens_harbor', etc.
  @override
  final PlayerPosition? targetPosition;
  @override
  @JsonKey()
  final bool requiresConfirmation;

  @override
  String toString() {
    return 'MapTransition(id: $id, triggerBounds: $triggerBounds, targetMapId: $targetMapId, targetPosition: $targetPosition, requiresConfirmation: $requiresConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTransitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.triggerBounds, triggerBounds) ||
                other.triggerBounds == triggerBounds) &&
            (identical(other.targetMapId, targetMapId) ||
                other.targetMapId == targetMapId) &&
            (identical(other.targetPosition, targetPosition) ||
                other.targetPosition == targetPosition) &&
            (identical(other.requiresConfirmation, requiresConfirmation) ||
                other.requiresConfirmation == requiresConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, triggerBounds, targetMapId,
      targetPosition, requiresConfirmation);

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTransitionImplCopyWith<_$MapTransitionImpl> get copyWith =>
      __$$MapTransitionImplCopyWithImpl<_$MapTransitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapTransitionImplToJson(
      this,
    );
  }
}

abstract class _MapTransition implements MapTransition {
  const factory _MapTransition(
      {required final String id,
      required final MapRect triggerBounds,
      required final String targetMapId,
      required final PlayerPosition? targetPosition,
      final bool requiresConfirmation}) = _$MapTransitionImpl;

  factory _MapTransition.fromJson(Map<String, dynamic> json) =
      _$MapTransitionImpl.fromJson;

  @override
  String get id;
  @override
  MapRect get triggerBounds;
  @override
  String get targetMapId; // 'world_map', 'athens_harbor', etc.
  @override
  PlayerPosition? get targetPosition;
  @override
  bool get requiresConfirmation;

  /// Create a copy of MapTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapTransitionImplCopyWith<_$MapTransitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapRect _$MapRectFromJson(Map<String, dynamic> json) {
  return _MapRect.fromJson(json);
}

/// @nodoc
mixin _$MapRect {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Serializes this MapRect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapRectCopyWith<MapRect> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRectCopyWith<$Res> {
  factory $MapRectCopyWith(MapRect value, $Res Function(MapRect) then) =
      _$MapRectCopyWithImpl<$Res, MapRect>;
  @useResult
  $Res call({double x, double y, double width, double height});
}

/// @nodoc
class _$MapRectCopyWithImpl<$Res, $Val extends MapRect>
    implements $MapRectCopyWith<$Res> {
  _$MapRectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapRect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRectImplCopyWith<$Res> implements $MapRectCopyWith<$Res> {
  factory _$$MapRectImplCopyWith(
          _$MapRectImpl value, $Res Function(_$MapRectImpl) then) =
      __$$MapRectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double width, double height});
}

/// @nodoc
class __$$MapRectImplCopyWithImpl<$Res>
    extends _$MapRectCopyWithImpl<$Res, _$MapRectImpl>
    implements _$$MapRectImplCopyWith<$Res> {
  __$$MapRectImplCopyWithImpl(
      _$MapRectImpl _value, $Res Function(_$MapRectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapRect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$MapRectImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapRectImpl implements _MapRect {
  const _$MapRectImpl(
      {required this.x,
      required this.y,
      required this.width,
      required this.height});

  factory _$MapRectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapRectImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'MapRect(x: $x, y: $y, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRectImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, width, height);

  /// Create a copy of MapRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRectImplCopyWith<_$MapRectImpl> get copyWith =>
      __$$MapRectImplCopyWithImpl<_$MapRectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapRectImplToJson(
      this,
    );
  }
}

abstract class _MapRect implements MapRect {
  const factory _MapRect(
      {required final double x,
      required final double y,
      required final double width,
      required final double height}) = _$MapRectImpl;

  factory _MapRect.fromJson(Map<String, dynamic> json) = _$MapRectImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get width;
  @override
  double get height;

  /// Create a copy of MapRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapRectImplCopyWith<_$MapRectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
