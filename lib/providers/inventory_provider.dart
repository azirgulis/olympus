import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/inventory.dart';

class InventoryNotifier extends StateNotifier<Inventory> {
  InventoryNotifier() : super(const Inventory());

  void initializeStartingInventory() {
    final startingItems = [
      const InventoryItem(
        id: 'bread',
        name: 'Bread',
        description: 'Basic sustenance for your journey',
        type: ItemType.food,
        value: 5,
        quantity: 3,
      ),
      const InventoryItem(
        id: 'water',
        name: 'Water',
        description: 'Essential for survival',
        type: ItemType.resource,
        value: 3,
        quantity: 5,
      ),
      const InventoryItem(
        id: 'simple_tool',
        name: 'Simple Tool',
        description: 'A basic tool for various tasks',
        type: ItemType.tool,
        value: 15,
        quantity: 1,
      ),
    ];

    state = state.copyWith(items: startingItems);
  }

  bool addItem(InventoryItem newItem) {
    if (state.items.length >= state.maxSlots) {
      return false; // Inventory full
    }

    // Check if item already exists and can be stacked
    final existingItemIndex = state.items.indexWhere(
      (item) => item.id == newItem.id,
    );

    if (existingItemIndex != -1) {
      // Stack with existing item
      final updatedItems = List<InventoryItem>.from(state.items);
      updatedItems[existingItemIndex] = updatedItems[existingItemIndex].copyWith(
        quantity: updatedItems[existingItemIndex].quantity + newItem.quantity,
      );
      state = state.copyWith(items: updatedItems);
    } else {
      // Add as new item
      state = state.copyWith(
        items: [...state.items, newItem],
      );
    }
    return true;
  }

  bool removeItem(String itemId, {int quantity = 1}) {
    final itemIndex = state.items.indexWhere((item) => item.id == itemId);

    if (itemIndex == -1) {
      return false; // Item not found
    }

    final item = state.items[itemIndex];
    if (item.quantity < quantity) {
      return false; // Not enough quantity
    }

    final updatedItems = List<InventoryItem>.from(state.items);

    if (item.quantity == quantity) {
      // Remove item completely
      updatedItems.removeAt(itemIndex);
    } else {
      // Reduce quantity
      updatedItems[itemIndex] = item.copyWith(
        quantity: item.quantity - quantity,
      );
    }

    state = state.copyWith(items: updatedItems);
    return true;
  }

  bool useItem(String itemId, {int quantity = 1}) {
    return removeItem(itemId, quantity: quantity);
  }

  InventoryItem? getItem(String itemId) {
    try {
      return state.items.firstWhere((item) => item.id == itemId);
    } catch (e) {
      return null;
    }
  }

  int getItemQuantity(String itemId) {
    final item = getItem(itemId);
    return item?.quantity ?? 0;
  }

  bool hasItem(String itemId, {int minQuantity = 1}) {
    return getItemQuantity(itemId) >= minQuantity;
  }

  List<InventoryItem> getItemsByType(ItemType type) {
    return state.items.where((item) => item.type == type).toList();
  }

  int getTotalValue() {
    return state.items.fold(0, (total, item) => total + (item.value * item.quantity));
  }

  bool isInventoryFull() {
    return state.items.length >= state.maxSlots;
  }

  void clearInventory() {
    state = const Inventory();
  }
}

final inventoryProvider = StateNotifierProvider<InventoryNotifier, Inventory>((ref) {
  return InventoryNotifier();
});