import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shop.dart';
import '../models/player.dart';
import '../providers/player_provider.dart';
import '../data/shops/shop_inventory.dart';
import '../utils/equipment_calculator.dart';

class InventoryScreen extends ConsumerStatefulWidget {
  const InventoryScreen({super.key});

  @override
  ConsumerState<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends ConsumerState<InventoryScreen> {
  ShopItemCategory? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);

    // Get all items from inventory
    final inventoryItems = <ShopItem>[];
    for (final entry in player.inventory.entries) {
      final item = _getItemById(entry.key);
      if (item != null) {
        inventoryItems.add(item);
      }
    }

    // Filter by category if selected
    final filteredItems = _selectedCategory == null
        ? inventoryItems
        : inventoryItems.where((item) => item.category == _selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory'),
        backgroundColor: const Color(0xFF2C5F2D),
      ),
      body: Column(
        children: [
          // Stats bar
          _buildStatsBar(player),

          // Category filter
          _buildCategoryFilter(inventoryItems),

          // Inventory grid
          Expanded(
            child: inventoryItems.isEmpty
                ? _buildEmptyState()
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      final quantity = player.inventory[item.itemId] ?? 0;
                      return _buildInventoryItemCard(item, quantity);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsBar(Player player) {
    final combatPower = EquipmentCalculator.getCombatPower(player);
    final defense = EquipmentCalculator.getDefense(player);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(Icons.favorite, Colors.red, 'HP', player.health, 100),
              _buildStatItem(Icons.flash_on, Colors.yellow, 'EN', player.energy, 100),
              _buildStatItem(Icons.inventory_2, Colors.blue, 'Items', player.inventory.values.fold(0, (a, b) => a + b), null),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(Icons.sports_martial_arts, Colors.orange, 'ATK', combatPower, null),
              _buildStatItem(Icons.shield, Colors.grey.shade700, 'DEF', defense, null),
              _buildStatItem(Icons.stars, Colors.amber, 'LVL', player.level, null),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(IconData icon, Color color, String label, int current, int? max) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(
          max != null ? '$current/$max' : '$current',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
      ],
    );
  }

  Widget _buildCategoryFilter(List<ShopItem> items) {
    final categories = items.map((item) => item.category).toSet().toList();

    if (categories.isEmpty) return const SizedBox.shrink();

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildCategoryChip('All', null, items.length),
          ...categories.map((category) {
            final count = items.where((item) => item.category == category).length;
            return _buildCategoryChip(_getCategoryName(category), category, count);
          }),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, ShopItemCategory? category, int count) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text('$label ($count)'),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = selected ? category : null;
          });
        },
        selectedColor: const Color(0xFF2C5F2D).withOpacity(0.3),
        checkmarkColor: const Color(0xFF2C5F2D),
      ),
    );
  }

  Widget _buildInventoryItemCard(ShopItem item, int quantity) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: () => _showItemDetails(item, quantity),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category badge and quantity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(item.category).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      _getCategoryIcon(item.category),
                      size: 16,
                      color: _getCategoryColor(item.category),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'x$quantity',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Item name
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),

              // Item description
              Expanded(
                child: Text(
                  item.description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              // Action button for consumables
              if (item.category == ShopItemCategory.consumable)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _useItem(item),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 4),
                    ),
                    child: const Text('Use', style: TextStyle(fontSize: 12)),
                  ),
                ),

              // Action button for equipment
              if (item.category == ShopItemCategory.weapon ||
                  item.category == ShopItemCategory.armor ||
                  item.category == ShopItemCategory.equipment)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _equipItem(item),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isEquipped(item) ? Colors.orange : Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 4),
                    ),
                    child: Text(
                      _isEquipped(item) ? 'Equipped' : 'Equip',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.inventory_2_outlined, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          Text(
            'Your inventory is empty',
            style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 8),
          Text(
            'Visit shops to purchase items',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }

  void _showItemDetails(ShopItem item, int quantity) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(_getCategoryIcon(item.category), color: _getCategoryColor(item.category)),
            const SizedBox(width: 8),
            Expanded(child: Text(item.name)),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Quantity
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Quantity:', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('x$quantity', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Description
              const Text('Description:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(item.description),

              // Effects
              if (item.effects != null && item.effects!.isNotEmpty) ...[
                const SizedBox(height: 16),
                const Text('Effects:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ...item.effects!.entries.map((effect) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      children: [
                        Icon(_getEffectIcon(effect.key), size: 16, color: Colors.green),
                        const SizedBox(width: 8),
                        Text(_getEffectDescription(effect.key, effect.value)),
                      ],
                    ),
                  );
                }),
              ],

              // Category
              const SizedBox(height: 16),
              Chip(
                avatar: Icon(_getCategoryIcon(item.category), size: 16),
                label: Text(_getCategoryName(item.category)),
                backgroundColor: _getCategoryColor(item.category).withOpacity(0.2),
              ),
            ],
          ),
        ),
        actions: [
          if (item.category == ShopItemCategory.consumable)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                _useItem(item);
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Use Item'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _useItem(ShopItem item) {
    final playerNotifier = ref.read(playerProvider.notifier);
    playerNotifier.consumeItem(item.itemId, item.effects);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Used ${item.name}!'),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _equipItem(ShopItem item) {
    final playerNotifier = ref.read(playerProvider.notifier);
    final slot = EquipmentCalculator.getSlotForItem(item);

    if (slot != null) {
      if (_isEquipped(item)) {
        // Unequip
        playerNotifier.unequipItem(slot);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Unequipped ${item.name}'),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 2),
          ),
        );
      } else {
        // Equip
        playerNotifier.equipItem(slot, item.itemId);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Equipped ${item.name}!'),
            backgroundColor: Colors.blue,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  bool _isEquipped(ShopItem item) {
    final player = ref.watch(playerProvider);
    return player.equippedItems.values.contains(item.itemId);
  }

  ShopItem? _getItemById(String itemId) {
    for (final shop in ShopInventory.getAllShops()) {
      for (final item in shop.inventory) {
        if (item.itemId == itemId) {
          return item;
        }
      }
    }
    return null;
  }

  String _getCategoryName(ShopItemCategory category) {
    switch (category) {
      case ShopItemCategory.equipment:
        return 'Equipment';
      case ShopItemCategory.weapon:
        return 'Weapons';
      case ShopItemCategory.armor:
        return 'Armor';
      case ShopItemCategory.consumable:
        return 'Consumables';
      case ShopItemCategory.shipPart:
        return 'Ship Parts';
      case ShopItemCategory.information:
        return 'Information';
      case ShopItemCategory.luxury:
        return 'Luxury';
      case ShopItemCategory.resource:
        return 'Resources';
    }
  }

  IconData _getCategoryIcon(ShopItemCategory category) {
    switch (category) {
      case ShopItemCategory.equipment:
        return Icons.backpack;
      case ShopItemCategory.weapon:
        return Icons.sports_martial_arts;
      case ShopItemCategory.armor:
        return Icons.shield;
      case ShopItemCategory.consumable:
        return Icons.restaurant;
      case ShopItemCategory.shipPart:
        return Icons.sailing;
      case ShopItemCategory.information:
        return Icons.info;
      case ShopItemCategory.luxury:
        return Icons.diamond;
      case ShopItemCategory.resource:
        return Icons.inventory;
    }
  }

  Color _getCategoryColor(ShopItemCategory category) {
    switch (category) {
      case ShopItemCategory.equipment:
        return Colors.blue;
      case ShopItemCategory.weapon:
        return Colors.red;
      case ShopItemCategory.armor:
        return Colors.grey;
      case ShopItemCategory.consumable:
        return Colors.green;
      case ShopItemCategory.shipPart:
        return Colors.cyan;
      case ShopItemCategory.information:
        return Colors.purple;
      case ShopItemCategory.luxury:
        return Colors.amber;
      case ShopItemCategory.resource:
        return Colors.brown;
    }
  }

  IconData _getEffectIcon(String effectKey) {
    switch (effectKey) {
      case 'health':
        return Icons.favorite;
      case 'energy':
        return Icons.flash_on;
      case 'reputation':
      case 'reputation_noble':
      case 'reputation_military':
      case 'reputation_priest':
        return Icons.star;
      case 'combat_power':
        return Icons.sports_martial_arts;
      case 'defense':
        return Icons.shield;
      default:
        return Icons.auto_awesome;
    }
  }

  String _getEffectDescription(String effectKey, dynamic value) {
    switch (effectKey) {
      case 'health':
        return '+$value Health';
      case 'energy':
        return '+$value Energy';
      case 'reputation':
        return '+$value Reputation';
      case 'reputation_noble':
        return '+$value Reputation (Nobles)';
      case 'reputation_military':
        return '+$value Reputation (Military)';
      case 'reputation_priest':
        return '+$value Reputation (Priests)';
      case 'combat_power':
        return '+$value Combat Power';
      case 'defense':
        return '+$value Defense';
      case 'charisma':
        return '+$value Charisma';
      default:
        return '$effectKey: $value';
    }
  }
}
