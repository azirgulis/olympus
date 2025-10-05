import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/quest.dart';
import '../models/inventory.dart';
import '../data/quests/main_quests.dart';
import '../data/quests/side_quests.dart';
import 'player_provider.dart';
import 'inventory_provider.dart';

class QuestNotifier extends StateNotifier<List<Quest>> {
  QuestNotifier() : super([]) {
    _initializeQuests();
  }

  void _initializeQuests() {
    final allQuests = [
      ...MainQuests.getAllMainQuests(),
      ...SideQuests.getAllQuests(),
    ];
    state = allQuests;
  }

  // Start a quest
  void startQuest(String questId) {
    state = state.map((quest) {
      if (quest.id == questId && quest.status == QuestStatus.available) {
        return quest.copyWith(
          status: QuestStatus.started,
          isStarted: true,
        );
      }
      return quest;
    }).toList();
  }

  // Complete an objective
  void completeObjective(String questId, String objectiveId) {
    state = state.map((quest) {
      if (quest.id == questId) {
        final updatedObjectives = quest.objectives.map((objective) {
          if (objective.id == objectiveId) {
            return objective.copyWith(isCompleted: true);
          }
          return objective;
        }).toList();

        final completedObjectiveIds = [...quest.completedObjectives, objectiveId];
        final allObjectivesComplete = updatedObjectives.every((obj) => obj.isCompleted);

        return quest.copyWith(
          objectives: updatedObjectives,
          completedObjectives: completedObjectiveIds,
          isCompleted: allObjectivesComplete,
          status: allObjectivesComplete ? QuestStatus.completed : quest.status,
        );
      }
      return quest;
    }).toList();
  }

  // Update objective progress
  void updateObjectiveProgress(String questId, String objectiveId, int progress) {
    state = state.map((quest) {
      if (quest.id == questId) {
        final updatedObjectives = quest.objectives.map((objective) {
          if (objective.id == objectiveId) {
            final newProgress = progress;
            final isCompleted = objective.targetProgress != null
                ? newProgress >= objective.targetProgress!
                : false;

            return objective.copyWith(
              currentProgress: newProgress,
              isCompleted: isCompleted,
            );
          }
          return objective;
        }).toList();

        final allObjectivesComplete = updatedObjectives.every((obj) => obj.isCompleted);

        return quest.copyWith(
          objectives: updatedObjectives,
          isCompleted: allObjectivesComplete,
          status: allObjectivesComplete ? QuestStatus.completed : quest.status,
        );
      }
      return quest;
    }).toList();
  }

  // Complete a quest and award rewards
  void completeQuest(String questId, WidgetRef ref) {
    final quest = state.firstWhere((q) => q.id == questId);

    if (quest.isCompleted) {
      // Award rewards
      for (final reward in quest.rewards) {
        _awardReward(reward, ref);
      }

      // Mark quest as completed
      state = state.map((q) {
        if (q.id == questId) {
          return q.copyWith(status: QuestStatus.completed);
        }
        return q;
      }).toList();

      // Check if any new quests should be unlocked
      _checkUnlockedQuests();
    }
  }

  void _awardReward(QuestReward reward, WidgetRef ref) {
    switch (reward.type) {
      case RewardType.drachmae:
        ref.read(playerProvider.notifier).addDrachmae(reward.amount);
        break;
      case RewardType.experience:
        ref.read(playerProvider.notifier).addExperience(reward.amount);
        break;
      case RewardType.item:
        if (reward.itemId != null) {
          final item = InventoryItem(
            id: reward.itemId!,
            name: reward.itemId!,
            description: 'Quest reward item',
            type: ItemType.questItem,
            quantity: reward.amount,
            value: 0,
            rarity: ItemRarity.common,
          );
          ref.read(inventoryProvider.notifier).addItem(item);
        }
        break;
      case RewardType.health:
        ref.read(playerProvider.notifier).updateHealth(
          ref.read(playerProvider).health + reward.amount
        );
        break;
      case RewardType.energy:
        ref.read(playerProvider.notifier).updateEnergy(
          ref.read(playerProvider).energy + reward.amount
        );
        break;
      case RewardType.reputation:
        ref.read(playerProvider.notifier).addReputation(reward.amount);
        break;
      case RewardType.skill:
        // TODO: Implement skill system
        break;
    }
  }

  void _checkUnlockedQuests() {
    // Check if completed quests unlock new ones
    final completedQuestIds = state
        .where((q) => q.status == QuestStatus.completed)
        .map((q) => q.id)
        .toList();

    state = state.map((quest) {
      if (quest.status == QuestStatus.locked) {
        final prerequisitesMet = quest.prerequisites.every(
          (prereq) => completedQuestIds.contains(prereq)
        );

        if (prerequisitesMet) {
          return quest.copyWith(status: QuestStatus.available);
        }
      }
      return quest;
    }).toList();
  }

  // Get quests by status
  List<Quest> getQuestsByStatus(QuestStatus status) {
    return state.where((quest) => quest.status == status).toList();
  }

  // Get quests by type
  List<Quest> getQuestsByType(QuestType type) {
    return state.where((quest) => quest.type == type).toList();
  }

  // Get active quests
  List<Quest> getActiveQuests() {
    return state.where((quest) =>
      quest.status == QuestStatus.started && !quest.isCompleted
    ).toList();
  }

  // Get available quests
  List<Quest> getAvailableQuests() {
    return state.where((quest) => quest.status == QuestStatus.available).toList();
  }

  // Check if quest is available
  bool isQuestAvailable(String questId) {
    final quest = state.firstWhere(
      (q) => q.id == questId,
      orElse: () => const Quest(
        id: '',
        title: '',
        description: '',
        type: QuestType.main,
        difficulty: QuestDifficulty.easy,
        objectives: [],
        rewards: [],
        prerequisites: [],
        economicConcept: '',
        learningObjective: '',
      ),
    );
    return quest.id.isNotEmpty && quest.status == QuestStatus.available;
  }
}

final questProvider = StateNotifierProvider<QuestNotifier, List<Quest>>((ref) {
  return QuestNotifier();
});

// Convenience providers
final activeQuestsProvider = Provider<List<Quest>>((ref) {
  final questNotifier = ref.watch(questProvider.notifier);
  return questNotifier.getActiveQuests();
});

final availableQuestsProvider = Provider<List<Quest>>((ref) {
  final questNotifier = ref.watch(questProvider.notifier);
  return questNotifier.getAvailableQuests();
});

final completedQuestsProvider = Provider<List<Quest>>((ref) {
  final questNotifier = ref.watch(questProvider.notifier);
  return questNotifier.getQuestsByStatus(QuestStatus.completed);
});