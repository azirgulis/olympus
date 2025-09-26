import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/harbor.dart';
import '../models/inventory.dart';
import '../data/harbor/trade_routes.dart';
import '../data/harbor/ships.dart';
import 'player_provider.dart';
import 'inventory_provider.dart';

part 'harbor_provider.freezed.dart';
part 'harbor_provider.g.dart';

class HarborNotifier extends StateNotifier<HarborState> {
  HarborNotifier() : super(const HarborState()) {
    _initializeHarbor();
  }

  void _initializeHarbor() {
    final routes = TradeRoutesData.getAllRoutes();
    final ships = ShipsData.getPlayerShips();

    state = state.copyWith(
      availableRoutes: routes,
      playerShips: ships,
      activeExpeditions: [],
      availableContracts: [],
    );
  }

  // Start a trading expedition
  void startExpedition(String routeId, String shipId, List<CargoItem> cargo, WidgetRef ref) {
    final route = state.availableRoutes.firstWhere((r) => r.id == routeId);
    final ship = state.playerShips.firstWhere((s) => s.id == shipId);

    if (!ship.isAvailable) {
      return; // Ship not available
    }

    // Calculate travel time based on ship speed and route distance
    final travelTime = (route.baseTravelTime * (100 / ship.speed)).round();

    final expedition = TradingExpedition(
      id: 'exp_${DateTime.now().millisecondsSinceEpoch}',
      routeId: routeId,
      ship: ship.copyWith(isAvailable: false),
      cargo: cargo,
      departureTime: DateTime.now(),
      estimatedReturnTime: travelTime,
      status: ExpeditionStatus.traveling,
    );

    // Deduct cargo costs from player
    int totalCost = 0;
    for (final item in cargo) {
      totalCost += item.purchasePrice * item.quantity;
      ref.read(inventoryProvider.notifier).removeItem(item.goodId, item.quantity);
    }
    ref.read(playerProvider.notifier).spendDrachmae(totalCost);

    // Update ship availability and add expedition
    final updatedShips = state.playerShips.map((s) {
      if (s.id == shipId) {
        return s.copyWith(isAvailable: false);
      }
      return s;
    }).toList();

    state = state.copyWith(
      playerShips: updatedShips,
      activeExpeditions: [...state.activeExpeditions, expedition],
    );
  }

  // Update expedition progress
  void updateExpeditionProgress() {
    final now = DateTime.now();
    final updatedExpeditions = state.activeExpeditions.map((expedition) {
      final elapsedHours = now.difference(expedition.departureTime).inHours;
      final progress = (elapsedHours / expedition.estimatedReturnTime * 100).clamp(0, 100);

      ExpeditionStatus status = expedition.status;
      if (progress >= 100) {
        status = ExpeditionStatus.completed;
      } else if (progress >= 75) {
        status = ExpeditionStatus.returning;
      } else if (progress >= 25) {
        status = ExpeditionStatus.trading;
      }

      return expedition.copyWith(
        progressPercent: progress.round(),
        status: status,
      );
    }).toList();

    state = state.copyWith(activeExpeditions: updatedExpeditions);
  }

  // Complete an expedition and return results
  void completeExpedition(String expeditionId, WidgetRef ref) {
    final expedition = state.activeExpeditions.firstWhere((e) => e.id == expeditionId);
    final route = state.availableRoutes.firstWhere((r) => r.id == expedition.routeId);

    // Calculate trade results
    int totalProfit = 0;
    final returnedGoods = <InventoryItem>[];

    for (final cargoItem in expedition.cargo) {
      final exportGood = route.exports.firstWhere((g) => g.id == cargoItem.goodId);
      final salePrice = (exportGood.baseValue * exportGood.demandMultiplier).round();
      final profit = (salePrice - cargoItem.purchasePrice) * cargoItem.quantity;
      totalProfit += profit;
    }

    // Add imported goods to inventory
    for (final importGood in route.imports) {
      final quantity = (importGood.minQuantity +
        (importGood.maxQuantity - importGood.minQuantity) * 0.7).round();
      final item = InventoryItem(
        id: importGood.id,
        name: importGood.name,
        description: importGood.description,
        type: _mapCategoryToItemType(importGood.category),
        value: importGood.baseValue,
        quantity: quantity,
        rarity: ItemRarity.uncommon,
      );
      returnedGoods.add(item);
      ref.read(inventoryProvider.notifier).addItem(item);
    }

    // Add profit to player
    ref.read(playerProvider.notifier).addDrachmae(totalProfit);

    // Add experience
    ref.read(playerProvider.notifier).addExperience(50);

    // Make ship available again
    final updatedShips = state.playerShips.map((s) {
      if (s.id == expedition.ship.id) {
        return s.copyWith(isAvailable: true);
      }
      return s;
    }).toList();

    // Remove completed expedition
    final updatedExpeditions = state.activeExpeditions
        .where((e) => e.id != expeditionId)
        .toList();

    state = state.copyWith(
      playerShips: updatedShips,
      activeExpeditions: updatedExpeditions,
    );
  }

  ItemType _mapCategoryToItemType(TradeGoodCategory category) {
    switch (category) {
      case TradeGoodCategory.food:
        return ItemType.food;
      case TradeGoodCategory.raw_materials:
      case TradeGoodCategory.precious_metals:
        return ItemType.resource;
      case TradeGoodCategory.crafted_goods:
      case TradeGoodCategory.textiles:
      case TradeGoodCategory.art:
        return ItemType.tradeGood;
      case TradeGoodCategory.weapons:
        return ItemType.tool;
      default:
        return ItemType.tradeGood;
    }
  }

  // Purchase a new ship
  void purchaseShip(Ship ship, WidgetRef ref) {
    final cost = _getShipCost(ship.type);
    final player = ref.read(playerProvider);

    if (player.drachmae >= cost) {
      ref.read(playerProvider.notifier).spendDrachmae(cost);

      final newShip = ship.copyWith(
        id: 'ship_${DateTime.now().millisecondsSinceEpoch}',
        isAvailable: true,
      );

      state = state.copyWith(
        playerShips: [...state.playerShips, newShip],
      );
    }
  }

  int _getShipCost(ShipType type) {
    switch (type) {
      case ShipType.fishing_boat:
        return 500;
      case ShipType.merchant_vessel:
        return 2000;
      case ShipType.war_galley:
        return 5000;
      case ShipType.luxury_yacht:
        return 10000;
    }
  }

  // Unlock new trade routes based on reputation
  void checkUnlockedRoutes() {
    // Implementation for unlocking routes based on player progress
    final updatedRoutes = state.availableRoutes.map((route) {
      if (!route.isUnlocked && route.reputation <= 0) {
        return route.copyWith(isUnlocked: true);
      }
      return route;
    }).toList();

    state = state.copyWith(availableRoutes: updatedRoutes);
  }

  // Get expeditions by status
  List<TradingExpedition> getExpeditionsByStatus(ExpeditionStatus status) {
    return state.activeExpeditions.where((e) => e.status == status).toList();
  }

  // Get available ships
  List<Ship> getAvailableShips() {
    return state.playerShips.where((s) => s.isAvailable).toList();
  }

  // Get unlocked routes
  List<TradeRoute> getUnlockedRoutes() {
    return state.availableRoutes.where((r) => r.isUnlocked).toList();
  }
}

@freezed
class HarborState with _$HarborState {
  const factory HarborState({
    @Default([]) List<TradeRoute> availableRoutes,
    @Default([]) List<Ship> playerShips,
    @Default([]) List<TradingExpedition> activeExpeditions,
    @Default([]) List<TradeContract> availableContracts,
  }) = _HarborState;

  factory HarborState.fromJson(Map<String, dynamic> json) => _$HarborStateFromJson(json);
}

final harborProvider = StateNotifierProvider<HarborNotifier, HarborState>((ref) {
  return HarborNotifier();
});

// Convenience providers
final unlockedRoutesProvider = Provider<List<TradeRoute>>((ref) {
  final harborNotifier = ref.watch(harborProvider.notifier);
  return harborNotifier.getUnlockedRoutes();
});

final availableShipsProvider = Provider<List<Ship>>((ref) {
  final harborNotifier = ref.watch(harborProvider.notifier);
  return harborNotifier.getAvailableShips();
});

final activeExpeditionsProvider = Provider<List<TradingExpedition>>((ref) {
  return ref.watch(harborProvider).activeExpeditions;
});

final completedExpeditionsProvider = Provider<List<TradingExpedition>>((ref) {
  final harborNotifier = ref.watch(harborProvider.notifier);
  return harborNotifier.getExpeditionsByStatus(ExpeditionStatus.completed);
});