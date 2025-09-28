import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/npc.dart';
import '../../providers/npc_provider.dart';

class NPCDialogueDialog extends ConsumerWidget {
  final NPC npc;

  const NPCDialogueDialog({
    super.key,
    required this.npc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInDialogue = ref.watch(isInDialogueProvider);
    final currentDialogue = ref.watch(currentDialogueProvider);
    final currentNode = ref.watch(currentDialogueNodeProvider);

    if (!isInDialogue || currentDialogue == null || currentNode == null) {
      // Show dialogue selection
      return _buildDialogueSelection(context, ref);
    } else {
      // Show active dialogue
      return _buildActiveDialogue(context, ref, currentDialogue, currentNode);
    }
  }

  Widget _buildDialogueSelection(BuildContext context, WidgetRef ref) {
    final availableDialogues = ref.read(npcProvider.notifier).getAvailableDialoguesForNPC(npc.id);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(24),
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 600),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // NPC Header
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: _getNPCTypeColor(npc.type),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    _getNPCTypeIcon(npc.type),
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        npc.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E86AB),
                        ),
                      ),
                      Text(
                        npc.title,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // NPC Description
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                npc.description,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Available Dialogues
            if (availableDialogues.isEmpty)
              Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 48,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No new conversations available',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Come back later for more discussions!',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: availableDialogues.length,
                  itemBuilder: (context, index) {
                    final dialogue = availableDialogues[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _getEconomicConceptColor(dialogue.educationalTopic),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            _getEconomicConceptIcon(dialogue.educationalTopic),
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          dialogue.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          dialogue.description,
                          style: const TextStyle(fontSize: 12),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          ref.read(npcProvider.notifier).startDialogue(dialogue.id);
                        },
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveDialogue(BuildContext context, WidgetRef ref, NPCDialogue dialogue, DialogueNode node) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(24),
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 700),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Dialogue Header
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _getNPCTypeColor(npc.type),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    _getNPCTypeIcon(npc.type),
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        node.speaker,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E86AB),
                        ),
                      ),
                      Text(
                        dialogue.title,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                // Educational Topic Badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getEconomicConceptColor(dialogue.educationalTopic),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _getEconomicConceptName(dialogue.educationalTopic),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Dialogue Text
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Text(
                node.text,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Choices
            if (node.choices.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: node.choices.length,
                  itemBuilder: (context, index) {
                    final choice = node.choices[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(npcProvider.notifier).selectChoice(choice.id, ref);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2E86AB),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        child: Text(
                          choice.text,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    );
                  },
                ),
              )
            else
              // End dialogue button
              ElevatedButton(
                onPressed: () {
                  ref.read(npcProvider.notifier).endDialogue();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E86AB),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text('Continue'),
              ),
          ],
        ),
      ),
    );
  }

  Color _getNPCTypeColor(NPCType type) {
    switch (type) {
      case NPCType.philosopher:
        return Colors.purple.shade600;
      case NPCType.merchant:
        return Colors.green.shade600;
      case NPCType.trader:
        return Colors.blue.shade600;
      case NPCType.teacher:
        return Colors.orange.shade600;
      case NPCType.official:
        return Colors.red.shade600;
      case NPCType.citizen:
        return Colors.grey.shade600;
    }
  }

  IconData _getNPCTypeIcon(NPCType type) {
    switch (type) {
      case NPCType.philosopher:
        return Icons.psychology;
      case NPCType.merchant:
        return Icons.store;
      case NPCType.trader:
        return Icons.local_shipping;
      case NPCType.teacher:
        return Icons.school;
      case NPCType.official:
        return Icons.account_balance;
      case NPCType.citizen:
        return Icons.person;
    }
  }

  Color _getEconomicConceptColor(EconomicConcept concept) {
    switch (concept) {
      case EconomicConcept.supplyAndDemand:
        return Colors.green.shade700;
      case EconomicConcept.trading:
        return Colors.blue.shade700;
      case EconomicConcept.currency:
        return Colors.amber.shade700;
      case EconomicConcept.markets:
        return Colors.purple.shade700;
      case EconomicConcept.specialization:
        return Colors.orange.shade700;
      case EconomicConcept.opportunity_cost:
        return Colors.red.shade700;
      case EconomicConcept.resources:
        return Colors.brown.shade700;
      case EconomicConcept.inflation:
        return Colors.pink.shade700;
      case EconomicConcept.banking:
        return Colors.indigo.shade700;
      case EconomicConcept.international_trade:
        return Colors.teal.shade700;
    }
  }

  IconData _getEconomicConceptIcon(EconomicConcept concept) {
    switch (concept) {
      case EconomicConcept.supplyAndDemand:
        return Icons.trending_up;
      case EconomicConcept.trading:
        return Icons.swap_horiz;
      case EconomicConcept.currency:
        return Icons.monetization_on;
      case EconomicConcept.markets:
        return Icons.storefront;
      case EconomicConcept.specialization:
        return Icons.precision_manufacturing;
      case EconomicConcept.opportunity_cost:
        return Icons.balance;
      case EconomicConcept.resources:
        return Icons.inventory;
      case EconomicConcept.inflation:
        return Icons.arrow_upward;
      case EconomicConcept.banking:
        return Icons.account_balance;
      case EconomicConcept.international_trade:
        return Icons.public;
    }
  }

  String _getEconomicConceptName(EconomicConcept concept) {
    switch (concept) {
      case EconomicConcept.supplyAndDemand:
        return 'Supply & Demand';
      case EconomicConcept.trading:
        return 'Trading';
      case EconomicConcept.currency:
        return 'Currency';
      case EconomicConcept.markets:
        return 'Markets';
      case EconomicConcept.specialization:
        return 'Specialization';
      case EconomicConcept.opportunity_cost:
        return 'Opportunity Cost';
      case EconomicConcept.resources:
        return 'Resources';
      case EconomicConcept.inflation:
        return 'Inflation';
      case EconomicConcept.banking:
        return 'Banking';
      case EconomicConcept.international_trade:
        return 'International Trade';
    }
  }
}