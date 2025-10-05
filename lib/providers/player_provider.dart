import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/player.dart';

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(const Player());

  void createNewPlayer({
    required String name,
    required CharacterClass characterClass,
  }) {
    state = Player(
      name: name,
      characterClass: characterClass,
      health: 100,
      energy: 100,
      drachmae: _getStartingDrachmae(characterClass),
      reputation: _getStartingReputation(),
      skills: _getStartingSkills(characterClass),
      currentLocation: 'athens',
      completedQuests: [],
      activeQuests: [],
      storyFlags: {},
    );
  }

  void updateHealth(int newHealth) {
    state = state.copyWith(health: newHealth.clamp(0, 100));
  }

  void updateEnergy(int newEnergy) {
    state = state.copyWith(energy: newEnergy.clamp(0, 100));
  }

  void addDrachmae(int amount) {
    state = state.copyWith(drachmae: state.drachmae + amount);
  }

  void spendDrachmae(int amount) {
    if (state.drachmae >= amount) {
      state = state.copyWith(drachmae: state.drachmae - amount);
    }
  }

  void addExperience(int amount) {
    final newExperience = state.experience + amount;
    final experienceForNextLevel = _getExperienceForLevel(state.level + 1);

    if (newExperience >= experienceForNextLevel) {
      // Level up!
      final newLevel = state.level + 1;
      state = state.copyWith(
        experience: newExperience,
        level: newLevel,
      );
    } else {
      state = state.copyWith(experience: newExperience);
    }
  }

  int _getExperienceForLevel(int level) {
    // Experience formula: level^2 * 100
    return level * level * 100;
  }

  void updateLocation(String newLocation) {
    state = state.copyWith(currentLocation: newLocation);
  }

  void addCompletedQuest(String questId) {
    if (!state.completedQuests.contains(questId)) {
      state = state.copyWith(
        completedQuests: [...state.completedQuests, questId],
      );
    }
  }

  void addActiveQuest(String questId) {
    if (!state.activeQuests.contains(questId)) {
      state = state.copyWith(
        activeQuests: [...state.activeQuests, questId],
      );
    }
  }

  void completeQuest(String questId) {
    final updatedActiveQuests = state.activeQuests.where((id) => id != questId).toList();
    state = state.copyWith(
      activeQuests: updatedActiveQuests,
      completedQuests: [...state.completedQuests, questId],
    );
  }

  void updateReputation(String faction, int change) {
    final currentRep = state.reputation[faction] ?? 50;
    final newRep = (currentRep + change).clamp(0, 100);
    state = state.copyWith(
      reputation: {...state.reputation, faction: newRep},
    );
  }

  void setStoryFlag(String flag, bool value) {
    state = state.copyWith(
      storyFlags: {...state.storyFlags, flag: value},
    );
  }

  void addReputation(int amount) {
    // Add to overall reputation - for now, add to Athens
    updateReputation('athens', amount);
  }

  // Inventory management
  void addItem(String itemId, int quantity) {
    final currentQuantity = state.inventory[itemId] ?? 0;
    state = state.copyWith(
      inventory: {...state.inventory, itemId: currentQuantity + quantity},
    );
  }

  void removeItem(String itemId, int quantity) {
    final currentQuantity = state.inventory[itemId] ?? 0;
    if (currentQuantity >= quantity) {
      final newQuantity = currentQuantity - quantity;
      final newInventory = {...state.inventory};
      if (newQuantity <= 0) {
        newInventory.remove(itemId);
      } else {
        newInventory[itemId] = newQuantity;
      }
      state = state.copyWith(inventory: newInventory);
    }
  }

  int getItemQuantity(String itemId) {
    return state.inventory[itemId] ?? 0;
  }

  // Equipment management
  void equipItem(String slot, String itemId) {
    state = state.copyWith(
      equippedItems: {...state.equippedItems, slot: itemId},
    );
  }

  void unequipItem(String slot) {
    final newEquipped = {...state.equippedItems};
    newEquipped.remove(slot);
    state = state.copyWith(equippedItems: newEquipped);
  }

  String? getEquippedItem(String slot) {
    return state.equippedItems[slot];
  }

  // Consumable usage
  void consumeItem(String itemId, Map<String, dynamic>? effects) {
    if (getItemQuantity(itemId) > 0) {
      removeItem(itemId, 1);

      // Apply effects
      if (effects != null) {
        if (effects['health'] != null) {
          final newHealth = (state.health + (effects['health'] as int)).clamp(0, 100);
          state = state.copyWith(health: newHealth);
        }
        if (effects['energy'] != null) {
          final newEnergy = (state.energy + (effects['energy'] as int)).clamp(0, 100);
          state = state.copyWith(energy: newEnergy);
        }
        if (effects['reputation'] != null) {
          addReputation(effects['reputation'] as int);
        }
      }
    }
  }

  // Achievement management
  void unlockAchievement(String achievementId) {
    if (!state.unlockedAchievements.contains(achievementId)) {
      state = state.copyWith(
        unlockedAchievements: [...state.unlockedAchievements, achievementId],
      );
    }
  }

  bool hasAchievement(String achievementId) {
    return state.unlockedAchievements.contains(achievementId);
  }

  int _getStartingDrachmae(CharacterClass characterClass) {
    // Player starts poor to create motivation to engage with economy
    switch (characterClass) {
      case CharacterClass.merchant:
        return 20; // Merchants start with slightly more
      case CharacterClass.scholar:
        return 15; // Standard poor starting amount
      case CharacterClass.warrior:
        return 10; // Warriors start poorest
    }
  }

  Map<String, int> _getStartingReputation() {
    return {
      'athens': 50,
      'sparta': 50,
      'delphi': 50,
      'thebes': 50,
      'corinth': 50,
      'zeus': 50,
      'athena': 50,
      'hermes': 50,
      'poseidon': 50,
      'apollo': 50,
    };
  }

  Map<String, int> _getStartingSkills(CharacterClass characterClass) {
    final baseSkills = {
      'bargaining': 0,
      'forecasting': 0,
      'resource_management': 0,
      'trading': 0,
      'survival': 0,
    };

    switch (characterClass) {
      case CharacterClass.merchant:
        baseSkills['bargaining'] = 2;
        baseSkills['trading'] = 2;
        break;
      case CharacterClass.scholar:
        baseSkills['forecasting'] = 2;
        baseSkills['resource_management'] = 2;
        break;
      case CharacterClass.warrior:
        baseSkills['survival'] = 3;
        baseSkills['resource_management'] = 1;
        break;
    }

    return baseSkills;
  }
}

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});