// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ShopTypeEnumMap, json['type']),
      location: json['location'] as String,
      inventory: (json['inventory'] as List<dynamic>)
          .map((e) => ShopItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceMultiplier: (json['priceMultiplier'] as num?)?.toDouble() ?? 1.0,
      specialOffers: (json['specialOffers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minReputation: (json['minReputation'] as num?)?.toInt(),
      ownerNpcId: json['ownerNpcId'] as String?,
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$ShopTypeEnumMap[instance.type]!,
      'location': instance.location,
      'inventory': instance.inventory,
      'priceMultiplier': instance.priceMultiplier,
      'specialOffers': instance.specialOffers,
      'minReputation': instance.minReputation,
      'ownerNpcId': instance.ownerNpcId,
    };

const _$ShopTypeEnumMap = {
  ShopType.general: 'general',
  ShopType.weapons: 'weapons',
  ShopType.armor: 'armor',
  ShopType.food: 'food',
  ShopType.luxury: 'luxury',
  ShopType.shipUpgrade: 'ship_upgrade',
  ShopType.information: 'information',
  ShopType.consumables: 'consumables',
};

_$ShopItemImpl _$$ShopItemImplFromJson(Map<String, dynamic> json) =>
    _$ShopItemImpl(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      basePrice: (json['basePrice'] as num).toInt(),
      category: $enumDecode(_$ShopItemCategoryEnumMap, json['category']),
      stock: (json['stock'] as num?)?.toInt() ?? 1,
      isSpecialOffer: json['isSpecialOffer'] as bool? ?? false,
      discountPercent: (json['discountPercent'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      effects: json['effects'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ShopItemImplToJson(_$ShopItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'category': _$ShopItemCategoryEnumMap[instance.category]!,
      'stock': instance.stock,
      'isSpecialOffer': instance.isSpecialOffer,
      'discountPercent': instance.discountPercent,
      'tags': instance.tags,
      'effects': instance.effects,
    };

const _$ShopItemCategoryEnumMap = {
  ShopItemCategory.equipment: 'equipment',
  ShopItemCategory.weapon: 'weapon',
  ShopItemCategory.armor: 'armor',
  ShopItemCategory.consumable: 'consumable',
  ShopItemCategory.shipPart: 'ship_part',
  ShopItemCategory.information: 'information',
  ShopItemCategory.luxury: 'luxury',
  ShopItemCategory.resource: 'resource',
};

_$ShopTransactionImpl _$$ShopTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopTransactionImpl(
      shopId: json['shopId'] as String,
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ShopTransactionImplToJson(
        _$ShopTransactionImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.buy: 'buy',
  TransactionType.sell: 'sell',
};
