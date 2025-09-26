// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harbor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeRouteImpl _$$TradeRouteImplFromJson(Map<String, dynamic> json) =>
    _$TradeRouteImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      destination: json['destination'] as String,
      description: json['description'] as String,
      distance: (json['distance'] as num).toInt(),
      baseTravelTime: (json['baseTravelTime'] as num).toInt(),
      exports: (json['exports'] as List<dynamic>)
          .map((e) => TradeGood.fromJson(e as Map<String, dynamic>))
          .toList(),
      imports: (json['imports'] as List<dynamic>)
          .map((e) => TradeGood.fromJson(e as Map<String, dynamic>))
          .toList(),
      difficulty: $enumDecode(_$TradeDifficultyEnumMap, json['difficulty']),
      risks: (json['risks'] as List<dynamic>).map((e) => e as String).toList(),
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      reputation: (json['reputation'] as num?)?.toInt() ?? 0,
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble(),
      specialNotes: json['specialNotes'] as String?,
    );

Map<String, dynamic> _$$TradeRouteImplToJson(_$TradeRouteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'destination': instance.destination,
      'description': instance.description,
      'distance': instance.distance,
      'baseTravelTime': instance.baseTravelTime,
      'exports': instance.exports,
      'imports': instance.imports,
      'difficulty': _$TradeDifficultyEnumMap[instance.difficulty]!,
      'risks': instance.risks,
      'isUnlocked': instance.isUnlocked,
      'reputation': instance.reputation,
      'exchangeRate': instance.exchangeRate,
      'specialNotes': instance.specialNotes,
    };

const _$TradeDifficultyEnumMap = {
  TradeDifficulty.easy: 'easy',
  TradeDifficulty.medium: 'medium',
  TradeDifficulty.hard: 'hard',
  TradeDifficulty.dangerous: 'dangerous',
};

_$TradeGoodImpl _$$TradeGoodImplFromJson(Map<String, dynamic> json) =>
    _$TradeGoodImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: $enumDecode(_$TradeGoodCategoryEnumMap, json['category']),
      baseValue: (json['baseValue'] as num).toInt(),
      demandMultiplier: (json['demandMultiplier'] as num).toDouble(),
      supplyMultiplier: (json['supplyMultiplier'] as num).toDouble(),
      minQuantity: (json['minQuantity'] as num?)?.toInt() ?? 1,
      maxQuantity: (json['maxQuantity'] as num?)?.toInt() ?? 100,
      origin: json['origin'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TradeGoodImplToJson(_$TradeGoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': _$TradeGoodCategoryEnumMap[instance.category]!,
      'baseValue': instance.baseValue,
      'demandMultiplier': instance.demandMultiplier,
      'supplyMultiplier': instance.supplyMultiplier,
      'minQuantity': instance.minQuantity,
      'maxQuantity': instance.maxQuantity,
      'origin': instance.origin,
      'tags': instance.tags,
    };

const _$TradeGoodCategoryEnumMap = {
  TradeGoodCategory.food: 'food',
  TradeGoodCategory.luxury: 'luxury',
  TradeGoodCategory.raw_materials: 'raw_materials',
  TradeGoodCategory.crafted_goods: 'crafted_goods',
  TradeGoodCategory.precious_metals: 'precious_metals',
  TradeGoodCategory.spices: 'spices',
  TradeGoodCategory.textiles: 'textiles',
  TradeGoodCategory.weapons: 'weapons',
  TradeGoodCategory.art: 'art',
};

_$TradingExpeditionImpl _$$TradingExpeditionImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingExpeditionImpl(
      id: json['id'] as String,
      routeId: json['routeId'] as String,
      ship: Ship.fromJson(json['ship'] as Map<String, dynamic>),
      cargo: (json['cargo'] as List<dynamic>)
          .map((e) => CargoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureTime: DateTime.parse(json['departureTime'] as String),
      estimatedReturnTime: (json['estimatedReturnTime'] as num).toInt(),
      status: $enumDecode(_$ExpeditionStatusEnumMap, json['status']),
      progressPercent: (json['progressPercent'] as num?)?.toInt() ?? 0,
      encountersText: (json['encountersText'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      results: json['results'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TradingExpeditionImplToJson(
        _$TradingExpeditionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'routeId': instance.routeId,
      'ship': instance.ship,
      'cargo': instance.cargo,
      'departureTime': instance.departureTime.toIso8601String(),
      'estimatedReturnTime': instance.estimatedReturnTime,
      'status': _$ExpeditionStatusEnumMap[instance.status]!,
      'progressPercent': instance.progressPercent,
      'encountersText': instance.encountersText,
      'results': instance.results,
    };

const _$ExpeditionStatusEnumMap = {
  ExpeditionStatus.preparing: 'preparing',
  ExpeditionStatus.traveling: 'traveling',
  ExpeditionStatus.trading: 'trading',
  ExpeditionStatus.returning: 'returning',
  ExpeditionStatus.completed: 'completed',
  ExpeditionStatus.failed: 'failed',
};

_$ShipImpl _$$ShipImplFromJson(Map<String, dynamic> json) => _$ShipImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$ShipTypeEnumMap, json['type']),
      cargoCapacity: (json['cargoCapacity'] as num).toInt(),
      speed: (json['speed'] as num).toInt(),
      durability: (json['durability'] as num).toInt(),
      currentCondition: (json['currentCondition'] as num).toInt(),
      crewSize: (json['crewSize'] as num).toInt(),
      maintenanceCost: (json['maintenanceCost'] as num).toInt(),
      isAvailable: json['isAvailable'] as bool? ?? false,
      upgrades: (json['upgrades'] as List<dynamic>?)
          ?.map((e) => ShipUpgrade.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShipImplToJson(_$ShipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$ShipTypeEnumMap[instance.type]!,
      'cargoCapacity': instance.cargoCapacity,
      'speed': instance.speed,
      'durability': instance.durability,
      'currentCondition': instance.currentCondition,
      'crewSize': instance.crewSize,
      'maintenanceCost': instance.maintenanceCost,
      'isAvailable': instance.isAvailable,
      'upgrades': instance.upgrades,
    };

const _$ShipTypeEnumMap = {
  ShipType.fishing_boat: 'fishing_boat',
  ShipType.merchant_vessel: 'merchant_vessel',
  ShipType.war_galley: 'war_galley',
  ShipType.luxury_yacht: 'luxury_yacht',
};

_$CargoItemImpl _$$CargoItemImplFromJson(Map<String, dynamic> json) =>
    _$CargoItemImpl(
      goodId: json['goodId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      purchasePrice: (json['purchasePrice'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CargoItemImplToJson(_$CargoItemImpl instance) =>
    <String, dynamic>{
      'goodId': instance.goodId,
      'quantity': instance.quantity,
      'purchasePrice': instance.purchasePrice,
      'notes': instance.notes,
    };

_$ShipUpgradeImpl _$$ShipUpgradeImplFromJson(Map<String, dynamic> json) =>
    _$ShipUpgradeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$UpgradeTypeEnumMap, json['type']),
      cost: (json['cost'] as num).toInt(),
      effects: Map<String, int>.from(json['effects'] as Map),
    );

Map<String, dynamic> _$$ShipUpgradeImplToJson(_$ShipUpgradeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$UpgradeTypeEnumMap[instance.type]!,
      'cost': instance.cost,
      'effects': instance.effects,
    };

const _$UpgradeTypeEnumMap = {
  UpgradeType.cargo: 'cargo',
  UpgradeType.speed: 'speed',
  UpgradeType.durability: 'durability',
  UpgradeType.crew: 'crew',
  UpgradeType.navigation: 'navigation',
};

_$TradeContractImpl _$$TradeContractImplFromJson(Map<String, dynamic> json) =>
    _$TradeContractImpl(
      id: json['id'] as String,
      routeId: json['routeId'] as String,
      clientName: json['clientName'] as String,
      description: json['description'] as String,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => ContractRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      reward: ContractReward.fromJson(json['reward'] as Map<String, dynamic>),
      deadline: DateTime.parse(json['deadline'] as String),
      difficulty: $enumDecode(_$ContractDifficultyEnumMap, json['difficulty']),
      status: $enumDecodeNullable(_$ContractStatusEnumMap, json['status']) ??
          ContractStatus.available,
      reputation: (json['reputation'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TradeContractImplToJson(_$TradeContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'routeId': instance.routeId,
      'clientName': instance.clientName,
      'description': instance.description,
      'requirements': instance.requirements,
      'reward': instance.reward,
      'deadline': instance.deadline.toIso8601String(),
      'difficulty': _$ContractDifficultyEnumMap[instance.difficulty]!,
      'status': _$ContractStatusEnumMap[instance.status]!,
      'reputation': instance.reputation,
    };

const _$ContractDifficultyEnumMap = {
  ContractDifficulty.simple: 'simple',
  ContractDifficulty.moderate: 'moderate',
  ContractDifficulty.challenging: 'challenging',
  ContractDifficulty.expert: 'expert',
};

const _$ContractStatusEnumMap = {
  ContractStatus.available: 'available',
  ContractStatus.accepted: 'accepted',
  ContractStatus.in_progress: 'in_progress',
  ContractStatus.completed: 'completed',
  ContractStatus.failed: 'failed',
  ContractStatus.expired: 'expired',
};

_$ContractRequirementImpl _$$ContractRequirementImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractRequirementImpl(
      goodId: json['goodId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      maxPrice: (json['maxPrice'] as num).toInt(),
      quality: json['quality'] as String?,
    );

Map<String, dynamic> _$$ContractRequirementImplToJson(
        _$ContractRequirementImpl instance) =>
    <String, dynamic>{
      'goodId': instance.goodId,
      'quantity': instance.quantity,
      'maxPrice': instance.maxPrice,
      'quality': instance.quality,
    };

_$ContractRewardImpl _$$ContractRewardImplFromJson(Map<String, dynamic> json) =>
    _$ContractRewardImpl(
      drachmae: (json['drachmae'] as num).toInt(),
      reputation: (json['reputation'] as num?)?.toInt() ?? 0,
      experience: (json['experience'] as num?)?.toInt() ?? 0,
      bonusItems: (json['bonusItems'] as List<dynamic>?)
          ?.map((e) => InventoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContractRewardImplToJson(
        _$ContractRewardImpl instance) =>
    <String, dynamic>{
      'drachmae': instance.drachmae,
      'reputation': instance.reputation,
      'experience': instance.experience,
      'bonusItems': instance.bonusItems,
    };
