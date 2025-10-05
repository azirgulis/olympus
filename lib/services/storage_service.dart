import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/player.dart';
import '../models/inventory.dart';
import '../providers/game_state_provider.dart';

class StorageService {
  static const String _playerBoxName = 'player_box';
  static const String _gameStateBoxName = 'game_state_box';
  static const String _inventoryBoxName = 'inventory_box';
  static const String _marketBoxName = 'market_box';

  static bool _isInitialized = false;

  static late Box<Map> _playerBox;
  static late Box<Map> _gameStateBox;
  static late Box<Map> _inventoryBox;
  static late Box<Map> _marketBox;

  static Future<void> initialize() async {
    if (_isInitialized) {
      return;
    }

    try {
      await Hive.initFlutter();

      // Register adapters for complex types only once
      final characterAdapter = CharacterClassAdapter();
      if (!Hive.isAdapterRegistered(characterAdapter.typeId)) {
        Hive.registerAdapter(characterAdapter);
      }

      final itemTypeAdapter = ItemTypeAdapter();
      if (!Hive.isAdapterRegistered(itemTypeAdapter.typeId)) {
        Hive.registerAdapter(itemTypeAdapter);
      }

      final itemRarityAdapter = ItemRarityAdapter();
      if (!Hive.isAdapterRegistered(itemRarityAdapter.typeId)) {
        Hive.registerAdapter(itemRarityAdapter);
      }

      _playerBox = Hive.isBoxOpen(_playerBoxName)
          ? Hive.box<Map>(_playerBoxName)
          : await Hive.openBox<Map>(_playerBoxName);
      _gameStateBox = Hive.isBoxOpen(_gameStateBoxName)
          ? Hive.box<Map>(_gameStateBoxName)
          : await Hive.openBox<Map>(_gameStateBoxName);
      _inventoryBox = Hive.isBoxOpen(_inventoryBoxName)
          ? Hive.box<Map>(_inventoryBoxName)
          : await Hive.openBox<Map>(_inventoryBoxName);
      _marketBox = Hive.isBoxOpen(_marketBoxName)
          ? Hive.box<Map>(_marketBoxName)
          : await Hive.openBox<Map>(_marketBoxName);

      _isInitialized = true;
    } catch (e, stackTrace) {
      throw StorageException(
        'Failed to initialize local storage',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  // Save current game state
  static Future<void> saveGame({
    required Player player,
    required GameState gameState,
    required List<InventoryItem> inventory,
    Map<String, dynamic>? marketData,
    String saveSlot = 'current',
  }) async {
    try {
      // Save player data
      await _playerBox.put(saveSlot, player.toJson());

      // Save game state
      await _gameStateBox.put(saveSlot, {
        'currentLocationId': gameState.currentLocationId,
        'unlockedLocations': gameState.unlockedLocations.toList(),
        'storyFlags': gameState.storyFlags,
        'completedTutorials': gameState.completedTutorials,
        'gameStarted': gameState.gameStarted,
        'lastSaved': DateTime.now().toIso8601String(),
      });

      // Save inventory
      await _inventoryBox.put(saveSlot, {
        'items': inventory.map((item) => item.toJson()).toList(),
      });

      // Save market data if provided
      if (marketData != null) {
        await _marketBox.put(saveSlot, marketData);
      }
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('StorageService: failed saving "$saveSlot" -> $e');
      }
      throw StorageException(
        'Unable to save game to slot "$saveSlot".',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  // Load game from save slot
  static Future<SaveData?> loadGame({String saveSlot = 'current'}) async {
    try {
      final playerData = _playerBox.get(saveSlot);
      final gameStateData = _gameStateBox.get(saveSlot);
      final inventoryData = _inventoryBox.get(saveSlot);
      final marketData = _marketBox.get(saveSlot);

      if (playerData == null || gameStateData == null) {
        return null; // No save data found
      }

      // Reconstruct player
      final player = Player.fromJson(Map<String, dynamic>.from(playerData));

      // Reconstruct game state
      final gameState = GameState(
        currentLocationId: gameStateData['currentLocationId'] ?? '',
        unlockedLocations:
            Set<String>.from(gameStateData['unlockedLocations'] ?? []),
        storyFlags: Map<String, bool>.from(gameStateData['storyFlags'] ?? {}),
        completedTutorials:
            Map<String, bool>.from(gameStateData['completedTutorials'] ?? {}),
        gameStarted: gameStateData['gameStarted'] ?? false,
      );

      // Reconstruct inventory
      List<InventoryItem> inventory = [];
      if (inventoryData != null && inventoryData['items'] != null) {
        inventory = (inventoryData['items'] as List)
            .map((item) =>
                InventoryItem.fromJson(Map<String, dynamic>.from(item)))
            .toList();
      }

      return SaveData(
        player: player,
        gameState: gameState,
        inventory: inventory,
        marketData:
            marketData != null ? Map<String, dynamic>.from(marketData) : null,
        lastSaved: DateTime.tryParse(gameStateData['lastSaved'] ?? '') ??
            DateTime.now(),
      );
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('StorageService: failed loading "$saveSlot" -> $e');
      }
      throw StorageException(
        'Unable to load game from slot "$saveSlot".',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  // Get all available save slots
  static List<String> getAvailableSaveSlots() {
    final slots = <String>{};
    slots.addAll(_playerBox.keys.cast<String>());
    slots.addAll(_gameStateBox.keys.cast<String>());
    return slots.toList()..sort();
  }

  // Delete save slot
  static Future<void> deleteSave({String saveSlot = 'current'}) async {
    try {
      await _playerBox.delete(saveSlot);
      await _gameStateBox.delete(saveSlot);
      await _inventoryBox.delete(saveSlot);
      await _marketBox.delete(saveSlot);
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('StorageService: failed deleting "$saveSlot" -> $e');
      }
      throw StorageException(
        'Unable to delete save slot "$saveSlot".',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  // Check if save exists
  static bool hasSave({String saveSlot = 'current'}) {
    return _playerBox.containsKey(saveSlot) &&
        _gameStateBox.containsKey(saveSlot);
  }

  // Get save metadata (for displaying in UI)
  static SaveMetadata? getSaveMetadata({String saveSlot = 'current'}) {
    final playerData = _playerBox.get(saveSlot);
    final gameStateData = _gameStateBox.get(saveSlot);

    if (playerData == null || gameStateData == null) {
      return null;
    }

    return SaveMetadata(
      slotName: saveSlot,
      playerName: playerData['name'] ?? 'Unknown Hero',
      characterClass: _parseCharacterClass(playerData['characterClass']),
      currentLocation: gameStateData['currentLocationId'] ?? 'Unknown',
      lastSaved:
          DateTime.tryParse(gameStateData['lastSaved'] ?? '') ?? DateTime.now(),
      playerLevel: _calculatePlayerLevel(playerData),
    );
  }

  static CharacterClass _parseCharacterClass(dynamic classData) {
    if (classData == null) return CharacterClass.merchant;

    if (classData is String) {
      switch (classData) {
        case 'merchant':
          return CharacterClass.merchant;
        case 'scholar':
          return CharacterClass.scholar;
        case 'warrior':
          return CharacterClass.warrior;
        default:
          return CharacterClass.merchant;
      }
    }

    return CharacterClass.merchant;
  }

  static int _calculatePlayerLevel(Map playerData) {
    // Simple level calculation based on skills
    final skills = Map<String, dynamic>.from(playerData['skills'] ?? {});
    final totalSkillPoints =
        skills.values.fold<int>(0, (sum, value) => sum + (value as int? ?? 0));
    return (totalSkillPoints / 10).floor() + 1;
  }

  // Auto-save functionality
  static Future<void> autoSave({
    required Player player,
    required GameState gameState,
    required List<InventoryItem> inventory,
    Map<String, dynamic>? marketData,
  }) async {
    try {
      await saveGame(
        player: player,
        gameState: gameState,
        inventory: inventory,
        marketData: marketData,
        saveSlot: 'autosave',
      );
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('StorageService: auto-save failed -> $e');
      }
      throw StorageException(
        'Auto-save failed to persist data.',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  // Close all boxes (call on app termination)
  static Future<void> close() async {
    await _playerBox.close();
    await _gameStateBox.close();
    await _inventoryBox.close();
    await _marketBox.close();
  }
}

// Data classes for save/load operations
class SaveData {
  final Player player;
  final GameState gameState;
  final List<InventoryItem> inventory;
  final Map<String, dynamic>? marketData;
  final DateTime lastSaved;

  SaveData({
    required this.player,
    required this.gameState,
    required this.inventory,
    this.marketData,
    required this.lastSaved,
  });
}

class SaveMetadata {
  final String slotName;
  final String playerName;
  final CharacterClass characterClass;
  final String currentLocation;
  final DateTime lastSaved;
  final int playerLevel;

  SaveMetadata({
    required this.slotName,
    required this.playerName,
    required this.characterClass,
    required this.currentLocation,
    required this.lastSaved,
    required this.playerLevel,
  });
}

class StorageException implements Exception {
  StorageException(this.message, {this.cause, this.stackTrace});

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() {
    if (cause == null) {
      return 'StorageException: $message';
    }
    return 'StorageException: $message (cause: $cause)';
  }
}

// Hive type adapters
class CharacterClassAdapter extends TypeAdapter<CharacterClass> {
  @override
  final int typeId = 0;

  @override
  CharacterClass read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CharacterClass.merchant;
      case 1:
        return CharacterClass.scholar;
      case 2:
        return CharacterClass.warrior;
      default:
        return CharacterClass.merchant;
    }
  }

  @override
  void write(BinaryWriter writer, CharacterClass obj) {
    switch (obj) {
      case CharacterClass.merchant:
        writer.writeByte(0);
        break;
      case CharacterClass.scholar:
        writer.writeByte(1);
        break;
      case CharacterClass.warrior:
        writer.writeByte(2);
        break;
    }
  }
}

class ItemTypeAdapter extends TypeAdapter<ItemType> {
  @override
  final int typeId = 1;

  @override
  ItemType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemType.food;
      case 1:
        return ItemType.tool;
      case 2:
        return ItemType.tradeGood;
      case 3:
        return ItemType.questItem;
      case 4:
        return ItemType.resource;
      case 5:
        return ItemType.treasure;
      case 6:
        return ItemType.consumable;
      case 7:
        return ItemType.trade;
      case 8:
        return ItemType.knowledge;
      default:
        return ItemType.resource;
    }
  }

  @override
  void write(BinaryWriter writer, ItemType obj) {
    switch (obj) {
      case ItemType.food:
        writer.writeByte(0);
        break;
      case ItemType.tool:
        writer.writeByte(1);
        break;
      case ItemType.tradeGood:
        writer.writeByte(2);
        break;
      case ItemType.questItem:
        writer.writeByte(3);
        break;
      case ItemType.resource:
        writer.writeByte(4);
        break;
      case ItemType.treasure:
        writer.writeByte(5);
        break;
      case ItemType.consumable:
        writer.writeByte(6);
        break;
      case ItemType.trade:
        writer.writeByte(7);
        break;
      case ItemType.knowledge:
        writer.writeByte(8);
        break;
    }
  }
}

class ItemRarityAdapter extends TypeAdapter<ItemRarity> {
  @override
  final int typeId = 2;

  @override
  ItemRarity read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemRarity.common;
      case 1:
        return ItemRarity.uncommon;
      case 2:
        return ItemRarity.rare;
      case 3:
        return ItemRarity.legendary;
      default:
        return ItemRarity.common;
    }
  }

  @override
  void write(BinaryWriter writer, ItemRarity obj) {
    switch (obj) {
      case ItemRarity.common:
        writer.writeByte(0);
        break;
      case ItemRarity.uncommon:
        writer.writeByte(1);
        break;
      case ItemRarity.rare:
        writer.writeByte(2);
        break;
      case ItemRarity.legendary:
        writer.writeByte(3);
        break;
    }
  }
}
