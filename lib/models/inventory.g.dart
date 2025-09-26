// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => InventoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      maxSlots: (json['maxSlots'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'maxSlots': instance.maxSlots,
    };

_$InventoryItemImpl _$$InventoryItemImplFromJson(Map<String, dynamic> json) =>
    _$InventoryItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ItemTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      rarity: $enumDecodeNullable(_$ItemRarityEnumMap, json['rarity']) ??
          ItemRarity.common,
    );

Map<String, dynamic> _$$InventoryItemImplToJson(_$InventoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$ItemTypeEnumMap[instance.type]!,
      'value': instance.value,
      'quantity': instance.quantity,
      'rarity': _$ItemRarityEnumMap[instance.rarity]!,
    };

const _$ItemTypeEnumMap = {
  ItemType.food: 'food',
  ItemType.tool: 'tool',
  ItemType.tradeGood: 'trade_good',
  ItemType.questItem: 'quest_item',
  ItemType.resource: 'resource',
};

const _$ItemRarityEnumMap = {
  ItemRarity.common: 'common',
  ItemRarity.uncommon: 'uncommon',
  ItemRarity.rare: 'rare',
  ItemRarity.legendary: 'legendary',
};
