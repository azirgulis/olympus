import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/quest.dart';
import '../providers/quest_provider.dart';
import '../widgets/game_ui/resource_bar.dart';
import '../providers/player_provider.dart';

class QuestScreen extends ConsumerStatefulWidget {
  const QuestScreen({super.key});

  @override
  ConsumerState<QuestScreen> createState() => _QuestScreenState();
}

class _QuestScreenState extends ConsumerState<QuestScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    final allQuests = ref.watch(questProvider);
    final activeQuests = ref.watch(activeQuestsProvider);
    final availableQuests = ref.watch(availableQuestsProvider);
    final completedQuests = ref.watch(completedQuestsProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEEB), // Sky blue
              Color(0xFFE6B17A), // Sandy color
              Color(0xFF8B4513), // Ancient brown
            ],
            stops: [0.0, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with player stats
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
                          onPressed: () {
                            if (context.canPop()) {
                              context.pop();
                            } else {
                              context.go('/athens');
                            }
                          },
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'QUEST BOARD',
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.favorite,
                            label: 'Health',
                            value: player.health,
                            maxValue: 100,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.flash_on,
                            label: 'Energy',
                            value: player.energy,
                            maxValue: 100,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.monetization_on,
                            label: 'Drachmae',
                            value: player.drachmae,
                            maxValue: 1000,
                            color: Colors.amber,
                            showAsNumber: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Tab Bar
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFF8B4513), width: 2),
                ),
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.play_arrow, size: 16),
                          Text('Active (${activeQuests.length})', style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.assignment, size: 16),
                          Text('Available (${availableQuests.length})', style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.check_circle, size: 16),
                          Text('Completed (${completedQuests.length})', style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.all_inclusive, size: 16),
                          Text('All (${allQuests.length})', style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ],
                  labelColor: const Color(0xFF8B4513),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: const Color(0xFF8B4513),
                  labelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: const TextStyle(fontSize: 10),
                ),
              ),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildQuestList(activeQuests, 'No active quests'),
                    _buildQuestList(availableQuests, 'No available quests'),
                    _buildQuestList(completedQuests, 'No completed quests'),
                    _buildQuestList(allQuests, 'No quests available'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestList(List<Quest> quests, String emptyMessage) {
    if (quests.isEmpty) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.assignment_outlined,
                size: 64,
                color: Colors.grey,
              ),
              const SizedBox(height: 16),
              Text(
                emptyMessage,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: quests.length,
      itemBuilder: (context, index) {
        final quest = quests[index];
        return _buildQuestCard(quest);
      },
    );
  }

  Widget _buildQuestCard(Quest quest) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getQuestBorderColor(quest),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _getQuestColor(quest),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            _getQuestIcon(quest),
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          quest.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF8B4513),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${quest.type.name.toUpperCase()} • ${quest.difficulty.name.toUpperCase()}',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF8B4513),
              ),
            ),
            Text(
              'Economics: ${quest.economicConcept}',
              style: TextStyle(
                fontSize: 11,
                color: const Color(0xFF8B4513).withValues(alpha: 0.7),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        trailing: _buildQuestStatusIcon(quest),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Description
                Text(
                  quest.description,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),

                // Learning Objective
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF87CEEB).withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF87CEEB)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.lightbulb, color: Color(0xFF8B4513), size: 16),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Learn: ${quest.learningObjective}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            color: Color(0xFF8B4513),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Objectives
                const Text(
                  'Objectives:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 8),
                ...quest.objectives.map((objective) => _buildObjectiveItem(quest, objective)),

                const SizedBox(height: 12),

                // Rewards
                const Text(
                  'Rewards:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: quest.rewards.map((reward) => _buildRewardChip(reward)).toList(),
                ),

                const SizedBox(height: 16),

                // Action Button
                if (quest.status == QuestStatus.available)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => _startQuest(quest),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8B4513),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Start Quest'),
                    ),
                  ),

                if (quest.status == QuestStatus.started && quest.isCompleted)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => _completeQuest(quest),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Complete Quest'),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildObjectiveItem(Quest quest, QuestObjective objective) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: objective.isCompleted
              ? Colors.green.withValues(alpha: 0.1)
              : Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: objective.isCompleted ? Colors.green : Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              objective.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              color: objective.isCompleted ? Colors.green : Colors.grey,
              size: 16,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    objective.description,
                    style: TextStyle(
                      fontSize: 12,
                      color: objective.isCompleted ? Colors.green : Colors.black87,
                      decoration: objective.isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  if (objective.targetProgress != null && objective.currentProgress != null)
                    Text(
                      'Progress: ${objective.currentProgress}/${objective.targetProgress}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
            if (quest.status == QuestStatus.started && !objective.isCompleted)
              ElevatedButton(
                onPressed: () => _completeObjective(quest, objective),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(60, 30),
                ),
                child: const Text('Do', style: TextStyle(fontSize: 10)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildRewardChip(QuestReward reward) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getRewardColor(reward.type).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _getRewardColor(reward.type)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getRewardIcon(reward.type),
            size: 12,
            color: _getRewardColor(reward.type),
          ),
          const SizedBox(width: 4),
          Text(
            '${reward.amount}',
            style: TextStyle(
              fontSize: 11,
              color: _getRewardColor(reward.type),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestStatusIcon(Quest quest) {
    switch (quest.status) {
      case QuestStatus.completed:
        return const Icon(Icons.check_circle, color: Colors.green);
      case QuestStatus.started:
        return quest.isCompleted
            ? const Icon(Icons.assignment_turned_in, color: Colors.orange)
            : const Icon(Icons.play_arrow, color: Colors.blue);
      case QuestStatus.available:
        return const Icon(Icons.assignment, color: Color(0xFF8B4513));
      case QuestStatus.locked:
        return const Icon(Icons.lock, color: Colors.grey);
      case QuestStatus.failed:
        return const Icon(Icons.cancel, color: Colors.red);
    }
  }

  Color _getQuestColor(Quest quest) {
    switch (quest.difficulty) {
      case QuestDifficulty.easy:
        return Colors.green;
      case QuestDifficulty.medium:
        return Colors.orange;
      case QuestDifficulty.hard:
        return Colors.red;
      case QuestDifficulty.expert:
        return Colors.purple;
    }
  }

  Color _getQuestBorderColor(Quest quest) {
    switch (quest.status) {
      case QuestStatus.completed:
        return Colors.green;
      case QuestStatus.started:
        return Colors.blue;
      case QuestStatus.available:
        return const Color(0xFF8B4513);
      case QuestStatus.locked:
        return Colors.grey;
      case QuestStatus.failed:
        return Colors.red;
    }
  }

  IconData _getQuestIcon(Quest quest) {
    switch (quest.type) {
      case QuestType.main:
        return Icons.star;
      case QuestType.side:
        return Icons.assignment;
      case QuestType.tutorial:
        return Icons.school;
      case QuestType.daily:
        return Icons.today;
      case QuestType.economic:
        return Icons.trending_up;
    }
  }

  Color _getRewardColor(RewardType type) {
    switch (type) {
      case RewardType.drachmae:
        return Colors.amber;
      case RewardType.experience:
        return Colors.blue;
      case RewardType.item:
        return Colors.purple;
      case RewardType.reputation:
        return Colors.green;
      case RewardType.health:
        return Colors.red;
      case RewardType.energy:
        return Colors.yellow;
      case RewardType.skill:
        return Colors.orange;
    }
  }

  IconData _getRewardIcon(RewardType type) {
    switch (type) {
      case RewardType.drachmae:
        return Icons.monetization_on;
      case RewardType.experience:
        return Icons.school;
      case RewardType.item:
        return Icons.inventory;
      case RewardType.reputation:
        return Icons.thumb_up;
      case RewardType.health:
        return Icons.favorite;
      case RewardType.energy:
        return Icons.flash_on;
      case RewardType.skill:
        return Icons.build;
    }
  }

  void _startQuest(Quest quest) {
    ref.read(questProvider.notifier).startQuest(quest.id);
    _showMessage('Quest started: ${quest.title}', Colors.blue);
  }

  void _completeQuest(Quest quest) {
    ref.read(questProvider.notifier).completeQuest(quest.id, ref);
    _showMessage('Quest completed: ${quest.title}', Colors.green);
  }

  void _completeObjective(Quest quest, QuestObjective objective) {
    if (objective.targetProgress != null) {
      // For objectives with progress tracking, set to target
      ref.read(questProvider.notifier).updateObjectiveProgress(
        quest.id,
        objective.id,
        objective.targetProgress!
      );
    } else {
      // For simple objectives, mark as complete
      ref.read(questProvider.notifier).completeObjective(quest.id, objective.id);
    }
    _showMessage('Objective completed: ${objective.description}', Colors.green);
  }

  void _showMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}