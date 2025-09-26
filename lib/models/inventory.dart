import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class Inventory with _$Inventory {
  const factory Inventory({
    @Default([]) List<InventoryItem> items,
    @Default(20) int maxSlots,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, Object?> json) => _$InventoryFromJson(json);
}

@freezed
class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    required String id,
    required String name,
    required String description,
    required ItemType type,
    required int value,
    @Default(1) int quantity,
    @Default(ItemRarity.common) ItemRarity rarity,
  }) = _InventoryItem;

  factory InventoryItem.fromJson(Map<String, Object?> json) => _$InventoryItemFromJson(json);
}

enum ItemType {
  @JsonValue('food')
  food,
  @JsonValue('tool')
  tool,
  @JsonValue('trade_good')
  tradeGood,
  @JsonValue('quest_item')
  questItem,
  @JsonValue('resource')
  resource,
}

enum ItemRarity {
  @JsonValue('common')
  common,
  @JsonValue('uncommon')
  uncommon,
  @JsonValue('rare')
  rare,
  @JsonValue('legendary')
  legendary,
}