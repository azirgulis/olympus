// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ShopType get type => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<ShopItem> get inventory => throw _privateConstructorUsedError;
  double get priceMultiplier =>
      throw _privateConstructorUsedError; // 1.0 = normal, 1.5 = 50% markup
  List<String> get specialOffers => throw _privateConstructorUsedError;
  int? get minReputation => throw _privateConstructorUsedError;
  String? get ownerNpcId => throw _privateConstructorUsedError;

  /// Serializes this Shop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      ShopType type,
      String location,
      List<ShopItem> inventory,
      double priceMultiplier,
      List<String> specialOffers,
      int? minReputation,
      String? ownerNpcId});
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? location = null,
    Object? inventory = null,
    Object? priceMultiplier = null,
    Object? specialOffers = null,
    Object? minReputation = freezed,
    Object? ownerNpcId = freezed,
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
              as ShopType,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as List<ShopItem>,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      specialOffers: null == specialOffers
          ? _value.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minReputation: freezed == minReputation
          ? _value.minReputation
          : minReputation // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNpcId: freezed == ownerNpcId
          ? _value.ownerNpcId
          : ownerNpcId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(
          _$ShopImpl value, $Res Function(_$ShopImpl) then) =
      __$$ShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      ShopType type,
      String location,
      List<ShopItem> inventory,
      double priceMultiplier,
      List<String> specialOffers,
      int? minReputation,
      String? ownerNpcId});
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? location = null,
    Object? inventory = null,
    Object? priceMultiplier = null,
    Object? specialOffers = null,
    Object? minReputation = freezed,
    Object? ownerNpcId = freezed,
  }) {
    return _then(_$ShopImpl(
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
              as ShopType,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      inventory: null == inventory
          ? _value._inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as List<ShopItem>,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      specialOffers: null == specialOffers
          ? _value._specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minReputation: freezed == minReputation
          ? _value.minReputation
          : minReputation // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNpcId: freezed == ownerNpcId
          ? _value.ownerNpcId
          : ownerNpcId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopImpl implements _Shop {
  const _$ShopImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.location,
      required final List<ShopItem> inventory,
      this.priceMultiplier = 1.0,
      final List<String> specialOffers = const [],
      this.minReputation,
      this.ownerNpcId})
      : _inventory = inventory,
        _specialOffers = specialOffers;

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final ShopType type;
  @override
  final String location;
  final List<ShopItem> _inventory;
  @override
  List<ShopItem> get inventory {
    if (_inventory is EqualUnmodifiableListView) return _inventory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventory);
  }

  @override
  @JsonKey()
  final double priceMultiplier;
// 1.0 = normal, 1.5 = 50% markup
  final List<String> _specialOffers;
// 1.0 = normal, 1.5 = 50% markup
  @override
  @JsonKey()
  List<String> get specialOffers {
    if (_specialOffers is EqualUnmodifiableListView) return _specialOffers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialOffers);
  }

  @override
  final int? minReputation;
  @override
  final String? ownerNpcId;

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, description: $description, type: $type, location: $location, inventory: $inventory, priceMultiplier: $priceMultiplier, specialOffers: $specialOffers, minReputation: $minReputation, ownerNpcId: $ownerNpcId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._inventory, _inventory) &&
            (identical(other.priceMultiplier, priceMultiplier) ||
                other.priceMultiplier == priceMultiplier) &&
            const DeepCollectionEquality()
                .equals(other._specialOffers, _specialOffers) &&
            (identical(other.minReputation, minReputation) ||
                other.minReputation == minReputation) &&
            (identical(other.ownerNpcId, ownerNpcId) ||
                other.ownerNpcId == ownerNpcId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      location,
      const DeepCollectionEquality().hash(_inventory),
      priceMultiplier,
      const DeepCollectionEquality().hash(_specialOffers),
      minReputation,
      ownerNpcId);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  const factory _Shop(
      {required final String id,
      required final String name,
      required final String description,
      required final ShopType type,
      required final String location,
      required final List<ShopItem> inventory,
      final double priceMultiplier,
      final List<String> specialOffers,
      final int? minReputation,
      final String? ownerNpcId}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  ShopType get type;
  @override
  String get location;
  @override
  List<ShopItem> get inventory;
  @override
  double get priceMultiplier; // 1.0 = normal, 1.5 = 50% markup
  @override
  List<String> get specialOffers;
  @override
  int? get minReputation;
  @override
  String? get ownerNpcId;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopItem _$ShopItemFromJson(Map<String, dynamic> json) {
  return _ShopItem.fromJson(json);
}

/// @nodoc
mixin _$ShopItem {
  String get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
  ShopItemCategory get category => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError; // -1 = infinite
  bool get isSpecialOffer => throw _privateConstructorUsedError;
  int? get discountPercent => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  Map<String, dynamic>? get effects => throw _privateConstructorUsedError;

  /// Serializes this ShopItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res, ShopItem>;
  @useResult
  $Res call(
      {String itemId,
      String name,
      String description,
      int basePrice,
      ShopItemCategory category,
      int stock,
      bool isSpecialOffer,
      int? discountPercent,
      List<String>? tags,
      Map<String, dynamic>? effects});
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res, $Val extends ShopItem>
    implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? category = null,
    Object? stock = null,
    Object? isSpecialOffer = null,
    Object? discountPercent = freezed,
    Object? tags = freezed,
    Object? effects = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ShopItemCategory,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      isSpecialOffer: null == isSpecialOffer
          ? _value.isSpecialOffer
          : isSpecialOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      discountPercent: freezed == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      effects: freezed == effects
          ? _value.effects
          : effects // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopItemImplCopyWith<$Res>
    implements $ShopItemCopyWith<$Res> {
  factory _$$ShopItemImplCopyWith(
          _$ShopItemImpl value, $Res Function(_$ShopItemImpl) then) =
      __$$ShopItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String name,
      String description,
      int basePrice,
      ShopItemCategory category,
      int stock,
      bool isSpecialOffer,
      int? discountPercent,
      List<String>? tags,
      Map<String, dynamic>? effects});
}

/// @nodoc
class __$$ShopItemImplCopyWithImpl<$Res>
    extends _$ShopItemCopyWithImpl<$Res, _$ShopItemImpl>
    implements _$$ShopItemImplCopyWith<$Res> {
  __$$ShopItemImplCopyWithImpl(
      _$ShopItemImpl _value, $Res Function(_$ShopItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? category = null,
    Object? stock = null,
    Object? isSpecialOffer = null,
    Object? discountPercent = freezed,
    Object? tags = freezed,
    Object? effects = freezed,
  }) {
    return _then(_$ShopItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ShopItemCategory,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      isSpecialOffer: null == isSpecialOffer
          ? _value.isSpecialOffer
          : isSpecialOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      discountPercent: freezed == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      effects: freezed == effects
          ? _value._effects
          : effects // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopItemImpl implements _ShopItem {
  const _$ShopItemImpl(
      {required this.itemId,
      required this.name,
      required this.description,
      required this.basePrice,
      required this.category,
      this.stock = 1,
      this.isSpecialOffer = false,
      this.discountPercent,
      final List<String>? tags,
      final Map<String, dynamic>? effects})
      : _tags = tags,
        _effects = effects;

  factory _$ShopItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopItemImplFromJson(json);

  @override
  final String itemId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int basePrice;
  @override
  final ShopItemCategory category;
  @override
  @JsonKey()
  final int stock;
// -1 = infinite
  @override
  @JsonKey()
  final bool isSpecialOffer;
  @override
  final int? discountPercent;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _effects;
  @override
  Map<String, dynamic>? get effects {
    final value = _effects;
    if (value == null) return null;
    if (_effects is EqualUnmodifiableMapView) return _effects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ShopItem(itemId: $itemId, name: $name, description: $description, basePrice: $basePrice, category: $category, stock: $stock, isSpecialOffer: $isSpecialOffer, discountPercent: $discountPercent, tags: $tags, effects: $effects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.isSpecialOffer, isSpecialOffer) ||
                other.isSpecialOffer == isSpecialOffer) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._effects, _effects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      name,
      description,
      basePrice,
      category,
      stock,
      isSpecialOffer,
      discountPercent,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_effects));

  /// Create a copy of ShopItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopItemImplCopyWith<_$ShopItemImpl> get copyWith =>
      __$$ShopItemImplCopyWithImpl<_$ShopItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopItemImplToJson(
      this,
    );
  }
}

abstract class _ShopItem implements ShopItem {
  const factory _ShopItem(
      {required final String itemId,
      required final String name,
      required final String description,
      required final int basePrice,
      required final ShopItemCategory category,
      final int stock,
      final bool isSpecialOffer,
      final int? discountPercent,
      final List<String>? tags,
      final Map<String, dynamic>? effects}) = _$ShopItemImpl;

  factory _ShopItem.fromJson(Map<String, dynamic> json) =
      _$ShopItemImpl.fromJson;

  @override
  String get itemId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get basePrice;
  @override
  ShopItemCategory get category;
  @override
  int get stock; // -1 = infinite
  @override
  bool get isSpecialOffer;
  @override
  int? get discountPercent;
  @override
  List<String>? get tags;
  @override
  Map<String, dynamic>? get effects;

  /// Create a copy of ShopItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopItemImplCopyWith<_$ShopItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopTransaction _$ShopTransactionFromJson(Map<String, dynamic> json) {
  return _ShopTransaction.fromJson(json);
}

/// @nodoc
mixin _$ShopTransaction {
  String get shopId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;

  /// Serializes this ShopTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopTransactionCopyWith<ShopTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTransactionCopyWith<$Res> {
  factory $ShopTransactionCopyWith(
          ShopTransaction value, $Res Function(ShopTransaction) then) =
      _$ShopTransactionCopyWithImpl<$Res, ShopTransaction>;
  @useResult
  $Res call(
      {String shopId,
      String itemId,
      int quantity,
      int totalPrice,
      DateTime timestamp,
      TransactionType type});
}

/// @nodoc
class _$ShopTransactionCopyWithImpl<$Res, $Val extends ShopTransaction>
    implements $ShopTransactionCopyWith<$Res> {
  _$ShopTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopTransactionImplCopyWith<$Res>
    implements $ShopTransactionCopyWith<$Res> {
  factory _$$ShopTransactionImplCopyWith(_$ShopTransactionImpl value,
          $Res Function(_$ShopTransactionImpl) then) =
      __$$ShopTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopId,
      String itemId,
      int quantity,
      int totalPrice,
      DateTime timestamp,
      TransactionType type});
}

/// @nodoc
class __$$ShopTransactionImplCopyWithImpl<$Res>
    extends _$ShopTransactionCopyWithImpl<$Res, _$ShopTransactionImpl>
    implements _$$ShopTransactionImplCopyWith<$Res> {
  __$$ShopTransactionImplCopyWithImpl(
      _$ShopTransactionImpl _value, $Res Function(_$ShopTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(_$ShopTransactionImpl(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopTransactionImpl implements _ShopTransaction {
  const _$ShopTransactionImpl(
      {required this.shopId,
      required this.itemId,
      required this.quantity,
      required this.totalPrice,
      required this.timestamp,
      required this.type});

  factory _$ShopTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopTransactionImplFromJson(json);

  @override
  final String shopId;
  @override
  final String itemId;
  @override
  final int quantity;
  @override
  final int totalPrice;
  @override
  final DateTime timestamp;
  @override
  final TransactionType type;

  @override
  String toString() {
    return 'ShopTransaction(shopId: $shopId, itemId: $itemId, quantity: $quantity, totalPrice: $totalPrice, timestamp: $timestamp, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopTransactionImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, shopId, itemId, quantity, totalPrice, timestamp, type);

  /// Create a copy of ShopTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopTransactionImplCopyWith<_$ShopTransactionImpl> get copyWith =>
      __$$ShopTransactionImplCopyWithImpl<_$ShopTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopTransactionImplToJson(
      this,
    );
  }
}

abstract class _ShopTransaction implements ShopTransaction {
  const factory _ShopTransaction(
      {required final String shopId,
      required final String itemId,
      required final int quantity,
      required final int totalPrice,
      required final DateTime timestamp,
      required final TransactionType type}) = _$ShopTransactionImpl;

  factory _ShopTransaction.fromJson(Map<String, dynamic> json) =
      _$ShopTransactionImpl.fromJson;

  @override
  String get shopId;
  @override
  String get itemId;
  @override
  int get quantity;
  @override
  int get totalPrice;
  @override
  DateTime get timestamp;
  @override
  TransactionType get type;

  /// Create a copy of ShopTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopTransactionImplCopyWith<_$ShopTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
