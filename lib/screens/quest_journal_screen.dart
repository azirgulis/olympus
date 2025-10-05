import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/quest.dart';
import '../providers/quest_provider.dart';

class QuestJournalScreen extends ConsumerStatefulWidget {
  const QuestJournalScreen({super.key});

  @override
  ConsumerState<QuestJournalScreen> createState() => _QuestJournalScreenState();
}

class _QuestJournalScreenState extends ConsumerState<QuestJournalScreen>
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
    final activeQuests = ref.watch(activeQuestsProvider);
    final availableQuests = ref.watch(availableQuestsProvider);
    final completedQuests = ref.watch(completedQuestsProvider);
    final allQuests = ref.watch(questProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest Journal'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Active', icon: Icon(Icons.schedule)),
            Tab(text: 'Available', icon: Icon(Icons.star_border)),
            Tab(text: 'Completed', icon: Icon(Icons.check_circle)),
            Tab(text: 'All', icon: Icon(Icons.library_books)),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.indigo.shade50,
              Colors.blue.shade50,
            ],
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildQuestList(activeQuests, QuestStatus.started),
            _buildQuestList(availableQuests, QuestStatus.available),
            _buildQuestList(completedQuests, QuestStatus.completed),
            _buildQuestList(allQuests, null),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestList(List<Quest> quests, QuestStatus? filterStatus) {
    if (quests.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getEmptyIcon(filterStatus),
              size: 80,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              _getEmptyMessage(filterStatus),
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
          ],
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
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _showQuestDetails(quest),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildQuestTypeIcon(quest.type),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          quest.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            _buildDifficultyBadge(quest.difficulty),
                            const SizedBox(width: 8),
                            _buildStatusBadge(quest.status),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                quest.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (quest.status == QuestStatus.started) ...[
                const SizedBox(height: 12),
                _buildProgressBar(quest),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.lightbulb_outline,
                      size: 16, color: Colors.amber.shade700),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      quest.economicConcept,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.amber.shade700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestTypeIcon(QuestType type) {
    IconData icon;
    Color color;

    switch (type) {
      case QuestType.main:
        icon = Icons.flag;
        color = Colors.red.shade600;
        break;
      case QuestType.side:
        icon = Icons.help_outline;
        color = Colors.blue.shade600;
        break;
      case QuestType.daily:
        icon = Icons.calendar_today;
        color = Colors.green.shade600;
        break;
      case QuestType.economic:
        icon = Icons.emoji_events;
        color = Colors.purple.shade600;
        break;
      case QuestType.tutorial:
        icon = Icons.help;
        color = Colors.blue.shade400;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }

  Widget _buildDifficultyBadge(QuestDifficulty difficulty) {
    Color color;
    String text;

    switch (difficulty) {
      case QuestDifficulty.easy:
        color = Colors.green;
        text = 'Easy';
        break;
      case QuestDifficulty.medium:
        color = Colors.orange;
        text = 'Medium';
        break;
      case QuestDifficulty.hard:
        color = Colors.red;
        text = 'Hard';
        break;
      case QuestDifficulty.expert:
        color = Colors.purple;
        text = 'Expert';
        break;
      case QuestDifficulty.veryHard:
        color = Colors.deepPurple;
        text = 'Very Hard';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }

  Widget _buildStatusBadge(QuestStatus status) {
    Color color;
    String text;
    IconData icon;

    switch (status) {
      case QuestStatus.locked:
        color = Colors.grey;
        text = 'Locked';
        icon = Icons.lock;
        break;
      case QuestStatus.available:
        color = Colors.blue;
        text = 'Available';
        icon = Icons.star_border;
        break;
      case QuestStatus.started:
        color = Colors.amber;
        text = 'In Progress';
        icon = Icons.schedule;
        break;
      case QuestStatus.completed:
        color = Colors.green;
        text = 'Completed';
        icon = Icons.check_circle;
        break;
      case QuestStatus.failed:
        color = Colors.red;
        text = 'Failed';
        icon = Icons.cancel;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: color),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar(Quest quest) {
    final completedObjectives =
        quest.objectives.where((obj) => obj.isCompleted).length;
    final totalObjectives = quest.objectives.length;
    final progress = totalObjectives > 0 ? completedObjectives / totalObjectives : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Progress',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$completedObjectives/$totalObjectives objectives',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue.shade600),
          minHeight: 6,
          borderRadius: BorderRadius.circular(3),
        ),
      ],
    );
  }

  IconData _getEmptyIcon(QuestStatus? status) {
    switch (status) {
      case QuestStatus.started:
        return Icons.assignment_outlined;
      case QuestStatus.available:
        return Icons.explore_outlined;
      case QuestStatus.completed:
        return Icons.celebration_outlined;
      default:
        return Icons.menu_book_outlined;
    }
  }

  String _getEmptyMessage(QuestStatus? status) {
    switch (status) {
      case QuestStatus.started:
        return 'No active quests';
      case QuestStatus.available:
        return 'No available quests';
      case QuestStatus.completed:
        return 'No completed quests yet';
      default:
        return 'No quests found';
    }
  }

  void _showQuestDetails(Quest quest) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _buildQuestTypeIcon(quest.type),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                quest.title,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            _buildDifficultyBadge(quest.difficulty),
                            const SizedBox(width: 8),
                            _buildStatusBadge(quest.status),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _buildSection('Description', quest.description),
                        const SizedBox(height: 20),
                        _buildSection('Economic Concept', quest.economicConcept),
                        const SizedBox(height: 12),
                        _buildSection('Learning Objective', quest.learningObjective),
                        const SizedBox(height: 20),
                        _buildObjectivesSection(quest),
                        const SizedBox(height: 20),
                        _buildRewardsSection(quest),
                        if (quest.prerequisites.isNotEmpty) ...[
                          const SizedBox(height: 20),
                          _buildPrerequisitesSection(quest),
                        ],
                        const SizedBox(height: 24),
                        if (quest.status == QuestStatus.available)
                          _buildStartQuestButton(quest),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          content,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }

  Widget _buildObjectivesSection(Quest quest) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Objectives',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 12),
        ...quest.objectives.map((objective) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  objective.isCompleted
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  color: objective.isCompleted ? Colors.green : Colors.grey,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        objective.description,
                        style: TextStyle(
                          fontSize: 15,
                          decoration: objective.isCompleted
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      if (objective.targetProgress != null && objective.targetProgress! > 0) ...[
                        const SizedBox(height: 4),
                        LinearProgressIndicator(
                          value: (objective.currentProgress ?? 0) / objective.targetProgress!,
                          backgroundColor: Colors.grey.shade200,
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${objective.currentProgress}/${objective.targetProgress}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildRewardsSection(Quest quest) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rewards',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: quest.rewards.map((reward) {
            IconData icon;
            Color color;
            String text;

            switch (reward.type) {
              case RewardType.drachmae:
                icon = Icons.monetization_on;
                color = Colors.amber;
                text = '${reward.amount} Drachmae';
                break;
              case RewardType.experience:
                icon = Icons.stars;
                color = Colors.purple;
                text = '${reward.amount} XP';
                break;
              case RewardType.item:
                icon = Icons.inventory;
                color = Colors.blue;
                text = reward.itemId ?? 'Item';
                break;
              case RewardType.health:
                icon = Icons.favorite;
                color = Colors.red;
                text = '+${reward.amount} Health';
                break;
              case RewardType.energy:
                icon = Icons.bolt;
                color = Colors.cyan;
                text = '+${reward.amount} Energy';
                break;
              case RewardType.reputation:
                icon = Icons.thumb_up;
                color = Colors.green;
                text = '+${reward.amount} Reputation';
                break;
              case RewardType.skill:
                icon = Icons.school;
                color = Colors.indigo;
                text = reward.skillType ?? 'Skill';
                break;
            }

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: color.withValues(alpha: 0.3)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: 18, color: color),
                  const SizedBox(width: 6),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildPrerequisitesSection(Quest quest) {
    final allQuests = ref.watch(questProvider);
    final prerequisites = quest.prerequisites
        .map((id) => allQuests.firstWhere((q) => q.id == id,
            orElse: () => Quest(
                  id: id,
                  title: 'Unknown Quest',
                  description: '',
                  type: QuestType.main,
                  difficulty: QuestDifficulty.easy,
                  objectives: const [],
                  rewards: const [],
                  prerequisites: const [],
                  economicConcept: '',
                  learningObjective: '',
                )))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prerequisites',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 8),
        ...prerequisites.map((prereq) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              children: [
                Icon(Icons.arrow_right, size: 20, color: Colors.grey.shade600),
                const SizedBox(width: 8),
                Text(
                  prereq.title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildStartQuestButton(Quest quest) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          ref.read(questProvider.notifier).startQuest(quest.id);
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Quest started: ${quest.title}'),
              backgroundColor: Colors.green,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Start Quest',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
