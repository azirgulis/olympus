// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'harbor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeRoute _$TradeRouteFromJson(Map<String, dynamic> json) {
  return _TradeRoute.fromJson(json);
}

/// @nodoc
mixin _$TradeRoute {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError; // in nautical miles
  int get baseTravelTime => throw _privateConstructorUsedError; // in hours
  List<TradeGood> get exports =>
      throw _privateConstructorUsedError; // goods Greece sends
  List<TradeGood> get imports =>
      throw _privateConstructorUsedError; // goods Greece receives
  TradeDifficulty get difficulty => throw _privateConstructorUsedError;
  List<String> get risks => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  double? get exchangeRate =>
      throw _privateConstructorUsedError; // relative to drachmae
  String? get specialNotes => throw _privateConstructorUsedError;

  /// Serializes this TradeRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRouteCopyWith<TradeRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRouteCopyWith<$Res> {
  factory $TradeRouteCopyWith(
          TradeRoute value, $Res Function(TradeRoute) then) =
      _$TradeRouteCopyWithImpl<$Res, TradeRoute>;
  @useResult
  $Res call(
      {String id,
      String name,
      String destination,
      String description,
      int distance,
      int baseTravelTime,
      List<TradeGood> exports,
      List<TradeGood> imports,
      TradeDifficulty difficulty,
      List<String> risks,
      bool isUnlocked,
      int reputation,
      double? exchangeRate,
      String? specialNotes});
}

/// @nodoc
class _$TradeRouteCopyWithImpl<$Res, $Val extends TradeRoute>
    implements $TradeRouteCopyWith<$Res> {
  _$TradeRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? destination = null,
    Object? description = null,
    Object? distance = null,
    Object? baseTravelTime = null,
    Object? exports = null,
    Object? imports = null,
    Object? difficulty = null,
    Object? risks = null,
    Object? isUnlocked = null,
    Object? reputation = null,
    Object? exchangeRate = freezed,
    Object? specialNotes = freezed,
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
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      baseTravelTime: null == baseTravelTime
          ? _value.baseTravelTime
          : baseTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      exports: null == exports
          ? _value.exports
          : exports // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      imports: null == imports
          ? _value.imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as TradeDifficulty,
      risks: null == risks
          ? _value.risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      exchangeRate: freezed == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as double?,
      specialNotes: freezed == specialNotes
          ? _value.specialNotes
          : specialNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRouteImplCopyWith<$Res>
    implements $TradeRouteCopyWith<$Res> {
  factory _$$TradeRouteImplCopyWith(
          _$TradeRouteImpl value, $Res Function(_$TradeRouteImpl) then) =
      __$$TradeRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String destination,
      String description,
      int distance,
      int baseTravelTime,
      List<TradeGood> exports,
      List<TradeGood> imports,
      TradeDifficulty difficulty,
      List<String> risks,
      bool isUnlocked,
      int reputation,
      double? exchangeRate,
      String? specialNotes});
}

/// @nodoc
class __$$TradeRouteImplCopyWithImpl<$Res>
    extends _$TradeRouteCopyWithImpl<$Res, _$TradeRouteImpl>
    implements _$$TradeRouteImplCopyWith<$Res> {
  __$$TradeRouteImplCopyWithImpl(
      _$TradeRouteImpl _value, $Res Function(_$TradeRouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? destination = null,
    Object? description = null,
    Object? distance = null,
    Object? baseTravelTime = null,
    Object? exports = null,
    Object? imports = null,
    Object? difficulty = null,
    Object? risks = null,
    Object? isUnlocked = null,
    Object? reputation = null,
    Object? exchangeRate = freezed,
    Object? specialNotes = freezed,
  }) {
    return _then(_$TradeRouteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      baseTravelTime: null == baseTravelTime
          ? _value.baseTravelTime
          : baseTravelTime // ignore: cast_nullable_to_non_nullable
              as int,
      exports: null == exports
          ? _value._exports
          : exports // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      imports: null == imports
          ? _value._imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<TradeGood>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as TradeDifficulty,
      risks: null == risks
          ? _value._risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      exchangeRate: freezed == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as double?,
      specialNotes: freezed == specialNotes
          ? _value.specialNotes
          : specialNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeRouteImpl implements _TradeRoute {
  const _$TradeRouteImpl(
      {required this.id,
      required this.name,
      required this.destination,
      required this.description,
      required this.distance,
      required this.baseTravelTime,
      required final List<TradeGood> exports,
      required final List<TradeGood> imports,
      required this.difficulty,
      required final List<String> risks,
      this.isUnlocked = false,
      this.reputation = 0,
      this.exchangeRate,
      this.specialNotes})
      : _exports = exports,
        _imports = imports,
        _risks = risks;

  factory _$TradeRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRouteImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String destination;
  @override
  final String description;
  @override
  final int distance;
// in nautical miles
  @override
  final int baseTravelTime;
// in hours
  final List<TradeGood> _exports;
// in hours
  @override
  List<TradeGood> get exports {
    if (_exports is EqualUnmodifiableListView) return _exports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exports);
  }

// goods Greece sends
  final List<TradeGood> _imports;
// goods Greece sends
  @override
  List<TradeGood> get imports {
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imports);
  }

// goods Greece receives
  @override
  final TradeDifficulty difficulty;
  final List<String> _risks;
  @override
  List<String> get risks {
    if (_risks is EqualUnmodifiableListView) return _risks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_risks);
  }

  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  @JsonKey()
  final int reputation;
  @override
  final double? exchangeRate;
// relative to drachmae
  @override
  final String? specialNotes;

  @override
  String toString() {
    return 'TradeRoute(id: $id, name: $name, destination: $destination, description: $description, distance: $distance, baseTravelTime: $baseTravelTime, exports: $exports, imports: $imports, difficulty: $difficulty, risks: $risks, isUnlocked: $isUnlocked, reputation: $reputation, exchangeRate: $exchangeRate, specialNotes: $specialNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.baseTravelTime, baseTravelTime) ||
                other.baseTravelTime == baseTravelTime) &&
            const DeepCollectionEquality().equals(other._exports, _exports) &&
            const DeepCollectionEquality().equals(other._imports, _imports) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other._risks, _risks) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate) &&
            (identical(other.specialNotes, specialNotes) ||
                other.specialNotes == specialNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      destination,
      description,
      distance,
      baseTravelTime,
      const DeepCollectionEquality().hash(_exports),
      const DeepCollectionEquality().hash(_imports),
      difficulty,
      const DeepCollectionEquality().hash(_risks),
      isUnlocked,
      reputation,
      exchangeRate,
      specialNotes);

  /// Create a copy of TradeRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRouteImplCopyWith<_$TradeRouteImpl> get copyWith =>
      __$$TradeRouteImplCopyWithImpl<_$TradeRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRouteImplToJson(
      this,
    );
  }
}

abstract class _TradeRoute implements TradeRoute {
  const factory _TradeRoute(
      {required final String id,
      required final String name,
      required final String destination,
      required final String description,
      required final int distance,
      required final int baseTravelTime,
      required final List<TradeGood> exports,
      required final List<TradeGood> imports,
      required final TradeDifficulty difficulty,
      required final List<String> risks,
      final bool isUnlocked,
      final int reputation,
      final double? exchangeRate,
      final String? specialNotes}) = _$TradeRouteImpl;

  factory _TradeRoute.fromJson(Map<String, dynamic> json) =
      _$TradeRouteImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get destination;
  @override
  String get description;
  @override
  int get distance; // in nautical miles
  @override
  int get baseTravelTime; // in hours
  @override
  List<TradeGood> get exports; // goods Greece sends
  @override
  List<TradeGood> get imports; // goods Greece receives
  @override
  TradeDifficulty get difficulty;
  @override
  List<String> get risks;
  @override
  bool get isUnlocked;
  @override
  int get reputation;
  @override
  double? get exchangeRate; // relative to drachmae
  @override
  String? get specialNotes;

  /// Create a copy of TradeRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRouteImplCopyWith<_$TradeRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeGood _$TradeGoodFromJson(Map<String, dynamic> json) {
  return _TradeGood.fromJson(json);
}

/// @nodoc
mixin _$TradeGood {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TradeGoodCategory get category => throw _privateConstructorUsedError;
  int get baseValue => throw _privateConstructorUsedError; // in drachmae
  double get demandMultiplier =>
      throw _privateConstructorUsedError; // how much this region wants it
  double get supplyMultiplier =>
      throw _privateConstructorUsedError; // how much this region has
  int get minQuantity => throw _privateConstructorUsedError;
  int get maxQuantity => throw _privateConstructorUsedError;
  String? get origin =>
      throw _privateConstructorUsedError; // where it comes from
  List<String>? get tags => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      String description,
      TradeGoodCategory category,
      int baseValue,
      double demandMultiplier,
      double supplyMultiplier,
      int minQuantity,
      int maxQuantity,
      String? origin,
      List<String>? tags});
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
    Object? description = null,
    Object? category = null,
    Object? baseValue = null,
    Object? demandMultiplier = null,
    Object? supplyMultiplier = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? origin = freezed,
    Object? tags = freezed,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TradeGoodCategory,
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as int,
      demandMultiplier: null == demandMultiplier
          ? _value.demandMultiplier
          : demandMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      supplyMultiplier: null == supplyMultiplier
          ? _value.supplyMultiplier
          : supplyMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
  $Res call(
      {String id,
      String name,
      String description,
      TradeGoodCategory category,
      int baseValue,
      double demandMultiplier,
      double supplyMultiplier,
      int minQuantity,
      int maxQuantity,
      String? origin,
      List<String>? tags});
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
    Object? description = null,
    Object? category = null,
    Object? baseValue = null,
    Object? demandMultiplier = null,
    Object? supplyMultiplier = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? origin = freezed,
    Object? tags = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TradeGoodCategory,
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as int,
      demandMultiplier: null == demandMultiplier
          ? _value.demandMultiplier
          : demandMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      supplyMultiplier: null == supplyMultiplier
          ? _value.supplyMultiplier
          : supplyMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeGoodImpl implements _TradeGood {
  const _$TradeGoodImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.baseValue,
      required this.demandMultiplier,
      required this.supplyMultiplier,
      this.minQuantity = 1,
      this.maxQuantity = 100,
      this.origin,
      final List<String>? tags})
      : _tags = tags;

  factory _$TradeGoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeGoodImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final TradeGoodCategory category;
  @override
  final int baseValue;
// in drachmae
  @override
  final double demandMultiplier;
// how much this region wants it
  @override
  final double supplyMultiplier;
// how much this region has
  @override
  @JsonKey()
  final int minQuantity;
  @override
  @JsonKey()
  final int maxQuantity;
  @override
  final String? origin;
// where it comes from
  final List<String>? _tags;
// where it comes from
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TradeGood(id: $id, name: $name, description: $description, category: $category, baseValue: $baseValue, demandMultiplier: $demandMultiplier, supplyMultiplier: $supplyMultiplier, minQuantity: $minQuantity, maxQuantity: $maxQuantity, origin: $origin, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeGoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.baseValue, baseValue) ||
                other.baseValue == baseValue) &&
            (identical(other.demandMultiplier, demandMultiplier) ||
                other.demandMultiplier == demandMultiplier) &&
            (identical(other.supplyMultiplier, supplyMultiplier) ||
                other.supplyMultiplier == supplyMultiplier) &&
            (identical(other.minQuantity, minQuantity) ||
                other.minQuantity == minQuantity) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      baseValue,
      demandMultiplier,
      supplyMultiplier,
      minQuantity,
      maxQuantity,
      origin,
      const DeepCollectionEquality().hash(_tags));

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
      required final String description,
      required final TradeGoodCategory category,
      required final int baseValue,
      required final double demandMultiplier,
      required final double supplyMultiplier,
      final int minQuantity,
      final int maxQuantity,
      final String? origin,
      final List<String>? tags}) = _$TradeGoodImpl;

  factory _TradeGood.fromJson(Map<String, dynamic> json) =
      _$TradeGoodImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  TradeGoodCategory get category;
  @override
  int get baseValue; // in drachmae
  @override
  double get demandMultiplier; // how much this region wants it
  @override
  double get supplyMultiplier; // how much this region has
  @override
  int get minQuantity;
  @override
  int get maxQuantity;
  @override
  String? get origin; // where it comes from
  @override
  List<String>? get tags;

  /// Create a copy of TradeGood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeGoodImplCopyWith<_$TradeGoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradingExpedition _$TradingExpeditionFromJson(Map<String, dynamic> json) {
  return _TradingExpedition.fromJson(json);
}

/// @nodoc
mixin _$TradingExpedition {
  String get id => throw _privateConstructorUsedError;
  String get routeId => throw _privateConstructorUsedError;
  Ship get ship => throw _privateConstructorUsedError;
  List<CargoItem> get cargo => throw _privateConstructorUsedError;
  DateTime get departureTime => throw _privateConstructorUsedError;
  int get estimatedReturnTime => throw _privateConstructorUsedError; // in hours
  ExpeditionStatus get status => throw _privateConstructorUsedError;
  int get progressPercent => throw _privateConstructorUsedError;
  List<String>? get encountersText => throw _privateConstructorUsedError;
  Map<String, dynamic>? get results => throw _privateConstructorUsedError;

  /// Serializes this TradingExpedition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradingExpeditionCopyWith<TradingExpedition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingExpeditionCopyWith<$Res> {
  factory $TradingExpeditionCopyWith(
          TradingExpedition value, $Res Function(TradingExpedition) then) =
      _$TradingExpeditionCopyWithImpl<$Res, TradingExpedition>;
  @useResult
  $Res call(
      {String id,
      String routeId,
      Ship ship,
      List<CargoItem> cargo,
      DateTime departureTime,
      int estimatedReturnTime,
      ExpeditionStatus status,
      int progressPercent,
      List<String>? encountersText,
      Map<String, dynamic>? results});

  $ShipCopyWith<$Res> get ship;
}

/// @nodoc
class _$TradingExpeditionCopyWithImpl<$Res, $Val extends TradingExpedition>
    implements $TradingExpeditionCopyWith<$Res> {
  _$TradingExpeditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? ship = null,
    Object? cargo = null,
    Object? departureTime = null,
    Object? estimatedReturnTime = null,
    Object? status = null,
    Object? progressPercent = null,
    Object? encountersText = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routeId: null == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      ship: null == ship
          ? _value.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as Ship,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as List<CargoItem>,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedReturnTime: null == estimatedReturnTime
          ? _value.estimatedReturnTime
          : estimatedReturnTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpeditionStatus,
      progressPercent: null == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as int,
      encountersText: freezed == encountersText
          ? _value.encountersText
          : encountersText // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipCopyWith<$Res> get ship {
    return $ShipCopyWith<$Res>(_value.ship, (value) {
      return _then(_value.copyWith(ship: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradingExpeditionImplCopyWith<$Res>
    implements $TradingExpeditionCopyWith<$Res> {
  factory _$$TradingExpeditionImplCopyWith(_$TradingExpeditionImpl value,
          $Res Function(_$TradingExpeditionImpl) then) =
      __$$TradingExpeditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String routeId,
      Ship ship,
      List<CargoItem> cargo,
      DateTime departureTime,
      int estimatedReturnTime,
      ExpeditionStatus status,
      int progressPercent,
      List<String>? encountersText,
      Map<String, dynamic>? results});

  @override
  $ShipCopyWith<$Res> get ship;
}

/// @nodoc
class __$$TradingExpeditionImplCopyWithImpl<$Res>
    extends _$TradingExpeditionCopyWithImpl<$Res, _$TradingExpeditionImpl>
    implements _$$TradingExpeditionImplCopyWith<$Res> {
  __$$TradingExpeditionImplCopyWithImpl(_$TradingExpeditionImpl _value,
      $Res Function(_$TradingExpeditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? ship = null,
    Object? cargo = null,
    Object? departureTime = null,
    Object? estimatedReturnTime = null,
    Object? status = null,
    Object? progressPercent = null,
    Object? encountersText = freezed,
    Object? results = freezed,
  }) {
    return _then(_$TradingExpeditionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routeId: null == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      ship: null == ship
          ? _value.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as Ship,
      cargo: null == cargo
          ? _value._cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as List<CargoItem>,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedReturnTime: null == estimatedReturnTime
          ? _value.estimatedReturnTime
          : estimatedReturnTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpeditionStatus,
      progressPercent: null == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as int,
      encountersText: freezed == encountersText
          ? _value._encountersText
          : encountersText // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingExpeditionImpl implements _TradingExpedition {
  const _$TradingExpeditionImpl(
      {required this.id,
      required this.routeId,
      required this.ship,
      required final List<CargoItem> cargo,
      required this.departureTime,
      required this.estimatedReturnTime,
      required this.status,
      this.progressPercent = 0,
      final List<String>? encountersText,
      final Map<String, dynamic>? results})
      : _cargo = cargo,
        _encountersText = encountersText,
        _results = results;

  factory _$TradingExpeditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradingExpeditionImplFromJson(json);

  @override
  final String id;
  @override
  final String routeId;
  @override
  final Ship ship;
  final List<CargoItem> _cargo;
  @override
  List<CargoItem> get cargo {
    if (_cargo is EqualUnmodifiableListView) return _cargo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cargo);
  }

  @override
  final DateTime departureTime;
  @override
  final int estimatedReturnTime;
// in hours
  @override
  final ExpeditionStatus status;
  @override
  @JsonKey()
  final int progressPercent;
  final List<String>? _encountersText;
  @override
  List<String>? get encountersText {
    final value = _encountersText;
    if (value == null) return null;
    if (_encountersText is EqualUnmodifiableListView) return _encountersText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _results;
  @override
  Map<String, dynamic>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TradingExpedition(id: $id, routeId: $routeId, ship: $ship, cargo: $cargo, departureTime: $departureTime, estimatedReturnTime: $estimatedReturnTime, status: $status, progressPercent: $progressPercent, encountersText: $encountersText, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingExpeditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.ship, ship) || other.ship == ship) &&
            const DeepCollectionEquality().equals(other._cargo, _cargo) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.estimatedReturnTime, estimatedReturnTime) ||
                other.estimatedReturnTime == estimatedReturnTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            const DeepCollectionEquality()
                .equals(other._encountersText, _encountersText) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      routeId,
      ship,
      const DeepCollectionEquality().hash(_cargo),
      departureTime,
      estimatedReturnTime,
      status,
      progressPercent,
      const DeepCollectionEquality().hash(_encountersText),
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingExpeditionImplCopyWith<_$TradingExpeditionImpl> get copyWith =>
      __$$TradingExpeditionImplCopyWithImpl<_$TradingExpeditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingExpeditionImplToJson(
      this,
    );
  }
}

abstract class _TradingExpedition implements TradingExpedition {
  const factory _TradingExpedition(
      {required final String id,
      required final String routeId,
      required final Ship ship,
      required final List<CargoItem> cargo,
      required final DateTime departureTime,
      required final int estimatedReturnTime,
      required final ExpeditionStatus status,
      final int progressPercent,
      final List<String>? encountersText,
      final Map<String, dynamic>? results}) = _$TradingExpeditionImpl;

  factory _TradingExpedition.fromJson(Map<String, dynamic> json) =
      _$TradingExpeditionImpl.fromJson;

  @override
  String get id;
  @override
  String get routeId;
  @override
  Ship get ship;
  @override
  List<CargoItem> get cargo;
  @override
  DateTime get departureTime;
  @override
  int get estimatedReturnTime; // in hours
  @override
  ExpeditionStatus get status;
  @override
  int get progressPercent;
  @override
  List<String>? get encountersText;
  @override
  Map<String, dynamic>? get results;

  /// Create a copy of TradingExpedition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradingExpeditionImplCopyWith<_$TradingExpeditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return _Ship.fromJson(json);
}

/// @nodoc
mixin _$Ship {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ShipType get type => throw _privateConstructorUsedError;
  int get cargoCapacity => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError; // affects travel time
  int get durability => throw _privateConstructorUsedError;
  int get currentCondition => throw _privateConstructorUsedError;
  int get crewSize => throw _privateConstructorUsedError;
  int get maintenanceCost => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  List<ShipUpgrade>? get upgrades => throw _privateConstructorUsedError;

  /// Serializes this Ship to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call(
      {String id,
      String name,
      ShipType type,
      int cargoCapacity,
      int speed,
      int durability,
      int currentCondition,
      int crewSize,
      int maintenanceCost,
      bool isAvailable,
      List<ShipUpgrade>? upgrades});
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? cargoCapacity = null,
    Object? speed = null,
    Object? durability = null,
    Object? currentCondition = null,
    Object? crewSize = null,
    Object? maintenanceCost = null,
    Object? isAvailable = null,
    Object? upgrades = freezed,
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
              as ShipType,
      cargoCapacity: null == cargoCapacity
          ? _value.cargoCapacity
          : cargoCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as int,
      currentCondition: null == currentCondition
          ? _value.currentCondition
          : currentCondition // ignore: cast_nullable_to_non_nullable
              as int,
      crewSize: null == crewSize
          ? _value.crewSize
          : crewSize // ignore: cast_nullable_to_non_nullable
              as int,
      maintenanceCost: null == maintenanceCost
          ? _value.maintenanceCost
          : maintenanceCost // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      upgrades: freezed == upgrades
          ? _value.upgrades
          : upgrades // ignore: cast_nullable_to_non_nullable
              as List<ShipUpgrade>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipImplCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$ShipImplCopyWith(
          _$ShipImpl value, $Res Function(_$ShipImpl) then) =
      __$$ShipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      ShipType type,
      int cargoCapacity,
      int speed,
      int durability,
      int currentCondition,
      int crewSize,
      int maintenanceCost,
      bool isAvailable,
      List<ShipUpgrade>? upgrades});
}

/// @nodoc
class __$$ShipImplCopyWithImpl<$Res>
    extends _$ShipCopyWithImpl<$Res, _$ShipImpl>
    implements _$$ShipImplCopyWith<$Res> {
  __$$ShipImplCopyWithImpl(_$ShipImpl _value, $Res Function(_$ShipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? cargoCapacity = null,
    Object? speed = null,
    Object? durability = null,
    Object? currentCondition = null,
    Object? crewSize = null,
    Object? maintenanceCost = null,
    Object? isAvailable = null,
    Object? upgrades = freezed,
  }) {
    return _then(_$ShipImpl(
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
              as ShipType,
      cargoCapacity: null == cargoCapacity
          ? _value.cargoCapacity
          : cargoCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as int,
      currentCondition: null == currentCondition
          ? _value.currentCondition
          : currentCondition // ignore: cast_nullable_to_non_nullable
              as int,
      crewSize: null == crewSize
          ? _value.crewSize
          : crewSize // ignore: cast_nullable_to_non_nullable
              as int,
      maintenanceCost: null == maintenanceCost
          ? _value.maintenanceCost
          : maintenanceCost // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      upgrades: freezed == upgrades
          ? _value._upgrades
          : upgrades // ignore: cast_nullable_to_non_nullable
              as List<ShipUpgrade>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipImpl implements _Ship {
  const _$ShipImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.cargoCapacity,
      required this.speed,
      required this.durability,
      required this.currentCondition,
      required this.crewSize,
      required this.maintenanceCost,
      this.isAvailable = false,
      final List<ShipUpgrade>? upgrades})
      : _upgrades = upgrades;

  factory _$ShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ShipType type;
  @override
  final int cargoCapacity;
  @override
  final int speed;
// affects travel time
  @override
  final int durability;
  @override
  final int currentCondition;
  @override
  final int crewSize;
  @override
  final int maintenanceCost;
  @override
  @JsonKey()
  final bool isAvailable;
  final List<ShipUpgrade>? _upgrades;
  @override
  List<ShipUpgrade>? get upgrades {
    final value = _upgrades;
    if (value == null) return null;
    if (_upgrades is EqualUnmodifiableListView) return _upgrades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Ship(id: $id, name: $name, type: $type, cargoCapacity: $cargoCapacity, speed: $speed, durability: $durability, currentCondition: $currentCondition, crewSize: $crewSize, maintenanceCost: $maintenanceCost, isAvailable: $isAvailable, upgrades: $upgrades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cargoCapacity, cargoCapacity) ||
                other.cargoCapacity == cargoCapacity) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.durability, durability) ||
                other.durability == durability) &&
            (identical(other.currentCondition, currentCondition) ||
                other.currentCondition == currentCondition) &&
            (identical(other.crewSize, crewSize) ||
                other.crewSize == crewSize) &&
            (identical(other.maintenanceCost, maintenanceCost) ||
                other.maintenanceCost == maintenanceCost) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            const DeepCollectionEquality().equals(other._upgrades, _upgrades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      cargoCapacity,
      speed,
      durability,
      currentCondition,
      crewSize,
      maintenanceCost,
      isAvailable,
      const DeepCollectionEquality().hash(_upgrades));

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      __$$ShipImplCopyWithImpl<_$ShipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipImplToJson(
      this,
    );
  }
}

abstract class _Ship implements Ship {
  const factory _Ship(
      {required final String id,
      required final String name,
      required final ShipType type,
      required final int cargoCapacity,
      required final int speed,
      required final int durability,
      required final int currentCondition,
      required final int crewSize,
      required final int maintenanceCost,
      final bool isAvailable,
      final List<ShipUpgrade>? upgrades}) = _$ShipImpl;

  factory _Ship.fromJson(Map<String, dynamic> json) = _$ShipImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ShipType get type;
  @override
  int get cargoCapacity;
  @override
  int get speed; // affects travel time
  @override
  int get durability;
  @override
  int get currentCondition;
  @override
  int get crewSize;
  @override
  int get maintenanceCost;
  @override
  bool get isAvailable;
  @override
  List<ShipUpgrade>? get upgrades;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CargoItem _$CargoItemFromJson(Map<String, dynamic> json) {
  return _CargoItem.fromJson(json);
}

/// @nodoc
mixin _$CargoItem {
  String get goodId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get purchasePrice => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this CargoItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CargoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CargoItemCopyWith<CargoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoItemCopyWith<$Res> {
  factory $CargoItemCopyWith(CargoItem value, $Res Function(CargoItem) then) =
      _$CargoItemCopyWithImpl<$Res, CargoItem>;
  @useResult
  $Res call({String goodId, int quantity, int purchasePrice, String? notes});
}

/// @nodoc
class _$CargoItemCopyWithImpl<$Res, $Val extends CargoItem>
    implements $CargoItemCopyWith<$Res> {
  _$CargoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CargoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodId = null,
    Object? quantity = null,
    Object? purchasePrice = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CargoItemImplCopyWith<$Res>
    implements $CargoItemCopyWith<$Res> {
  factory _$$CargoItemImplCopyWith(
          _$CargoItemImpl value, $Res Function(_$CargoItemImpl) then) =
      __$$CargoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String goodId, int quantity, int purchasePrice, String? notes});
}

/// @nodoc
class __$$CargoItemImplCopyWithImpl<$Res>
    extends _$CargoItemCopyWithImpl<$Res, _$CargoItemImpl>
    implements _$$CargoItemImplCopyWith<$Res> {
  __$$CargoItemImplCopyWithImpl(
      _$CargoItemImpl _value, $Res Function(_$CargoItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CargoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodId = null,
    Object? quantity = null,
    Object? purchasePrice = null,
    Object? notes = freezed,
  }) {
    return _then(_$CargoItemImpl(
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CargoItemImpl implements _CargoItem {
  const _$CargoItemImpl(
      {required this.goodId,
      required this.quantity,
      required this.purchasePrice,
      this.notes});

  factory _$CargoItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CargoItemImplFromJson(json);

  @override
  final String goodId;
  @override
  final int quantity;
  @override
  final int purchasePrice;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CargoItem(goodId: $goodId, quantity: $quantity, purchasePrice: $purchasePrice, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CargoItemImpl &&
            (identical(other.goodId, goodId) || other.goodId == goodId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, goodId, quantity, purchasePrice, notes);

  /// Create a copy of CargoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CargoItemImplCopyWith<_$CargoItemImpl> get copyWith =>
      __$$CargoItemImplCopyWithImpl<_$CargoItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CargoItemImplToJson(
      this,
    );
  }
}

abstract class _CargoItem implements CargoItem {
  const factory _CargoItem(
      {required final String goodId,
      required final int quantity,
      required final int purchasePrice,
      final String? notes}) = _$CargoItemImpl;

  factory _CargoItem.fromJson(Map<String, dynamic> json) =
      _$CargoItemImpl.fromJson;

  @override
  String get goodId;
  @override
  int get quantity;
  @override
  int get purchasePrice;
  @override
  String? get notes;

  /// Create a copy of CargoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CargoItemImplCopyWith<_$CargoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipUpgrade _$ShipUpgradeFromJson(Map<String, dynamic> json) {
  return _ShipUpgrade.fromJson(json);
}

/// @nodoc
mixin _$ShipUpgrade {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  UpgradeType get type => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  Map<String, int> get effects => throw _privateConstructorUsedError;

  /// Serializes this ShipUpgrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipUpgradeCopyWith<ShipUpgrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipUpgradeCopyWith<$Res> {
  factory $ShipUpgradeCopyWith(
          ShipUpgrade value, $Res Function(ShipUpgrade) then) =
      _$ShipUpgradeCopyWithImpl<$Res, ShipUpgrade>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      UpgradeType type,
      int cost,
      Map<String, int> effects});
}

/// @nodoc
class _$ShipUpgradeCopyWithImpl<$Res, $Val extends ShipUpgrade>
    implements $ShipUpgradeCopyWith<$Res> {
  _$ShipUpgradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? cost = null,
    Object? effects = null,
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
              as UpgradeType,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      effects: null == effects
          ? _value.effects
          : effects // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipUpgradeImplCopyWith<$Res>
    implements $ShipUpgradeCopyWith<$Res> {
  factory _$$ShipUpgradeImplCopyWith(
          _$ShipUpgradeImpl value, $Res Function(_$ShipUpgradeImpl) then) =
      __$$ShipUpgradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      UpgradeType type,
      int cost,
      Map<String, int> effects});
}

/// @nodoc
class __$$ShipUpgradeImplCopyWithImpl<$Res>
    extends _$ShipUpgradeCopyWithImpl<$Res, _$ShipUpgradeImpl>
    implements _$$ShipUpgradeImplCopyWith<$Res> {
  __$$ShipUpgradeImplCopyWithImpl(
      _$ShipUpgradeImpl _value, $Res Function(_$ShipUpgradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? cost = null,
    Object? effects = null,
  }) {
    return _then(_$ShipUpgradeImpl(
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
              as UpgradeType,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      effects: null == effects
          ? _value._effects
          : effects // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipUpgradeImpl implements _ShipUpgrade {
  const _$ShipUpgradeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.cost,
      required final Map<String, int> effects})
      : _effects = effects;

  factory _$ShipUpgradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipUpgradeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final UpgradeType type;
  @override
  final int cost;
  final Map<String, int> _effects;
  @override
  Map<String, int> get effects {
    if (_effects is EqualUnmodifiableMapView) return _effects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_effects);
  }

  @override
  String toString() {
    return 'ShipUpgrade(id: $id, name: $name, description: $description, type: $type, cost: $cost, effects: $effects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipUpgradeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            const DeepCollectionEquality().equals(other._effects, _effects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type,
      cost, const DeepCollectionEquality().hash(_effects));

  /// Create a copy of ShipUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipUpgradeImplCopyWith<_$ShipUpgradeImpl> get copyWith =>
      __$$ShipUpgradeImplCopyWithImpl<_$ShipUpgradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipUpgradeImplToJson(
      this,
    );
  }
}

abstract class _ShipUpgrade implements ShipUpgrade {
  const factory _ShipUpgrade(
      {required final String id,
      required final String name,
      required final String description,
      required final UpgradeType type,
      required final int cost,
      required final Map<String, int> effects}) = _$ShipUpgradeImpl;

  factory _ShipUpgrade.fromJson(Map<String, dynamic> json) =
      _$ShipUpgradeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  UpgradeType get type;
  @override
  int get cost;
  @override
  Map<String, int> get effects;

  /// Create a copy of ShipUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipUpgradeImplCopyWith<_$ShipUpgradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeContract _$TradeContractFromJson(Map<String, dynamic> json) {
  return _TradeContract.fromJson(json);
}

/// @nodoc
mixin _$TradeContract {
  String get id => throw _privateConstructorUsedError;
  String get routeId => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ContractRequirement> get requirements =>
      throw _privateConstructorUsedError;
  ContractReward get reward => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  ContractDifficulty get difficulty => throw _privateConstructorUsedError;
  ContractStatus get status => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;

  /// Serializes this TradeContract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeContractCopyWith<TradeContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeContractCopyWith<$Res> {
  factory $TradeContractCopyWith(
          TradeContract value, $Res Function(TradeContract) then) =
      _$TradeContractCopyWithImpl<$Res, TradeContract>;
  @useResult
  $Res call(
      {String id,
      String routeId,
      String clientName,
      String description,
      List<ContractRequirement> requirements,
      ContractReward reward,
      DateTime deadline,
      ContractDifficulty difficulty,
      ContractStatus status,
      int reputation});

  $ContractRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$TradeContractCopyWithImpl<$Res, $Val extends TradeContract>
    implements $TradeContractCopyWith<$Res> {
  _$TradeContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? clientName = null,
    Object? description = null,
    Object? requirements = null,
    Object? reward = null,
    Object? deadline = null,
    Object? difficulty = null,
    Object? status = null,
    Object? reputation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routeId: null == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<ContractRequirement>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ContractReward,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ContractDifficulty,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContractStatus,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractRewardCopyWith<$Res> get reward {
    return $ContractRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeContractImplCopyWith<$Res>
    implements $TradeContractCopyWith<$Res> {
  factory _$$TradeContractImplCopyWith(
          _$TradeContractImpl value, $Res Function(_$TradeContractImpl) then) =
      __$$TradeContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String routeId,
      String clientName,
      String description,
      List<ContractRequirement> requirements,
      ContractReward reward,
      DateTime deadline,
      ContractDifficulty difficulty,
      ContractStatus status,
      int reputation});

  @override
  $ContractRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$TradeContractImplCopyWithImpl<$Res>
    extends _$TradeContractCopyWithImpl<$Res, _$TradeContractImpl>
    implements _$$TradeContractImplCopyWith<$Res> {
  __$$TradeContractImplCopyWithImpl(
      _$TradeContractImpl _value, $Res Function(_$TradeContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? clientName = null,
    Object? description = null,
    Object? requirements = null,
    Object? reward = null,
    Object? deadline = null,
    Object? difficulty = null,
    Object? status = null,
    Object? reputation = null,
  }) {
    return _then(_$TradeContractImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routeId: null == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<ContractRequirement>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ContractReward,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ContractDifficulty,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContractStatus,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeContractImpl implements _TradeContract {
  const _$TradeContractImpl(
      {required this.id,
      required this.routeId,
      required this.clientName,
      required this.description,
      required final List<ContractRequirement> requirements,
      required this.reward,
      required this.deadline,
      required this.difficulty,
      this.status = ContractStatus.available,
      this.reputation = 0})
      : _requirements = requirements;

  factory _$TradeContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeContractImplFromJson(json);

  @override
  final String id;
  @override
  final String routeId;
  @override
  final String clientName;
  @override
  final String description;
  final List<ContractRequirement> _requirements;
  @override
  List<ContractRequirement> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  final ContractReward reward;
  @override
  final DateTime deadline;
  @override
  final ContractDifficulty difficulty;
  @override
  @JsonKey()
  final ContractStatus status;
  @override
  @JsonKey()
  final int reputation;

  @override
  String toString() {
    return 'TradeContract(id: $id, routeId: $routeId, clientName: $clientName, description: $description, requirements: $requirements, reward: $reward, deadline: $deadline, difficulty: $difficulty, status: $status, reputation: $reputation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      routeId,
      clientName,
      description,
      const DeepCollectionEquality().hash(_requirements),
      reward,
      deadline,
      difficulty,
      status,
      reputation);

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeContractImplCopyWith<_$TradeContractImpl> get copyWith =>
      __$$TradeContractImplCopyWithImpl<_$TradeContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeContractImplToJson(
      this,
    );
  }
}

abstract class _TradeContract implements TradeContract {
  const factory _TradeContract(
      {required final String id,
      required final String routeId,
      required final String clientName,
      required final String description,
      required final List<ContractRequirement> requirements,
      required final ContractReward reward,
      required final DateTime deadline,
      required final ContractDifficulty difficulty,
      final ContractStatus status,
      final int reputation}) = _$TradeContractImpl;

  factory _TradeContract.fromJson(Map<String, dynamic> json) =
      _$TradeContractImpl.fromJson;

  @override
  String get id;
  @override
  String get routeId;
  @override
  String get clientName;
  @override
  String get description;
  @override
  List<ContractRequirement> get requirements;
  @override
  ContractReward get reward;
  @override
  DateTime get deadline;
  @override
  ContractDifficulty get difficulty;
  @override
  ContractStatus get status;
  @override
  int get reputation;

  /// Create a copy of TradeContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeContractImplCopyWith<_$TradeContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractRequirement _$ContractRequirementFromJson(Map<String, dynamic> json) {
  return _ContractRequirement.fromJson(json);
}

/// @nodoc
mixin _$ContractRequirement {
  String get goodId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get maxPrice => throw _privateConstructorUsedError;
  String? get quality => throw _privateConstructorUsedError;

  /// Serializes this ContractRequirement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractRequirement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractRequirementCopyWith<ContractRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractRequirementCopyWith<$Res> {
  factory $ContractRequirementCopyWith(
          ContractRequirement value, $Res Function(ContractRequirement) then) =
      _$ContractRequirementCopyWithImpl<$Res, ContractRequirement>;
  @useResult
  $Res call({String goodId, int quantity, int maxPrice, String? quality});
}

/// @nodoc
class _$ContractRequirementCopyWithImpl<$Res, $Val extends ContractRequirement>
    implements $ContractRequirementCopyWith<$Res> {
  _$ContractRequirementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractRequirement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodId = null,
    Object? quantity = null,
    Object? maxPrice = null,
    Object? quality = freezed,
  }) {
    return _then(_value.copyWith(
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractRequirementImplCopyWith<$Res>
    implements $ContractRequirementCopyWith<$Res> {
  factory _$$ContractRequirementImplCopyWith(_$ContractRequirementImpl value,
          $Res Function(_$ContractRequirementImpl) then) =
      __$$ContractRequirementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String goodId, int quantity, int maxPrice, String? quality});
}

/// @nodoc
class __$$ContractRequirementImplCopyWithImpl<$Res>
    extends _$ContractRequirementCopyWithImpl<$Res, _$ContractRequirementImpl>
    implements _$$ContractRequirementImplCopyWith<$Res> {
  __$$ContractRequirementImplCopyWithImpl(_$ContractRequirementImpl _value,
      $Res Function(_$ContractRequirementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractRequirement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodId = null,
    Object? quantity = null,
    Object? maxPrice = null,
    Object? quality = freezed,
  }) {
    return _then(_$ContractRequirementImpl(
      goodId: null == goodId
          ? _value.goodId
          : goodId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractRequirementImpl implements _ContractRequirement {
  const _$ContractRequirementImpl(
      {required this.goodId,
      required this.quantity,
      required this.maxPrice,
      this.quality});

  factory _$ContractRequirementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractRequirementImplFromJson(json);

  @override
  final String goodId;
  @override
  final int quantity;
  @override
  final int maxPrice;
  @override
  final String? quality;

  @override
  String toString() {
    return 'ContractRequirement(goodId: $goodId, quantity: $quantity, maxPrice: $maxPrice, quality: $quality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractRequirementImpl &&
            (identical(other.goodId, goodId) || other.goodId == goodId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, goodId, quantity, maxPrice, quality);

  /// Create a copy of ContractRequirement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractRequirementImplCopyWith<_$ContractRequirementImpl> get copyWith =>
      __$$ContractRequirementImplCopyWithImpl<_$ContractRequirementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractRequirementImplToJson(
      this,
    );
  }
}

abstract class _ContractRequirement implements ContractRequirement {
  const factory _ContractRequirement(
      {required final String goodId,
      required final int quantity,
      required final int maxPrice,
      final String? quality}) = _$ContractRequirementImpl;

  factory _ContractRequirement.fromJson(Map<String, dynamic> json) =
      _$ContractRequirementImpl.fromJson;

  @override
  String get goodId;
  @override
  int get quantity;
  @override
  int get maxPrice;
  @override
  String? get quality;

  /// Create a copy of ContractRequirement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractRequirementImplCopyWith<_$ContractRequirementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractReward _$ContractRewardFromJson(Map<String, dynamic> json) {
  return _ContractReward.fromJson(json);
}

/// @nodoc
mixin _$ContractReward {
  int get drachmae => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  int get experience => throw _privateConstructorUsedError;
  List<InventoryItem>? get bonusItems => throw _privateConstructorUsedError;

  /// Serializes this ContractReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractRewardCopyWith<ContractReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractRewardCopyWith<$Res> {
  factory $ContractRewardCopyWith(
          ContractReward value, $Res Function(ContractReward) then) =
      _$ContractRewardCopyWithImpl<$Res, ContractReward>;
  @useResult
  $Res call(
      {int drachmae,
      int reputation,
      int experience,
      List<InventoryItem>? bonusItems});
}

/// @nodoc
class _$ContractRewardCopyWithImpl<$Res, $Val extends ContractReward>
    implements $ContractRewardCopyWith<$Res> {
  _$ContractRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drachmae = null,
    Object? reputation = null,
    Object? experience = null,
    Object? bonusItems = freezed,
  }) {
    return _then(_value.copyWith(
      drachmae: null == drachmae
          ? _value.drachmae
          : drachmae // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      bonusItems: freezed == bonusItems
          ? _value.bonusItems
          : bonusItems // ignore: cast_nullable_to_non_nullable
              as List<InventoryItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractRewardImplCopyWith<$Res>
    implements $ContractRewardCopyWith<$Res> {
  factory _$$ContractRewardImplCopyWith(_$ContractRewardImpl value,
          $Res Function(_$ContractRewardImpl) then) =
      __$$ContractRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int drachmae,
      int reputation,
      int experience,
      List<InventoryItem>? bonusItems});
}

/// @nodoc
class __$$ContractRewardImplCopyWithImpl<$Res>
    extends _$ContractRewardCopyWithImpl<$Res, _$ContractRewardImpl>
    implements _$$ContractRewardImplCopyWith<$Res> {
  __$$ContractRewardImplCopyWithImpl(
      _$ContractRewardImpl _value, $Res Function(_$ContractRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drachmae = null,
    Object? reputation = null,
    Object? experience = null,
    Object? bonusItems = freezed,
  }) {
    return _then(_$ContractRewardImpl(
      drachmae: null == drachmae
          ? _value.drachmae
          : drachmae // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      bonusItems: freezed == bonusItems
          ? _value._bonusItems
          : bonusItems // ignore: cast_nullable_to_non_nullable
              as List<InventoryItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractRewardImpl implements _ContractReward {
  const _$ContractRewardImpl(
      {required this.drachmae,
      this.reputation = 0,
      this.experience = 0,
      final List<InventoryItem>? bonusItems})
      : _bonusItems = bonusItems;

  factory _$ContractRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractRewardImplFromJson(json);

  @override
  final int drachmae;
  @override
  @JsonKey()
  final int reputation;
  @override
  @JsonKey()
  final int experience;
  final List<InventoryItem>? _bonusItems;
  @override
  List<InventoryItem>? get bonusItems {
    final value = _bonusItems;
    if (value == null) return null;
    if (_bonusItems is EqualUnmodifiableListView) return _bonusItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractReward(drachmae: $drachmae, reputation: $reputation, experience: $experience, bonusItems: $bonusItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractRewardImpl &&
            (identical(other.drachmae, drachmae) ||
                other.drachmae == drachmae) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            const DeepCollectionEquality()
                .equals(other._bonusItems, _bonusItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, drachmae, reputation, experience,
      const DeepCollectionEquality().hash(_bonusItems));

  /// Create a copy of ContractReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractRewardImplCopyWith<_$ContractRewardImpl> get copyWith =>
      __$$ContractRewardImplCopyWithImpl<_$ContractRewardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractRewardImplToJson(
      this,
    );
  }
}

abstract class _ContractReward implements ContractReward {
  const factory _ContractReward(
      {required final int drachmae,
      final int reputation,
      final int experience,
      final List<InventoryItem>? bonusItems}) = _$ContractRewardImpl;

  factory _ContractReward.fromJson(Map<String, dynamic> json) =
      _$ContractRewardImpl.fromJson;

  @override
  int get drachmae;
  @override
  int get reputation;
  @override
  int get experience;
  @override
  List<InventoryItem>? get bonusItems;

  /// Create a copy of ContractReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractRewardImplCopyWith<_$ContractRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
