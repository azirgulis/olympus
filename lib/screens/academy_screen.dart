import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/academy.dart';
import '../providers/academy_provider.dart';
import '../providers/player_provider.dart';
import '../widgets/game_ui/resource_bar.dart';
import 'lesson_screen.dart';

class AcademyScreen extends ConsumerStatefulWidget {
  const AcademyScreen({super.key});

  @override
  ConsumerState<AcademyScreen> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends ConsumerState<AcademyScreen>
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
    final allLessons = ref.watch(academyProvider);
    final unlockedLessons = ref.watch(unlockedLessonsProvider);
    final completedLessons = ref.watch(completedLessonsProvider);
    final beginnerLessons = ref.watch(beginnerLessonsProvider);

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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.school, color: Colors.white, size: 28),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    'ACADEMY OF ATHENS',
                                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
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

              // Academy Welcome
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.95),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF8B4513), width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8B4513),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.psychology,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome to the Academy!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8B4513),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Learn economics from the greatest philosophers of ancient Greece.',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xFF8B4513).withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Progress Summary
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF87CEEB).withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF87CEEB)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildProgressStat('Lessons\nCompleted', completedLessons.length, Icons.check_circle, Colors.green),
                    _buildProgressStat('Lessons\nUnlocked', unlockedLessons.length, Icons.lock_open, Colors.blue),
                    _buildProgressStat('Total\nLessons', allLessons.length, Icons.school, const Color(0xFF8B4513)),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Tab Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFF8B4513), width: 2),
                ),
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.rocket_launch, size: 16),
                          Text('Beginner', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.trending_up, size: 16),
                          Text('Intermediate', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, size: 16),
                          Text('Advanced', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.all_inclusive, size: 16),
                          Text('All', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ],
                  labelColor: const Color(0xFF8B4513),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: const Color(0xFF8B4513),
                ),
              ),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildLessonList(beginnerLessons, 'No beginner lessons available'),
                    _buildLessonList(ref.watch(intermediateLessonsProvider), 'No intermediate lessons available'),
                    _buildLessonList(ref.watch(advancedLessonsProvider), 'No advanced lessons available'),
                    _buildLessonList(allLessons, 'No lessons available'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressStat(String label, int value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF8B4513),
          ),
        ),
      ],
    );
  }

  Widget _buildLessonList(List<Lesson> lessons, String emptyMessage) {
    if (lessons.isEmpty) {
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
                Icons.school_outlined,
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
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return _buildLessonCard(lesson);
      },
    );
  }

  Widget _buildLessonCard(Lesson lesson) {
    final progress = ref.watch(academyProvider.notifier).getLessonProgress(lesson.id);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getLessonBorderColor(lesson),
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
      child: Column(
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _getDifficultyColor(lesson.difficulty),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getDifficultyIcon(lesson.difficulty),
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                if (!lesson.isUnlocked)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
                if (lesson.isCompleted)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
              ],
            ),
            title: Text(
              lesson.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: lesson.isUnlocked ? const Color(0xFF8B4513) : Colors.grey,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${lesson.difficulty.name.toUpperCase()} • ${lesson.estimatedMinutes} min • ${lesson.teacher}',
                  style: TextStyle(
                    fontSize: 12,
                    color: lesson.isUnlocked ? const Color(0xFF8B4513) : Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  lesson.description,
                  style: TextStyle(
                    fontSize: 13,
                    color: lesson.isUnlocked
                        ? const Color(0xFF8B4513).withValues(alpha: 0.8)
                        : Colors.grey.withValues(alpha: 0.8),
                  ),
                ),
                if (lesson.isUnlocked && progress > 0) ...[
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.withValues(alpha: 0.3),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      lesson.isCompleted ? Colors.green : Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${(progress * 100).round()}% complete',
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF8B4513),
                    ),
                  ),
                ],
              ],
            ),
            onTap: lesson.isUnlocked ? () => _startLesson(lesson) : null,
          ),
          if (lesson.isUnlocked)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _startLesson(lesson),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lesson.isCompleted ? Colors.green : const Color(0xFF8B4513),
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    lesson.isCompleted ? 'Review Lesson' :
                    progress > 0 ? 'Continue Lesson' : 'Start Lesson'
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color _getLessonBorderColor(Lesson lesson) {
    if (!lesson.isUnlocked) return Colors.grey;
    if (lesson.isCompleted) return Colors.green;
    return const Color(0xFF8B4513);
  }

  Color _getDifficultyColor(LessonDifficulty difficulty) {
    switch (difficulty) {
      case LessonDifficulty.beginner:
        return Colors.green;
      case LessonDifficulty.intermediate:
        return Colors.orange;
      case LessonDifficulty.advanced:
        return Colors.red;
      case LessonDifficulty.expert:
        return Colors.purple;
    }
  }

  IconData _getDifficultyIcon(LessonDifficulty difficulty) {
    switch (difficulty) {
      case LessonDifficulty.beginner:
        return Icons.rocket_launch;
      case LessonDifficulty.intermediate:
        return Icons.trending_up;
      case LessonDifficulty.advanced:
        return Icons.star;
      case LessonDifficulty.expert:
        return Icons.military_tech;
    }
  }

  void _startLesson(Lesson lesson) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LessonScreen(lesson: lesson),
      ),
    );
  }
}