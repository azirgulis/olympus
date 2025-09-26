import 'package:freezed_annotation/freezed_annotation.dart';
import 'inventory.dart';

part 'harbor.freezed.dart';
part 'harbor.g.dart';

@freezed
class TradeRoute with _$TradeRoute {
  const factory TradeRoute({
    required String id,
    required String name,
    required String destination,
    required String description,
    required int distance, // in nautical miles
    required int baseTravelTime, // in hours
    required List<TradeGood> exports, // goods Greece sends
    required List<TradeGood> imports, // goods Greece receives
    required TradeDifficulty difficulty,
    required List<String> risks,
    @Default(false) bool isUnlocked,
    @Default(0) int reputation,
    double? exchangeRate, // relative to drachmae
    String? specialNotes,
  }) = _TradeRoute;

  factory TradeRoute.fromJson(Map<String, dynamic> json) => _$TradeRouteFromJson(json);
}

@freezed
class TradeGood with _$TradeGood {
  const factory TradeGood({
    required String id,
    required String name,
    required String description,
    required TradeGoodCategory category,
    required int baseValue, // in drachmae
    required double demandMultiplier, // how much this region wants it
    required double supplyMultiplier, // how much this region has
    @Default(1) int minQuantity,
    @Default(100) int maxQuantity,
    String? origin, // where it comes from
    List<String>? tags,
  }) = _TradeGood;

  factory TradeGood.fromJson(Map<String, dynamic> json) => _$TradeGoodFromJson(json);
}

@freezed
class TradingExpedition with _$TradingExpedition {
  const factory TradingExpedition({
    required String id,
    required String routeId,
    required Ship ship,
    required List<CargoItem> cargo,
    required DateTime departureTime,
    required int estimatedReturnTime, // in hours
    required ExpeditionStatus status,
    @Default(0) int progressPercent,
    List<String>? encountersText,
    Map<String, dynamic>? results,
  }) = _TradingExpedition;

  factory TradingExpedition.fromJson(Map<String, dynamic> json) => _$TradingExpeditionFromJson(json);
}

@freezed
class Ship with _$Ship {
  const factory Ship({
    required String id,
    required String name,
    required ShipType type,
    required int cargoCapacity,
    required int speed, // affects travel time
    required int durability,
    required int currentCondition,
    required int crewSize,
    required int maintenanceCost,
    @Default(false) bool isAvailable,
    List<ShipUpgrade>? upgrades,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
}

@freezed
class CargoItem with _$CargoItem {
  const factory CargoItem({
    required String goodId,
    required int quantity,
    required int purchasePrice,
    String? notes,
  }) = _CargoItem;

  factory CargoItem.fromJson(Map<String, dynamic> json) => _$CargoItemFromJson(json);
}

@freezed
class ShipUpgrade with _$ShipUpgrade {
  const factory ShipUpgrade({
    required String id,
    required String name,
    required String description,
    required UpgradeType type,
    required int cost,
    required Map<String, int> effects,
  }) = _ShipUpgrade;

  factory ShipUpgrade.fromJson(Map<String, dynamic> json) => _$ShipUpgradeFromJson(json);
}

@freezed
class TradeContract with _$TradeContract {
  const factory TradeContract({
    required String id,
    required String routeId,
    required String clientName,
    required String description,
    required List<ContractRequirement> requirements,
    required ContractReward reward,
    required DateTime deadline,
    required ContractDifficulty difficulty,
    @Default(ContractStatus.available) ContractStatus status,
    @Default(0) int reputation,
  }) = _TradeContract;

  factory TradeContract.fromJson(Map<String, dynamic> json) => _$TradeContractFromJson(json);
}

@freezed
class ContractRequirement with _$ContractRequirement {
  const factory ContractRequirement({
    required String goodId,
    required int quantity,
    required int maxPrice,
    String? quality,
  }) = _ContractRequirement;

  factory ContractRequirement.fromJson(Map<String, dynamic> json) => _$ContractRequirementFromJson(json);
}

@freezed
class ContractReward with _$ContractReward {
  const factory ContractReward({
    required int drachmae,
    @Default(0) int reputation,
    @Default(0) int experience,
    List<InventoryItem>? bonusItems,
  }) = _ContractReward;

  factory ContractReward.fromJson(Map<String, dynamic> json) => _$ContractRewardFromJson(json);
}

enum TradeDifficulty {
  easy,
  medium,
  hard,
  dangerous,
}

enum TradeGoodCategory {
  food,
  luxury,
  raw_materials,
  crafted_goods,
  precious_metals,
  spices,
  textiles,
  weapons,
  art,
}

enum ExpeditionStatus {
  preparing,
  traveling,
  trading,
  returning,
  completed,
  failed,
}

enum ShipType {
  fishing_boat,
  merchant_vessel,
  war_galley,
  luxury_yacht,
}

enum UpgradeType {
  cargo,
  speed,
  durability,
  crew,
  navigation,
}

enum ContractStatus {
  available,
  accepted,
  in_progress,
  completed,
  failed,
  expired,
}

enum ContractDifficulty {
  simple,
  moderate,
  challenging,
  expert,
}