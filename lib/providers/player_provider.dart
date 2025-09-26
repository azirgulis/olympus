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

  void addExperience(int amount) {
    // For now, just track experience - could add leveling system later
    // This is called from quest rewards but doesn't need to do anything yet
  }

  void addReputation(int amount) {
    // Add to overall reputation - for now, add to Athens
    updateReputation('athens', amount);
  }

  int _getStartingDrachmae(CharacterClass characterClass) {
    switch (characterClass) {
      case CharacterClass.merchant:
        return 150; // Merchants start with more money
      case CharacterClass.scholar:
        return 100; // Balanced starting amount
      case CharacterClass.warrior:
        return 75; // Warriors start with less money but better survival
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