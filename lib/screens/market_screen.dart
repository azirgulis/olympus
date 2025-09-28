import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/player_provider.dart';
import '../providers/inventory_provider.dart';
import '../providers/market_provider.dart';
import '../providers/game_state_provider.dart';
import '../models/location.dart';
import '../models/inventory.dart';

class MarketScreen extends ConsumerStatefulWidget {
  final String locationId;

  const MarketScreen({
    super.key,
    required this.locationId,
  });

  @override
  ConsumerState<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends ConsumerState<MarketScreen> {
  String selectedTab = 'buy';
  String? selectedItemId;

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    final inventory = ref.watch(inventoryProvider);
    final market = ref.watch(marketProvider);
    final gameState = ref.watch(gameStateProvider);

    final marketItems = market[widget.locationId] ?? [];
    final isFirstTrade = !(gameState.completedTutorials['first_trade'] ?? false);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8B4513), // Ancient brown
              Color(0xFFDEB887), // Burlywood
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            'Athenian Marketplace',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.monetization_on, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                '${player.drachmae}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Tutorial message for first visit
                    if (isFirstTrade) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD700).withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '💡 Tutorial: Buy low, sell high! Watch how prices change with supply and demand.',
                          style: TextStyle(
                            color: Color(0xFF8B4513),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // Tab selector
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => selectedTab = 'buy'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: selectedTab == 'buy'
                                ? const Color(0xFF8B4513)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'BUY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: selectedTab == 'buy' ? Colors.white : const Color(0xFF8B4513),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => selectedTab = 'sell'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: selectedTab == 'sell'
                                ? const Color(0xFF8B4513)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'SELL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: selectedTab == 'sell' ? Colors.white : const Color(0xFF8B4513),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Market items
              Expanded(
                child: selectedTab == 'buy'
                    ? _buildBuyTab(marketItems, player)
                    : _buildSellTab(inventory.items, marketItems),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBuyTab(List<MarketItem> marketItems, player) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: marketItems.length,
      itemBuilder: (context, index) {
        final item = marketItems[index];
        final canAfford = player.drachmae >= item.currentPrice;
        final hasStock = item.stock > 0;

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: canAfford && hasStock
                  ? const Color(0xFF8B4513)
                  : Colors.grey,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              // Item icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF8B4513),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getItemIcon(item.itemId),
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),

              // Item details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8B4513),
                      ),
                    ),
                    Text(
                      'Stock: ${item.stock}',
                      style: TextStyle(
                        fontSize: 12,
                        color: hasStock ? Colors.green : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Price: ${item.currentPrice} 🪙',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (item.currentPrice != item.basePrice)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: item.currentPrice > item.basePrice
                                  ? Colors.red.withValues(alpha: 0.2)
                                  : Colors.green.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              item.currentPrice > item.basePrice ? '📈' : '📉',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              // Buy button
              ElevatedButton(
                onPressed: canAfford && hasStock ? () => _buyItem(item) : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8B4513),
                  foregroundColor: Colors.white,
                ),
                child: const Text('BUY'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSellTab(List<InventoryItem> inventoryItems, List<MarketItem> marketItems) {
    final sellableItems = inventoryItems.where((item) =>
      item.type != ItemType.questItem && item.quantity > 0
    ).toList();

    if (sellableItems.isEmpty) {
      return const Center(
        child: Text(
          'No items to sell',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: sellableItems.length,
      itemBuilder: (context, index) {
        final item = sellableItems[index];
        final marketItem = marketItems.firstWhere(
          (m) => m.itemId == item.id,
          orElse: () => MarketItem(
            itemId: item.id,
            name: item.name,
            basePrice: item.value,
            currentPrice: (item.value * 0.7).round(),
            stock: 0,
            demand: 1,
          ),
        );

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF8B4513), width: 2),
          ),
          child: Row(
            children: [
              // Item icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF8B4513),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getInventoryItemIcon(item.type),
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),

              // Item details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8B4513),
                      ),
                    ),
                    Text(
                      'Owned: ${item.quantity}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Sell for: ${marketItem.currentPrice} 🪙',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Sell button
              ElevatedButton(
                onPressed: () => _sellItem(item, marketItem),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text('SELL'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _buyItem(MarketItem item) {
    final playerNotifier = ref.read(playerProvider.notifier);
    final inventoryNotifier = ref.read(inventoryProvider.notifier);
    final marketNotifier = ref.read(marketProvider.notifier);
    final gameStateNotifier = ref.read(gameStateProvider.notifier);

    // Check if player can afford it
    if (ref.read(playerProvider).drachmae < item.currentPrice) {
      _showMessage('Not enough drachmae!', isError: true);
      return;
    }

    // Check if item is in stock
    if (item.stock <= 0) {
      _showMessage('Out of stock!', isError: true);
      return;
    }

    // Execute purchase
    playerNotifier.spendDrachmae(item.currentPrice);
    marketNotifier.buyItem(widget.locationId, item.itemId, 1);

    // Add to inventory
    final inventoryItem = InventoryItem(
      id: item.itemId,
      name: item.name,
      description: _getItemDescription(item.itemId),
      type: _getItemTypeFromId(item.itemId),
      value: item.basePrice,
      quantity: 1,
    );

    if (!inventoryNotifier.addItem(inventoryItem)) {
      _showMessage('Inventory full!', isError: true);
      // Refund the purchase
      playerNotifier.addDrachmae(item.currentPrice);
      marketNotifier.sellItem(widget.locationId, item.itemId, 1);
      return;
    }

    // Mark first trade tutorial as complete
    if (!(ref.read(gameStateProvider).completedTutorials['first_trade'] ?? false)) {
      gameStateNotifier.completeTutorial('first_trade');
    }

    _showMessage('Purchased ${item.name}!');
  }

  void _sellItem(InventoryItem item, MarketItem marketItem) {
    final playerNotifier = ref.read(playerProvider.notifier);
    final inventoryNotifier = ref.read(inventoryProvider.notifier);
    final marketNotifier = ref.read(marketProvider.notifier);

    // Execute sale
    if (inventoryNotifier.removeItem(item.id, quantity: 1)) {
      playerNotifier.addDrachmae(marketItem.currentPrice);
      marketNotifier.sellItem(widget.locationId, item.id, 1);

      _showMessage('Sold ${item.name} for ${marketItem.currentPrice} drachmae!');
    }
  }

  void _showMessage(String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  IconData _getItemIcon(String itemId) {
    switch (itemId) {
      case 'bread':
        return Icons.restaurant;
      case 'olive_oil':
        return Icons.water_drop;
      case 'pottery':
        return Icons.widgets;
      case 'tools':
        return Icons.build;
      case 'wine':
        return Icons.wine_bar;
      default:
        return Icons.inventory;
    }
  }

  IconData _getInventoryItemIcon(ItemType type) {
    switch (type) {
      case ItemType.food:
        return Icons.restaurant;
      case ItemType.tool:
        return Icons.build;
      case ItemType.resource:
        return Icons.water_drop;
      case ItemType.tradeGood:
        return Icons.local_shipping;
      case ItemType.questItem:
        return Icons.star;
      case ItemType.treasure:
        return Icons.diamond;
      case ItemType.consumable:
        return Icons.local_drink;
      case ItemType.trade:
        return Icons.business;
      case ItemType.knowledge:
        return Icons.school;
    }
  }

  String _getItemDescription(String itemId) {
    switch (itemId) {
      case 'bread':
        return 'Fresh baked bread, essential for sustenance';
      case 'olive_oil':
        return 'Premium olive oil from local groves';
      case 'pottery':
        return 'Beautiful handcrafted pottery';
      case 'tools':
        return 'Quality iron tools for various tasks';
      case 'wine':
        return 'Fine Greek wine from the countryside';
      default:
        return 'A valuable item';
    }
  }

  ItemType _getItemTypeFromId(String itemId) {
    switch (itemId) {
      case 'bread':
        return ItemType.food;
      case 'olive_oil':
        return ItemType.resource;
      case 'pottery':
        return ItemType.tradeGood;
      case 'tools':
        return ItemType.tool;
      case 'wine':
        return ItemType.tradeGood;
      default:
        return ItemType.resource;
    }
  }
}