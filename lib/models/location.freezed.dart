// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LocationType get type => throw _privateConstructorUsedError;
  List<String> get availableActions => throw _privateConstructorUsedError;
  Map<String, dynamic> get marketData => throw _privateConstructorUsedError;
  List<String> get connectedLocations => throw _privateConstructorUsedError;
  List<String> get availableQuests => throw _privateConstructorUsedError;
  List<String> get npcs => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LocationType type,
      List<String> availableActions,
      Map<String, dynamic> marketData,
      List<String> connectedLocations,
      List<String> availableQuests,
      List<String> npcs});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? availableActions = null,
    Object? marketData = null,
    Object? connectedLocations = null,
    Object? availableQuests = null,
    Object? npcs = null,
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
      availableActions: null == availableActions
          ? _value.availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      marketData: null == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      connectedLocations: null == connectedLocations
          ? _value.connectedLocations
          : connectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableQuests: null == availableQuests
          ? _value.availableQuests
          : availableQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LocationType type,
      List<String> availableActions,
      Map<String, dynamic> marketData,
      List<String> connectedLocations,
      List<String> availableQuests,
      List<String> npcs});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? availableActions = null,
    Object? marketData = null,
    Object? connectedLocations = null,
    Object? availableQuests = null,
    Object? npcs = null,
  }) {
    return _then(_$LocationImpl(
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
      availableActions: null == availableActions
          ? _value._availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      marketData: null == marketData
          ? _value._marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      connectedLocations: null == connectedLocations
          ? _value._connectedLocations
          : connectedLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableQuests: null == availableQuests
          ? _value._availableQuests
          : availableQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      final List<String> availableActions = const [],
      final Map<String, dynamic> marketData = const {},
      final List<String> connectedLocations = const [],
      final List<String> availableQuests = const [],
      final List<String> npcs = const []})
      : _availableActions = availableActions,
        _marketData = marketData,
        _connectedLocations = connectedLocations,
        _availableQuests = availableQuests,
        _npcs = npcs;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final LocationType type;
  final List<String> _availableActions;
  @override
  @JsonKey()
  List<String> get availableActions {
    if (_availableActions is EqualUnmodifiableListView)
      return _availableActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableActions);
  }

  final Map<String, dynamic> _marketData;
  @override
  @JsonKey()
  Map<String, dynamic> get marketData {
    if (_marketData is EqualUnmodifiableMapView) return _marketData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_marketData);
  }

  final List<String> _connectedLocations;
  @override
  @JsonKey()
  List<String> get connectedLocations {
    if (_connectedLocations is EqualUnmodifiableListView)
      return _connectedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedLocations);
  }

  final List<String> _availableQuests;
  @override
  @JsonKey()
  List<String> get availableQuests {
    if (_availableQuests is EqualUnmodifiableListView) return _availableQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableQuests);
  }

  final List<String> _npcs;
  @override
  @JsonKey()
  List<String> get npcs {
    if (_npcs is EqualUnmodifiableListView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_npcs);
  }

  @override
  String toString() {
    return 'Location(id: $id, name: $name, description: $description, type: $type, availableActions: $availableActions, marketData: $marketData, connectedLocations: $connectedLocations, availableQuests: $availableQuests, npcs: $npcs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._availableActions, _availableActions) &&
            const DeepCollectionEquality()
                .equals(other._marketData, _marketData) &&
            const DeepCollectionEquality()
                .equals(other._connectedLocations, _connectedLocations) &&
            const DeepCollectionEquality()
                .equals(other._availableQuests, _availableQuests) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      const DeepCollectionEquality().hash(_availableActions),
      const DeepCollectionEquality().hash(_marketData),
      const DeepCollectionEquality().hash(_connectedLocations),
      const DeepCollectionEquality().hash(_availableQuests),
      const DeepCollectionEquality().hash(_npcs));

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String id,
      required final String name,
      required final String description,
      required final LocationType type,
      final List<String> availableActions,
      final Map<String, dynamic> marketData,
      final List<String> connectedLocations,
      final List<String> availableQuests,
      final List<String> npcs}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  LocationType get type;
  @override
  List<String> get availableActions;
  @override
  Map<String, dynamic> get marketData;
  @override
  List<String> get connectedLocations;
  @override
  List<String> get availableQuests;
  @override
  List<String> get npcs;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketItem _$MarketItemFromJson(Map<String, dynamic> json) {
  return _MarketItem.fromJson(json);
}

/// @nodoc
mixin _$MarketItem {
  String get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
  int get currentPrice => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  int get demand => throw _privateConstructorUsedError;
  double get priceMultiplier => throw _privateConstructorUsedError;

  /// Serializes this MarketItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketItemCopyWith<MarketItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketItemCopyWith<$Res> {
  factory $MarketItemCopyWith(
          MarketItem value, $Res Function(MarketItem) then) =
      _$MarketItemCopyWithImpl<$Res, MarketItem>;
  @useResult
  $Res call(
      {String itemId,
      String name,
      int basePrice,
      int currentPrice,
      int stock,
      int demand,
      double priceMultiplier});
}

/// @nodoc
class _$MarketItemCopyWithImpl<$Res, $Val extends MarketItem>
    implements $MarketItemCopyWith<$Res> {
  _$MarketItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? basePrice = null,
    Object? currentPrice = null,
    Object? stock = null,
    Object? demand = null,
    Object? priceMultiplier = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      demand: null == demand
          ? _value.demand
          : demand // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketItemImplCopyWith<$Res>
    implements $MarketItemCopyWith<$Res> {
  factory _$$MarketItemImplCopyWith(
          _$MarketItemImpl value, $Res Function(_$MarketItemImpl) then) =
      __$$MarketItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String name,
      int basePrice,
      int currentPrice,
      int stock,
      int demand,
      double priceMultiplier});
}

/// @nodoc
class __$$MarketItemImplCopyWithImpl<$Res>
    extends _$MarketItemCopyWithImpl<$Res, _$MarketItemImpl>
    implements _$$MarketItemImplCopyWith<$Res> {
  __$$MarketItemImplCopyWithImpl(
      _$MarketItemImpl _value, $Res Function(_$MarketItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? basePrice = null,
    Object? currentPrice = null,
    Object? stock = null,
    Object? demand = null,
    Object? priceMultiplier = null,
  }) {
    return _then(_$MarketItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      demand: null == demand
          ? _value.demand
          : demand // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketItemImpl implements _MarketItem {
  const _$MarketItemImpl(
      {required this.itemId,
      required this.name,
      required this.basePrice,
      required this.currentPrice,
      required this.stock,
      required this.demand,
      this.priceMultiplier = 1.0});

  factory _$MarketItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketItemImplFromJson(json);

  @override
  final String itemId;
  @override
  final String name;
  @override
  final int basePrice;
  @override
  final int currentPrice;
  @override
  final int stock;
  @override
  final int demand;
  @override
  @JsonKey()
  final double priceMultiplier;

  @override
  String toString() {
    return 'MarketItem(itemId: $itemId, name: $name, basePrice: $basePrice, currentPrice: $currentPrice, stock: $stock, demand: $demand, priceMultiplier: $priceMultiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.demand, demand) || other.demand == demand) &&
            (identical(other.priceMultiplier, priceMultiplier) ||
                other.priceMultiplier == priceMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, name, basePrice,
      currentPrice, stock, demand, priceMultiplier);

  /// Create a copy of MarketItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketItemImplCopyWith<_$MarketItemImpl> get copyWith =>
      __$$MarketItemImplCopyWithImpl<_$MarketItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketItemImplToJson(
      this,
    );
  }
}

abstract class _MarketItem implements MarketItem {
  const factory _MarketItem(
      {required final String itemId,
      required final String name,
      required final int basePrice,
      required final int currentPrice,
      required final int stock,
      required final int demand,
      final double priceMultiplier}) = _$MarketItemImpl;

  factory _MarketItem.fromJson(Map<String, dynamic> json) =
      _$MarketItemImpl.fromJson;

  @override
  String get itemId;
  @override
  String get name;
  @override
  int get basePrice;
  @override
  int get currentPrice;
  @override
  int get stock;
  @override
  int get demand;
  @override
  double get priceMultiplier;

  /// Create a copy of MarketItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketItemImplCopyWith<_$MarketItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
