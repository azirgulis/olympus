import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/npc.dart';
import '../data/npcs/athens_npcs.dart';
import 'player_provider.dart';
import 'inventory_provider.dart';

part 'npc_provider.freezed.dart';
part 'npc_provider.g.dart';

class NPCNotifier extends StateNotifier<NPCState> {
  NPCNotifier() : super(const NPCState()) {
    _initializeNPCs();
  }

  void _initializeNPCs() {
    final npcs = AthensNPCsData.getAthensNPCs();
    final dialogues = AthensNPCsData.getAthensDialogues();

    state = state.copyWith(
      npcs: npcs,
      availableDialogues: dialogues,
    );
  }

  NPC? getNPCById(String npcId) {
    try {
      return state.npcs.firstWhere((npc) => npc.id == npcId);
    } catch (e) {
      return null;
    }
  }

  List<NPCDialogue> getAvailableDialoguesForNPC(String npcId) {
    final npc = getNPCById(npcId);
    if (npc == null) return [];

    return state.availableDialogues
        .where((dialogue) =>
            dialogue.npcId == npcId &&
            npc.availableDialogues.contains(dialogue.id) &&
            !dialogue.isCompleted)
        .toList();
  }

  NPCDialogue? getDialogueById(String dialogueId) {
    try {
      return state.availableDialogues.firstWhere((dialogue) => dialogue.id == dialogueId);
    } catch (e) {
      return null;
    }
  }

  void startDialogue(String dialogueId) {
    final dialogue = getDialogueById(dialogueId);
    if (dialogue == null || dialogue.nodes.isEmpty) return;

    state = state.copyWith(
      currentDialogue: dialogue,
      currentNodeId: dialogue.nodes.first.id,
      isInDialogue: true,
    );
  }

  void selectChoice(String choiceId, WidgetRef ref) {
    if (state.currentDialogue == null) return;

    final currentNode = _getCurrentNode();
    if (currentNode == null) return;

    final choice = currentNode.choices.firstWhere(
      (choice) => choice.id == choiceId,
      orElse: () => throw Exception('Choice not found'),
    );

    // Apply choice effects
    _applyChoiceEffects(choice.effects, ref);

    // Move to next node
    state = state.copyWith(currentNodeId: choice.nextNodeId);

    // Check if we've reached the end
    final nextNode = _getCurrentNode();
    if (nextNode == null || nextNode.isEndNode) {
      _completeDialogue(ref);
    }
  }

  DialogueNode? _getCurrentNode() {
    if (state.currentDialogue == null || state.currentNodeId == null) return null;

    try {
      return state.currentDialogue!.nodes.firstWhere(
        (node) => node.id == state.currentNodeId,
      );
    } catch (e) {
      return null;
    }
  }

  void _applyChoiceEffects(List<DialogueEffect> effects, WidgetRef ref) {
    for (final effect in effects) {
      switch (effect.type) {
        case EffectType.gainDrachmae:
          ref.read(playerProvider.notifier).addDrachmae(effect.value);
          break;
        case EffectType.loseDrachmae:
          ref.read(playerProvider.notifier).spendDrachmae(effect.value);
          break;
        case EffectType.gainExperience:
          ref.read(playerProvider.notifier).addExperience(effect.value);
          break;
        case EffectType.gainItem:
          if (effect.itemId != null) {
            // Add item to inventory - would need to create the item
            // ref.read(inventoryProvider.notifier).addItem(...);
          }
          break;
        case EffectType.changeReputation:
          if (effect.targetId != null) {
            ref.read(playerProvider.notifier).updateReputation(effect.targetId!, effect.value);
          }
          break;
        case EffectType.unlockDialogue:
          if (effect.targetId != null) {
            _unlockDialogue(effect.targetId!);
          }
          break;
        case EffectType.unlockQuest:
          // Would integrate with quest system
          break;
        default:
          break;
      }
    }
  }

  void _completeDialogue(WidgetRef ref) {
    if (state.currentDialogue == null) return;

    // Apply dialogue rewards
    _applyDialogueRewards(state.currentDialogue!.rewards, ref);

    // Mark dialogue as completed
    final updatedDialogues = state.availableDialogues.map((dialogue) {
      if (dialogue.id == state.currentDialogue!.id) {
        return dialogue.copyWith(isCompleted: true);
      }
      return dialogue;
    }).toList();

    // Update NPC to mark dialogue as completed
    final updatedNPCs = state.npcs.map((npc) {
      if (npc.id == state.currentDialogue!.npcId) {
        return npc.copyWith(
          completedDialogues: [...npc.completedDialogues, state.currentDialogue!.id],
          relationshipLevel: npc.relationshipLevel + 1,
        );
      }
      return npc;
    }).toList();

    state = state.copyWith(
      availableDialogues: updatedDialogues,
      npcs: updatedNPCs,
      currentDialogue: null,
      currentNodeId: null,
      isInDialogue: false,
    );
  }

  void _applyDialogueRewards(List<DialogueReward> rewards, WidgetRef ref) {
    for (final reward in rewards) {
      switch (reward.type) {
        case RewardType.drachmae:
          ref.read(playerProvider.notifier).addDrachmae(reward.value);
          break;
        case RewardType.experience:
          ref.read(playerProvider.notifier).addExperience(reward.value);
          break;
        case RewardType.item:
          if (reward.itemId != null) {
            // Add item to inventory
            // ref.read(inventoryProvider.notifier).addItem(...);
          }
          break;
        case RewardType.reputation:
          // Handle reputation rewards
          break;
        default:
          break;
      }
    }
  }

  void _unlockDialogue(String dialogueId) {
    final dialogue = getDialogueById(dialogueId);
    if (dialogue == null) return;

    final updatedNPCs = state.npcs.map((npc) {
      if (npc.id == dialogue.npcId && !npc.availableDialogues.contains(dialogueId)) {
        return npc.copyWith(
          availableDialogues: [...npc.availableDialogues, dialogueId],
        );
      }
      return npc;
    }).toList();

    state = state.copyWith(npcs: updatedNPCs);
  }

  void endDialogue() {
    state = state.copyWith(
      currentDialogue: null,
      currentNodeId: null,
      isInDialogue: false,
    );
  }
}

@freezed
class NPCState with _$NPCState {
  const factory NPCState({
    @Default([]) List<NPC> npcs,
    @Default([]) List<NPCDialogue> availableDialogues,
    NPCDialogue? currentDialogue,
    String? currentNodeId,
    @Default(false) bool isInDialogue,
  }) = _NPCState;

  factory NPCState.fromJson(Map<String, dynamic> json) => _$NPCStateFromJson(json);
}

final npcProvider = StateNotifierProvider<NPCNotifier, NPCState>((ref) {
  return NPCNotifier();
});

// Convenience providers
final npcsInLocationProvider = Provider.family<List<NPC>, String>((ref, locationId) {
  final npcState = ref.watch(npcProvider);
  return npcState.npcs.where((npc) => npc.locationId == locationId).toList();
});

final currentDialogueProvider = Provider<NPCDialogue?>((ref) {
  return ref.watch(npcProvider).currentDialogue;
});

final currentDialogueNodeProvider = Provider<DialogueNode?>((ref) {
  final npcState = ref.watch(npcProvider);
  if (npcState.currentDialogue == null || npcState.currentNodeId == null) return null;

  try {
    return npcState.currentDialogue!.nodes.firstWhere(
      (node) => node.id == npcState.currentNodeId,
    );
  } catch (e) {
    return null;
  }
});

final isInDialogueProvider = Provider<bool>((ref) {
  return ref.watch(npcProvider).isInDialogue;
});