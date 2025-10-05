import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/shop.dart';
import '../models/inventory.dart';
import '../data/shops/shop_inventory.dart';
import '../providers/player_provider.dart';

class ShopScreen extends ConsumerStatefulWidget {
  final String shopId;

  const ShopScreen({
    super.key,
    required this.shopId,
  });

  @override
  ConsumerState<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen> {
  ShopItemCategory? _selectedCategory;
  ShopItem? _selectedItem;

  @override
  Widget build(BuildContext context) {
    final shop = ShopInventory.getShopById(widget.shopId);

    if (shop == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Shop Not Found')),
        body: const Center(child: Text('This shop does not exist.')),
      );
    }

    final player = ref.watch(playerProvider);
    final playerDrachmae = player.drachmae;

    // Check reputation requirement
    if (shop.minReputation != null) {
      final athensRep = player.reputation['athens'] ?? 0;
      if (athensRep < shop.minReputation!) {
        return Scaffold(
          appBar: AppBar(title: Text(shop.name)),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.lock, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    'Reputation Required',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'You need ${shop.minReputation} reputation to access this shop.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

    // Get unique categories
    final categories = shop.inventory
        .map((item) => item.category)
        .toSet()
        .toList();

    // Filter items by category
    final filteredItems = _selectedCategory == null
        ? shop.inventory
        : shop.inventory.where((item) => item.category == _selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(shop.name),
            Text(
              shop.description,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.amber.shade700,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.monetization_on, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      '$playerDrachmae',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Category filter
          if (categories.length > 1)
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: [
                  _buildCategoryChip('All', null),
                  ...categories.map((category) => _buildCategoryChip(
                        _getCategoryName(category),
                        category,
                      )),
                ],
              ),
            ),

          // Items grid
          Expanded(
            child: GridView.builder(
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
                final finalPrice = _calculatePrice(item, shop.priceMultiplier);
                final canAfford = playerDrachmae >= finalPrice;
                final outOfStock = item.stock == 0;

                return _buildItemCard(
                  item,
                  finalPrice,
                  canAfford,
                  outOfStock,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, ShopItemCategory? category) {
    final isSelected = _selectedCategory == category;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = selected ? category : null;
          });
        },
      ),
    );
  }

  Widget _buildItemCard(
    ShopItem item,
    int finalPrice,
    bool canAfford,
    bool outOfStock,
  ) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () => _showItemDetails(item, finalPrice, canAfford, outOfStock),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Item icon
              Center(
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: _getCategoryColor(item.category).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getCategoryIcon(item.category),
                    size: 40,
                    color: _getCategoryColor(item.category),
                  ),
                ),
              ),
              const SizedBox(height: 8),

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
              const Spacer(),

              // Tags
              if (item.tags != null && item.tags!.isNotEmpty)
                Wrap(
                  spacing: 4,
                  children: item.tags!.take(2).map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              const SizedBox(height: 8),

              // Price and stock
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 16,
                        color: canAfford ? Colors.amber : Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$finalPrice',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: canAfford ? Colors.black87 : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  if (outOfStock)
                    const Text(
                      'OUT',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  else if (item.stock > 0)
                    Text(
                      'x${item.stock}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showItemDetails(
    ShopItem item,
    int finalPrice,
    bool canAfford,
    bool outOfStock,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: ListView(
              controller: scrollController,
              padding: const EdgeInsets.all(24),
              children: [
                // Drag handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Item icon
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: _getCategoryColor(item.category).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      _getCategoryIcon(item.category),
                      size: 60,
                      color: _getCategoryColor(item.category),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Item name
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),

                // Category badge
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(item.category).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      _getCategoryName(item.category),
                      style: TextStyle(
                        color: _getCategoryColor(item.category),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Description
                Text(
                  item.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                // Effects
                if (item.effects != null && item.effects!.isNotEmpty) ...[
                  const Divider(),
                  const SizedBox(height: 16),
                  Text(
                    'Effects',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  ...item.effects!.entries.map((effect) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Icon(
                            _getEffectIcon(effect.key),
                            size: 20,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${_formatEffectName(effect.key)}: ${_formatEffectValue(effect.key, effect.value)}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                ],

                // Tags
                if (item.tags != null && item.tags!.isNotEmpty) ...[
                  const Divider(),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: item.tags!.map((tag) {
                      return Chip(
                        label: Text(tag),
                        backgroundColor: Colors.blue.shade100,
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16),
                ],

                // Price info
                const Divider(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Price', style: TextStyle(color: Colors.grey)),
                        Row(
                          children: [
                            const Icon(Icons.monetization_on, color: Colors.amber),
                            const SizedBox(width: 4),
                            Text(
                              '$finalPrice',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(' drachmae'),
                          ],
                        ),
                      ],
                    ),
                    if (item.stock >= 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('Stock', style: TextStyle(color: Colors.grey)),
                          Text(
                            item.stock == -1 ? '' : '${item.stock}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 24),

                // Purchase button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (canAfford && !outOfStock)
                        ? () => _purchaseItem(item, finalPrice)
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      disabledBackgroundColor: Colors.grey,
                    ),
                    child: Text(
                      outOfStock
                          ? 'OUT OF STOCK'
                          : !canAfford
                              ? 'CANNOT AFFORD'
                              : 'PURCHASE',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  int _calculatePrice(ShopItem item, double priceMultiplier) {
    int price = item.basePrice;

    // Apply shop price multiplier
    price = (price * priceMultiplier).round();

    // Apply discount if item has one
    if (item.discountPercent != null && item.discountPercent! > 0) {
      price = (price * (1 - item.discountPercent! / 100)).round();
    }

    return price;
  }

  void _purchaseItem(ShopItem item, int finalPrice) {
    final playerNotifier = ref.read(playerProvider.notifier);

    // Deduct drachmae
    playerNotifier.spendDrachmae(finalPrice);

    // Add item to inventory
    playerNotifier.addItem(item.itemId, 1);

    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 8),
            Expanded(
              child: Text('Purchased ${item.name} for $finalPrice drachmae!'),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );

    setState(() {}); // Refresh UI
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
        return Icons.hardware;
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
        return Icons.inventory_2;
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
    if (effectKey.contains('health')) return Icons.favorite;
    if (effectKey.contains('energy')) return Icons.bolt;
    if (effectKey.contains('combat')) return Icons.flash_on;
    if (effectKey.contains('defense')) return Icons.shield;
    if (effectKey.contains('reputation')) return Icons.star;
    if (effectKey.contains('charisma')) return Icons.psychology;
    if (effectKey.contains('luck')) return Icons.casino;
    if (effectKey.contains('protection')) return Icons.security;
    return Icons.check_circle;
  }

  String _formatEffectName(String effectKey) {
    return effectKey
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  String _formatEffectValue(String effectKey, dynamic value) {
    if (value is bool) {
      return value ? 'Yes' : 'No';
    }
    if (value is double && effectKey.contains('discount')) {
      return '${(value * 100).toInt()}%';
    }
    if (effectKey.contains('percent')) {
      return '$value%';
    }
    return value.toString();
  }
}
