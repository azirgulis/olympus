import '../models/player.dart';
import '../models/shop.dart';
import '../data/shops/shop_inventory.dart';

class EquipmentCalculator {
  /// Get all equipment bonuses for the player
  static Map<String, int> getEquipmentBonuses(Player player) {
    final bonuses = <String, int>{};

    for (final entry in player.equippedItems.entries) {
      final itemId = entry.value;
      final item = _getItemById(itemId);

      if (item != null && item.effects != null) {
        for (final effect in item.effects!.entries) {
          if (effect.value is int) {
            bonuses[effect.key] = (bonuses[effect.key] ?? 0) + (effect.value as int);
          }
        }
      }
    }

    return bonuses;
  }

  /// Get total combat power including equipment
  static int getCombatPower(Player player) {
    final bonuses = getEquipmentBonuses(player);
    final basePower = player.level * 5; // Base power from level
    final equipmentPower = bonuses['combat_power'] ?? 0;
    return basePower + equipmentPower;
  }

  /// Get total defense including equipment
  static int getDefense(Player player) {
    final bonuses = getEquipmentBonuses(player);
    final baseDefense = player.level * 2; // Base defense from level
    final equipmentDefense = bonuses['defense'] ?? 0;
    return baseDefense + equipmentDefense;
  }

  /// Check if an item can be equipped
  static bool canEquip(Player player, ShopItem item) {
    // Check if item is in inventory
    final quantity = player.inventory[item.itemId] ?? 0;
    if (quantity <= 0) return false;

    // Check item category
    if (item.category != ShopItemCategory.weapon &&
        item.category != ShopItemCategory.armor &&
        item.category != ShopItemCategory.equipment) {
      return false;
    }

    return true;
  }

  /// Get the slot for an item type
  static String? getSlotForItem(ShopItem item) {
    switch (item.category) {
      case ShopItemCategory.weapon:
        return 'weapon';
      case ShopItemCategory.armor:
        return 'armor';
      case ShopItemCategory.equipment:
        return 'accessory';
      default:
        return null;
    }
  }

  static ShopItem? _getItemById(String itemId) {
    for (final shop in ShopInventory.getAllShops()) {
      for (final item in shop.inventory) {
        if (item.itemId == itemId) {
          return item;
        }
      }
    }
    return null;
  }
}
