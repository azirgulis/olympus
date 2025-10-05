// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'world_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityLocation _$CityLocationFromJson(Map<String, dynamic> json) {
  return _CityLocation.fromJson(json);
}

/// @nodoc
mixin _$CityLocation {
  String get cityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get x =>
      throw _privateConstructorUsedError; // Position on world map (0-1000)
  double get y =>
      throw _privateConstructorUsedError; // Position on world map (0-1000)
  String get iconPath => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  bool get isCurrentLocation => throw _privateConstructorUsedError;
  List<String> get connectedCities => throw _privateConstructorUsedError;
  int? get travelCostDrachmae => throw _privateConstructorUsedError;
  int? get travelTimeMinutes => throw _privateConstructorUsedError;
  String? get specialFeature => throw _privateConstructorUsedError;

  /// Serializes this CityLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityLocationCopyWith<CityLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityLocationCopyWith<$Res> {
  factory $CityLocationCopyWith(
          CityLocation value, $Res Function(CityLocation) then) =
      _$CityLocationCopyWithImpl<$Res, CityLocation>;
  @useResult
  $Res call(
      {String cityId,
      String name,
      String description,
      double x,
      double y,
      String iconPath,
      bool isUnlocked,
      bool isCurrentLocation,
      List<String> connectedCities,
      int? travelCostDrachmae,
      int? travelTimeMinutes,
      String? specialFeature});
}

/// @nodoc
class _$CityLocationCopyWithImpl<$Res, $Val extends CityLocation>
    implements $CityLocationCopyWith<$Res> {
  _$CityLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? name = null,
    Object? description = null,
    Object? x = null,
    Object? y = null,
    Object? iconPath = null,
    Object? isUnlocked = null,
    Object? isCurrentLocation = null,
    Object? connectedCities = null,
    Object? travelCostDrachmae = freezed,
    Object? travelTimeMinutes = freezed,
    Object? specialFeature = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrentLocation: null == isCurrentLocation
          ? _value.isCurrentLocation
          : isCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      connectedCities: null == connectedCities
          ? _value.connectedCities
          : connectedCities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      travelCostDrachmae: freezed == travelCostDrachmae
          ? _value.travelCostDrachmae
          : travelCostDrachmae // ignore: cast_nullable_to_non_nullable
              as int?,
      travelTimeMinutes: freezed == travelTimeMinutes
          ? _value.travelTimeMinutes
          : travelTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      specialFeature: freezed == specialFeature
          ? _value.specialFeature
          : specialFeature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityLocationImplCopyWith<$Res>
    implements $CityLocationCopyWith<$Res> {
  factory _$$CityLocationImplCopyWith(
          _$CityLocationImpl value, $Res Function(_$CityLocationImpl) then) =
      __$$CityLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityId,
      String name,
      String description,
      double x,
      double y,
      String iconPath,
      bool isUnlocked,
      bool isCurrentLocation,
      List<String> connectedCities,
      int? travelCostDrachmae,
      int? travelTimeMinutes,
      String? specialFeature});
}

/// @nodoc
class __$$CityLocationImplCopyWithImpl<$Res>
    extends _$CityLocationCopyWithImpl<$Res, _$CityLocationImpl>
    implements _$$CityLocationImplCopyWith<$Res> {
  __$$CityLocationImplCopyWithImpl(
      _$CityLocationImpl _value, $Res Function(_$CityLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? name = null,
    Object? description = null,
    Object? x = null,
    Object? y = null,
    Object? iconPath = null,
    Object? isUnlocked = null,
    Object? isCurrentLocation = null,
    Object? connectedCities = null,
    Object? travelCostDrachmae = freezed,
    Object? travelTimeMinutes = freezed,
    Object? specialFeature = freezed,
  }) {
    return _then(_$CityLocationImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrentLocation: null == isCurrentLocation
          ? _value.isCurrentLocation
          : isCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      connectedCities: null == connectedCities
          ? _value._connectedCities
          : connectedCities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      travelCostDrachmae: freezed == travelCostDrachmae
          ? _value.travelCostDrachmae
          : travelCostDrachmae // ignore: cast_nullable_to_non_nullable
              as int?,
      travelTimeMinutes: freezed == travelTimeMinutes
          ? _value.travelTimeMinutes
          : travelTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      specialFeature: freezed == specialFeature
          ? _value.specialFeature
          : specialFeature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityLocationImpl implements _CityLocation {
  const _$CityLocationImpl(
      {required this.cityId,
      required this.name,
      required this.description,
      required this.x,
      required this.y,
      required this.iconPath,
      this.isUnlocked = false,
      this.isCurrentLocation = false,
      final List<String> connectedCities = const [],
      this.travelCostDrachmae,
      this.travelTimeMinutes,
      this.specialFeature})
      : _connectedCities = connectedCities;

  factory _$CityLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityLocationImplFromJson(json);

  @override
  final String cityId;
  @override
  final String name;
  @override
  final String description;
  @override
  final double x;
// Position on world map (0-1000)
  @override
  final double y;
// Position on world map (0-1000)
  @override
  final String iconPath;
  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  @JsonKey()
  final bool isCurrentLocation;
  final List<String> _connectedCities;
  @override
  @JsonKey()
  List<String> get connectedCities {
    if (_connectedCities is EqualUnmodifiableListView) return _connectedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedCities);
  }

  @override
  final int? travelCostDrachmae;
  @override
  final int? travelTimeMinutes;
  @override
  final String? specialFeature;

  @override
  String toString() {
    return 'CityLocation(cityId: $cityId, name: $name, description: $description, x: $x, y: $y, iconPath: $iconPath, isUnlocked: $isUnlocked, isCurrentLocation: $isCurrentLocation, connectedCities: $connectedCities, travelCostDrachmae: $travelCostDrachmae, travelTimeMinutes: $travelTimeMinutes, specialFeature: $specialFeature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityLocationImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.isCurrentLocation, isCurrentLocation) ||
                other.isCurrentLocation == isCurrentLocation) &&
            const DeepCollectionEquality()
                .equals(other._connectedCities, _connectedCities) &&
            (identical(other.travelCostDrachmae, travelCostDrachmae) ||
                other.travelCostDrachmae == travelCostDrachmae) &&
            (identical(other.travelTimeMinutes, travelTimeMinutes) ||
                other.travelTimeMinutes == travelTimeMinutes) &&
            (identical(other.specialFeature, specialFeature) ||
                other.specialFeature == specialFeature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityId,
      name,
      description,
      x,
      y,
      iconPath,
      isUnlocked,
      isCurrentLocation,
      const DeepCollectionEquality().hash(_connectedCities),
      travelCostDrachmae,
      travelTimeMinutes,
      specialFeature);

  /// Create a copy of CityLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityLocationImplCopyWith<_$CityLocationImpl> get copyWith =>
      __$$CityLocationImplCopyWithImpl<_$CityLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityLocationImplToJson(
      this,
    );
  }
}

abstract class _CityLocation implements CityLocation {
  const factory _CityLocation(
      {required final String cityId,
      required final String name,
      required final String description,
      required final double x,
      required final double y,
      required final String iconPath,
      final bool isUnlocked,
      final bool isCurrentLocation,
      final List<String> connectedCities,
      final int? travelCostDrachmae,
      final int? travelTimeMinutes,
      final String? specialFeature}) = _$CityLocationImpl;

  factory _CityLocation.fromJson(Map<String, dynamic> json) =
      _$CityLocationImpl.fromJson;

  @override
  String get cityId;
  @override
  String get name;
  @override
  String get description;
  @override
  double get x; // Position on world map (0-1000)
  @override
  double get y; // Position on world map (0-1000)
  @override
  String get iconPath;
  @override
  bool get isUnlocked;
  @override
  bool get isCurrentLocation;
  @override
  List<String> get connectedCities;
  @override
  int? get travelCostDrachmae;
  @override
  int? get travelTimeMinutes;
  @override
  String? get specialFeature;

  /// Create a copy of CityLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityLocationImplCopyWith<_$CityLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelRoute _$TravelRouteFromJson(Map<String, dynamic> json) {
  return _TravelRoute.fromJson(json);
}

/// @nodoc
mixin _$TravelRoute {
  String get fromCityId => throw _privateConstructorUsedError;
  String get toCityId => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError; // in drachmae
  int get duration => throw _privateConstructorUsedError; // in game minutes
  TravelMethod get method => throw _privateConstructorUsedError;
  List<String> get possibleEncounters => throw _privateConstructorUsedError;
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
      {String fromCityId,
      String toCityId,
      int cost,
      int duration,
      TravelMethod method,
      List<String> possibleEncounters,
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
    Object? fromCityId = null,
    Object? toCityId = null,
    Object? cost = null,
    Object? duration = null,
    Object? method = null,
    Object? possibleEncounters = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      fromCityId: null == fromCityId
          ? _value.fromCityId
          : fromCityId // ignore: cast_nullable_to_non_nullable
              as String,
      toCityId: null == toCityId
          ? _value.toCityId
          : toCityId // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as TravelMethod,
      possibleEncounters: null == possibleEncounters
          ? _value.possibleEncounters
          : possibleEncounters // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String fromCityId,
      String toCityId,
      int cost,
      int duration,
      TravelMethod method,
      List<String> possibleEncounters,
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
    Object? fromCityId = null,
    Object? toCityId = null,
    Object? cost = null,
    Object? duration = null,
    Object? method = null,
    Object? possibleEncounters = null,
    Object? description = freezed,
  }) {
    return _then(_$TravelRouteImpl(
      fromCityId: null == fromCityId
          ? _value.fromCityId
          : fromCityId // ignore: cast_nullable_to_non_nullable
              as String,
      toCityId: null == toCityId
          ? _value.toCityId
          : toCityId // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as TravelMethod,
      possibleEncounters: null == possibleEncounters
          ? _value._possibleEncounters
          : possibleEncounters // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {required this.fromCityId,
      required this.toCityId,
      required this.cost,
      required this.duration,
      required this.method,
      final List<String> possibleEncounters = const [],
      this.description})
      : _possibleEncounters = possibleEncounters;

  factory _$TravelRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelRouteImplFromJson(json);

  @override
  final String fromCityId;
  @override
  final String toCityId;
  @override
  final int cost;
// in drachmae
  @override
  final int duration;
// in game minutes
  @override
  final TravelMethod method;
  final List<String> _possibleEncounters;
  @override
  @JsonKey()
  List<String> get possibleEncounters {
    if (_possibleEncounters is EqualUnmodifiableListView)
      return _possibleEncounters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibleEncounters);
  }

  @override
  final String? description;

  @override
  String toString() {
    return 'TravelRoute(fromCityId: $fromCityId, toCityId: $toCityId, cost: $cost, duration: $duration, method: $method, possibleEncounters: $possibleEncounters, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelRouteImpl &&
            (identical(other.fromCityId, fromCityId) ||
                other.fromCityId == fromCityId) &&
            (identical(other.toCityId, toCityId) ||
                other.toCityId == toCityId) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality()
                .equals(other._possibleEncounters, _possibleEncounters) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromCityId,
      toCityId,
      cost,
      duration,
      method,
      const DeepCollectionEquality().hash(_possibleEncounters),
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
      {required final String fromCityId,
      required final String toCityId,
      required final int cost,
      required final int duration,
      required final TravelMethod method,
      final List<String> possibleEncounters,
      final String? description}) = _$TravelRouteImpl;

  factory _TravelRoute.fromJson(Map<String, dynamic> json) =
      _$TravelRouteImpl.fromJson;

  @override
  String get fromCityId;
  @override
  String get toCityId;
  @override
  int get cost; // in drachmae
  @override
  int get duration; // in game minutes
  @override
  TravelMethod get method;
  @override
  List<String> get possibleEncounters;
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
  List<EncounterChoice> get choices => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

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
      String? imageUrl});
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
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
      String? imageUrl});
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
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
      this.imageUrl})
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
  final String? imageUrl;

  @override
  String toString() {
    return 'TravelEncounter(id: $id, title: $title, description: $description, type: $type, choices: $choices, imageUrl: $imageUrl)';
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
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      const DeepCollectionEquality().hash(_choices), imageUrl);

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
      final String? imageUrl}) = _$TravelEncounterImpl;

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
  String? get imageUrl;

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
  List<String>? get requiredItems => throw _privateConstructorUsedError;
  int? get requiredReputation => throw _privateConstructorUsedError;
  int? get requiredDrachmae => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String text,
      EncounterOutcome outcome,
      List<String>? requiredItems,
      int? requiredReputation,
      int? requiredDrachmae});

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
    Object? requiredItems = freezed,
    Object? requiredReputation = freezed,
    Object? requiredDrachmae = freezed,
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
      requiredItems: freezed == requiredItems
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requiredReputation: freezed == requiredReputation
          ? _value.requiredReputation
          : requiredReputation // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredDrachmae: freezed == requiredDrachmae
          ? _value.requiredDrachmae
          : requiredDrachmae // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {String id,
      String text,
      EncounterOutcome outcome,
      List<String>? requiredItems,
      int? requiredReputation,
      int? requiredDrachmae});

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
    Object? requiredItems = freezed,
    Object? requiredReputation = freezed,
    Object? requiredDrachmae = freezed,
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
      requiredItems: freezed == requiredItems
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requiredReputation: freezed == requiredReputation
          ? _value.requiredReputation
          : requiredReputation // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredDrachmae: freezed == requiredDrachmae
          ? _value.requiredDrachmae
          : requiredDrachmae // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterChoiceImpl implements _EncounterChoice {
  const _$EncounterChoiceImpl(
      {required this.id,
      required this.text,
      required this.outcome,
      final List<String>? requiredItems,
      this.requiredReputation,
      this.requiredDrachmae})
      : _requiredItems = requiredItems;

  factory _$EncounterChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterChoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final EncounterOutcome outcome;
  final List<String>? _requiredItems;
  @override
  List<String>? get requiredItems {
    final value = _requiredItems;
    if (value == null) return null;
    if (_requiredItems is EqualUnmodifiableListView) return _requiredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? requiredReputation;
  @override
  final int? requiredDrachmae;

  @override
  String toString() {
    return 'EncounterChoice(id: $id, text: $text, outcome: $outcome, requiredItems: $requiredItems, requiredReputation: $requiredReputation, requiredDrachmae: $requiredDrachmae)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems) &&
            (identical(other.requiredReputation, requiredReputation) ||
                other.requiredReputation == requiredReputation) &&
            (identical(other.requiredDrachmae, requiredDrachmae) ||
                other.requiredDrachmae == requiredDrachmae));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      outcome,
      const DeepCollectionEquality().hash(_requiredItems),
      requiredReputation,
      requiredDrachmae);

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
      required final EncounterOutcome outcome,
      final List<String>? requiredItems,
      final int? requiredReputation,
      final int? requiredDrachmae}) = _$EncounterChoiceImpl;

  factory _EncounterChoice.fromJson(Map<String, dynamic> json) =
      _$EncounterChoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  EncounterOutcome get outcome;
  @override
  List<String>? get requiredItems;
  @override
  int? get requiredReputation;
  @override
  int? get requiredDrachmae;

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
  int? get drachmaeChange => throw _privateConstructorUsedError;
  int? get healthChange => throw _privateConstructorUsedError;
  int? get reputationChange => throw _privateConstructorUsedError;
  int? get experienceChange => throw _privateConstructorUsedError;
  List<String>? get itemsGained => throw _privateConstructorUsedError;
  List<String>? get itemsLost => throw _privateConstructorUsedError;
  String? get questTriggered => throw _privateConstructorUsedError;

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
      int? reputationChange,
      int? experienceChange,
      List<String>? itemsGained,
      List<String>? itemsLost,
      String? questTriggered});
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
    Object? reputationChange = freezed,
    Object? experienceChange = freezed,
    Object? itemsGained = freezed,
    Object? itemsLost = freezed,
    Object? questTriggered = freezed,
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
      reputationChange: freezed == reputationChange
          ? _value.reputationChange
          : reputationChange // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceChange: freezed == experienceChange
          ? _value.experienceChange
          : experienceChange // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsGained: freezed == itemsGained
          ? _value.itemsGained
          : itemsGained // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemsLost: freezed == itemsLost
          ? _value.itemsLost
          : itemsLost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      questTriggered: freezed == questTriggered
          ? _value.questTriggered
          : questTriggered // ignore: cast_nullable_to_non_nullable
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
      int? reputationChange,
      int? experienceChange,
      List<String>? itemsGained,
      List<String>? itemsLost,
      String? questTriggered});
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
    Object? reputationChange = freezed,
    Object? experienceChange = freezed,
    Object? itemsGained = freezed,
    Object? itemsLost = freezed,
    Object? questTriggered = freezed,
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
      reputationChange: freezed == reputationChange
          ? _value.reputationChange
          : reputationChange // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceChange: freezed == experienceChange
          ? _value.experienceChange
          : experienceChange // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsGained: freezed == itemsGained
          ? _value._itemsGained
          : itemsGained // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemsLost: freezed == itemsLost
          ? _value._itemsLost
          : itemsLost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      questTriggered: freezed == questTriggered
          ? _value.questTriggered
          : questTriggered // ignore: cast_nullable_to_non_nullable
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
      this.reputationChange,
      this.experienceChange,
      final List<String>? itemsGained,
      final List<String>? itemsLost,
      this.questTriggered})
      : _itemsGained = itemsGained,
        _itemsLost = itemsLost;

  factory _$EncounterOutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterOutcomeImplFromJson(json);

  @override
  final String resultText;
  @override
  final int? drachmaeChange;
  @override
  final int? healthChange;
  @override
  final int? reputationChange;
  @override
  final int? experienceChange;
  final List<String>? _itemsGained;
  @override
  List<String>? get itemsGained {
    final value = _itemsGained;
    if (value == null) return null;
    if (_itemsGained is EqualUnmodifiableListView) return _itemsGained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _itemsLost;
  @override
  List<String>? get itemsLost {
    final value = _itemsLost;
    if (value == null) return null;
    if (_itemsLost is EqualUnmodifiableListView) return _itemsLost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? questTriggered;

  @override
  String toString() {
    return 'EncounterOutcome(resultText: $resultText, drachmaeChange: $drachmaeChange, healthChange: $healthChange, reputationChange: $reputationChange, experienceChange: $experienceChange, itemsGained: $itemsGained, itemsLost: $itemsLost, questTriggered: $questTriggered)';
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
            (identical(other.reputationChange, reputationChange) ||
                other.reputationChange == reputationChange) &&
            (identical(other.experienceChange, experienceChange) ||
                other.experienceChange == experienceChange) &&
            const DeepCollectionEquality()
                .equals(other._itemsGained, _itemsGained) &&
            const DeepCollectionEquality()
                .equals(other._itemsLost, _itemsLost) &&
            (identical(other.questTriggered, questTriggered) ||
                other.questTriggered == questTriggered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      resultText,
      drachmaeChange,
      healthChange,
      reputationChange,
      experienceChange,
      const DeepCollectionEquality().hash(_itemsGained),
      const DeepCollectionEquality().hash(_itemsLost),
      questTriggered);

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
      final int? reputationChange,
      final int? experienceChange,
      final List<String>? itemsGained,
      final List<String>? itemsLost,
      final String? questTriggered}) = _$EncounterOutcomeImpl;

  factory _EncounterOutcome.fromJson(Map<String, dynamic> json) =
      _$EncounterOutcomeImpl.fromJson;

  @override
  String get resultText;
  @override
  int? get drachmaeChange;
  @override
  int? get healthChange;
  @override
  int? get reputationChange;
  @override
  int? get experienceChange;
  @override
  List<String>? get itemsGained;
  @override
  List<String>? get itemsLost;
  @override
  String? get questTriggered;

  /// Create a copy of EncounterOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncounterOutcomeImplCopyWith<_$EncounterOutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
