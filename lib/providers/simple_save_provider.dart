import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/storage_service.dart';
import '../models/player.dart';
import '../models/inventory.dart';
import '../providers/game_state_provider.dart';
import 'player_provider.dart';
import 'inventory_provider.dart';
import 'market_provider.dart';

// Simple save game functions without complex state management
class SaveGameService {
  static Future<bool> saveCurrentGame(WidgetRef ref, {String? saveSlot}) async {
    try {
      final player = ref.read(playerProvider);
      final gameState = ref.read(gameStateProvider);
      final inventory = ref.read(inventoryProvider);
      final market = ref.read(marketProvider);

      final slot = saveSlot ?? 'save_${DateTime.now().millisecondsSinceEpoch}';

      // Convert market data to serializable format
      final marketData = <String, dynamic>{};
      for (final entry in market.entries) {
        marketData[entry.key] = entry.value.map((item) => item.toJson()).toList();
      }

      await StorageService.saveGame(
        player: player,
        gameState: gameState,
        inventory: inventory.items,
        marketData: marketData,
        saveSlot: slot,
      );

      return true;
    } catch (e) {
      print('Error saving game: $e');
      return false;
    }
  }

  static Future<bool> loadGame(WidgetRef ref, {String saveSlot = 'current'}) async {
    try {
      final saveData = await StorageService.loadGame(saveSlot: saveSlot);

      if (saveData == null) {
        return false;
      }

      // Update all providers with loaded data
      loadPlayerData(ref, saveData.player);
      loadGameStateData(ref, saveData.gameState);
      loadInventoryData(ref, saveData.inventory);

      if (saveData.marketData != null) {
        loadMarketData(ref, saveData.marketData!);
      }

      return true;
    } catch (e) {
      print('Error loading game: $e');
      return false;
    }
  }

  static Future<void> autoSave(WidgetRef ref) async {
    try {
      final player = ref.read(playerProvider);
      final gameState = ref.read(gameStateProvider);
      final inventory = ref.read(inventoryProvider);
      final market = ref.read(marketProvider);

      // Convert market data to serializable format
      final marketData = <String, dynamic>{};
      for (final entry in market.entries) {
        marketData[entry.key] = entry.value.map((item) => item.toJson()).toList();
      }

      await StorageService.autoSave(
        player: player,
        gameState: gameState,
        inventory: inventory.items,
        marketData: marketData,
      );
    } catch (e) {
      // Auto-save failures shouldn't interrupt gameplay
      print('Auto-save failed: $e');
    }
  }
}

// Helper methods to load data without accessing protected state
void loadPlayerData(WidgetRef ref, Player player) {
  ref.read(playerProvider.notifier).createNewPlayer(
    name: player.name,
    characterClass: player.characterClass,
  );
  // Manually update other fields
  final notifier = ref.read(playerProvider.notifier);
  notifier.updateHealth(player.health);
  notifier.updateEnergy(player.energy);
  notifier.addDrachmae(player.drachmae - ref.read(playerProvider).drachmae);
}

void loadGameStateData(WidgetRef ref, GameState gameState) {
  final notifier = ref.read(gameStateProvider.notifier);
  notifier.initializeGame();
  notifier.changeLocation(gameState.currentLocationId);

  // Load tutorials and flags
  for (final entry in gameState.completedTutorials.entries) {
    if (entry.value) {
      notifier.completeTutorial(entry.key);
    }
  }

  for (final entry in gameState.storyFlags.entries) {
    notifier.setStoryFlag(entry.key, entry.value);
  }
}

void loadInventoryData(WidgetRef ref, List<InventoryItem> items) {
  final notifier = ref.read(inventoryProvider.notifier);
  notifier.clearInventory();
  for (final item in items) {
    notifier.addItem(item);
  }
}

void loadMarketData(WidgetRef ref, Map<String, dynamic> marketData) {
  final notifier = ref.read(marketProvider.notifier);
  notifier.initializeMarkets();

  // For now, just reinitialize markets - we can add more complex loading later
}

// Provider for checking if save exists
final saveExistsProvider = Provider.family<bool, String>((ref, saveSlot) {
  return StorageService.hasSave(saveSlot: saveSlot);
});

// Provider for available save slots
final availableSaveSlotsProvider = Provider<List<String>>((ref) {
  return StorageService.getAvailableSaveSlots();
});

// Provider for getting save metadata
final saveMetadataProvider = Provider.family<SaveMetadata?, String>((ref, saveSlot) {
  return StorageService.getSaveMetadata(saveSlot: saveSlot);
});