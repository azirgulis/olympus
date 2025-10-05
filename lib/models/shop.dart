import 'package:freezed_annotation/freezed_annotation.dart';
import 'inventory.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

/// Shop that sells items
@freezed
class Shop with _$Shop {
  const factory Shop({
    required String id,
    required String name,
    required String description,
    required ShopType type,
    required String location,
    required List<ShopItem> inventory,
    @Default(1.0) double priceMultiplier, // 1.0 = normal, 1.5 = 50% markup
    @Default([]) List<String> specialOffers,
    int? minReputation,
    String? ownerNpcId,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}

/// Type of shop
enum ShopType {
  @JsonValue('general')
  general,
  @JsonValue('weapons')
  weapons,
  @JsonValue('armor')
  armor,
  @JsonValue('food')
  food,
  @JsonValue('luxury')
  luxury,
  @JsonValue('ship_upgrade')
  shipUpgrade,
  @JsonValue('information')
  information,
  @JsonValue('consumables')
  consumables,
}

/// Item available in a shop
@freezed
class ShopItem with _$ShopItem {
  const factory ShopItem({
    required String itemId,
    required String name,
    required String description,
    required int basePrice,
    required ShopItemCategory category,
    @Default(1) int stock, // -1 = infinite
    @Default(false) bool isSpecialOffer,
    int? discountPercent,
    List<String>? tags,
    Map<String, dynamic>? effects,
  }) = _ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) => _$ShopItemFromJson(json);
}

/// Category of shop items
enum ShopItemCategory {
  @JsonValue('equipment')
  equipment,
  @JsonValue('weapon')
  weapon,
  @JsonValue('armor')
  armor,
  @JsonValue('consumable')
  consumable,
  @JsonValue('ship_part')
  shipPart,
  @JsonValue('information')
  information,
  @JsonValue('luxury')
  luxury,
  @JsonValue('resource')
  resource,
}

/// Transaction record
@freezed
class ShopTransaction with _$ShopTransaction {
  const factory ShopTransaction({
    required String shopId,
    required String itemId,
    required int quantity,
    required int totalPrice,
    required DateTime timestamp,
    required TransactionType type,
  }) = _ShopTransaction;

  factory ShopTransaction.fromJson(Map<String, dynamic> json) => _$ShopTransactionFromJson(json);
}

/// Type of transaction
enum TransactionType {
  @JsonValue('buy')
  buy,
  @JsonValue('sell')
  sell,
}
