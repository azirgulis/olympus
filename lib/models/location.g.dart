// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      availableActions: (json['availableActions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      marketData: json['marketData'] as Map<String, dynamic>? ?? const {},
      connectedLocations: (json['connectedLocations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableQuests: (json['availableQuests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      npcs:
          (json['npcs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$LocationTypeEnumMap[instance.type]!,
      'availableActions': instance.availableActions,
      'marketData': instance.marketData,
      'connectedLocations': instance.connectedLocations,
      'availableQuests': instance.availableQuests,
      'npcs': instance.npcs,
    };

const _$LocationTypeEnumMap = {
  LocationType.city: 'city',
  LocationType.temple: 'temple',
  LocationType.port: 'port',
  LocationType.wilderness: 'wilderness',
  LocationType.mountain: 'mountain',
};

_$MarketItemImpl _$$MarketItemImplFromJson(Map<String, dynamic> json) =>
    _$MarketItemImpl(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      basePrice: (json['basePrice'] as num).toInt(),
      currentPrice: (json['currentPrice'] as num).toInt(),
      stock: (json['stock'] as num).toInt(),
      demand: (json['demand'] as num).toInt(),
      priceMultiplier: (json['priceMultiplier'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$$MarketItemImplToJson(_$MarketItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'basePrice': instance.basePrice,
      'currentPrice': instance.currentPrice,
      'stock': instance.stock,
      'demand': instance.demand,
      'priceMultiplier': instance.priceMultiplier,
    };
