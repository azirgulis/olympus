import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/location.dart';

class MarketNotifier extends StateNotifier<Map<String, List<MarketItem>>> {
  MarketNotifier() : super({});

  void initializeMarkets() {
    state = {
      'athens': [
        const MarketItem(
          itemId: 'bread',
          name: 'Fresh Bread',
          basePrice: 3,
          currentPrice: 5,
          stock: 20,
          demand: 8,
          priceMultiplier: 1.0,
        ),
        const MarketItem(
          itemId: 'olive_oil',
          name: 'Olive Oil',
          basePrice: 12,
          currentPrice: 15,
          stock: 10,
          demand: 6,
          priceMultiplier: 1.2,
        ),
        const MarketItem(
          itemId: 'pottery',
          name: 'Fine Pottery',
          basePrice: 25,
          currentPrice: 30,
          stock: 5,
          demand: 3,
          priceMultiplier: 1.5,
        ),
        const MarketItem(
          itemId: 'tools',
          name: 'Iron Tools',
          basePrice: 40,
          currentPrice: 45,
          stock: 8,
          demand: 5,
          priceMultiplier: 1.1,
        ),
        const MarketItem(
          itemId: 'wine',
          name: 'Greek Wine',
          basePrice: 20,
          currentPrice: 18,
          stock: 15,
          demand: 4,
          priceMultiplier: 0.9,
        ),
      ],
    };
  }

  List<MarketItem> getMarketItems(String locationId) {
    return state[locationId] ?? [];
  }

  MarketItem? getMarketItem(String locationId, String itemId) {
    final items = state[locationId] ?? [];
    try {
      return items.firstWhere((item) => item.itemId == itemId);
    } catch (e) {
      return null;
    }
  }

  bool buyItem(String locationId, String itemId, int quantity) {
    final items = List<MarketItem>.from(state[locationId] ?? []);
    final itemIndex = items.indexWhere((item) => item.itemId == itemId);

    if (itemIndex == -1) return false;

    final item = items[itemIndex];
    if (item.stock < quantity) return false;

    // Update stock and price based on supply/demand
    final updatedItem = item.copyWith(
      stock: item.stock - quantity,
      currentPrice: _calculateNewPrice(item, -quantity),
    );

    items[itemIndex] = updatedItem;
    state = {...state, locationId: items};

    return true;
  }

  bool sellItem(String locationId, String itemId, int quantity) {
    final items = List<MarketItem>.from(state[locationId] ?? []);
    final itemIndex = items.indexWhere((item) => item.itemId == itemId);

    if (itemIndex == -1) return false;

    final item = items[itemIndex];

    // Update stock and price
    final updatedItem = item.copyWith(
      stock: item.stock + quantity,
      currentPrice: _calculateNewPrice(item, quantity),
    );

    items[itemIndex] = updatedItem;
    state = {...state, locationId: items};

    return true;
  }

  int _calculateNewPrice(MarketItem item, int stockChange) {
    // Simple supply/demand calculation

    // Price goes down when stock increases, up when stock decreases
    double priceChange = 1.0;
    if (stockChange > 0) {
      priceChange = 0.95; // Price decreases when selling to market
    } else {
      priceChange = 1.05; // Price increases when buying from market
    }

    final newPrice = (item.currentPrice * priceChange).round();
    return newPrice.clamp((item.basePrice * 0.5).round(), (item.basePrice * 2).round());
  }

  void simulateMarketChanges() {
    // Simulate random market fluctuations
    final updatedMarkets = <String, List<MarketItem>>{};

    for (final entry in state.entries) {
      final locationId = entry.key;
      final items = entry.value;

      final updatedItems = items.map((item) {
        // Random small price fluctuations
        final randomFactor = 0.95 + (0.1 * (DateTime.now().millisecondsSinceEpoch % 100) / 100);
        final newPrice = (item.currentPrice * randomFactor).round();

        return item.copyWith(
          currentPrice: newPrice.clamp(
            (item.basePrice * 0.7).round(),
            (item.basePrice * 1.5).round(),
          ),
        );
      }).toList();

      updatedMarkets[locationId] = updatedItems;
    }

    state = updatedMarkets;
  }
}

final marketProvider = StateNotifierProvider<MarketNotifier, Map<String, List<MarketItem>>>((ref) {
  return MarketNotifier();
});