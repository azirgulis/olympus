import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/academy.dart';
import '../data/academy/economics_lessons.dart';
import 'player_provider.dart';

class AcademyNotifier extends StateNotifier<List<Lesson>> {
  AcademyNotifier() : super([]) {
    _initializeLessons();
  }

  void _initializeLessons() {
    final lessons = EconomicsLessons.getAllLessons();
    // Unlock the first lesson by default
    final updatedLessons = lessons.map((lesson) {
      if (lesson.id == 'econ_basics_001') {
        return lesson.copyWith(isUnlocked: true);
      }
      return lesson;
    }).toList();
    state = updatedLessons;
  }

  // Start a lesson
  void startLesson(String lessonId) {
    state = state.map((lesson) {
      if (lesson.id == lessonId && lesson.isUnlocked) {
        return lesson.copyWith(currentSection: 0);
      }
      return lesson;
    }).toList();
  }

  // Complete a section
  void completeSection(String lessonId, String sectionId) {
    state = state.map((lesson) {
      if (lesson.id == lessonId) {
        final updatedSections = lesson.sections.map((section) {
          if (section.id == sectionId) {
            return section.copyWith(isCompleted: true);
          }
          return section;
        }).toList();

        final completedSections = updatedSections.where((s) => s.isCompleted).length;
        final currentSection = lesson.currentSection < lesson.sections.length - 1
            ? lesson.currentSection + 1
            : lesson.currentSection;

        final isLessonCompleted = completedSections == lesson.sections.length;

        return lesson.copyWith(
          sections: updatedSections,
          currentSection: currentSection,
          isCompleted: isLessonCompleted,
        );
      }
      return lesson;
    }).toList();

    // Check if we should unlock new lessons
    _checkUnlockedLessons();
  }

  // Answer a quiz question
  void answerQuizQuestion(
    String lessonId,
    String sectionId,
    String questionId,
    int answer,
  ) {
    state = state.map((lesson) {
      if (lesson.id == lessonId) {
        final updatedSections = lesson.sections.map((section) {
          if (section.id == sectionId && section.quiz != null) {
            final updatedQuiz = section.quiz!.map((question) {
              if (question.id == questionId) {
                return question.copyWith(
                  isAnswered: true,
                  userAnswer: answer,
                );
              }
              return question;
            }).toList();

            return section.copyWith(quiz: updatedQuiz);
          }
          return section;
        }).toList();

        return lesson.copyWith(sections: updatedSections);
      }
      return lesson;
    }).toList();
  }

  // Complete a lesson and award experience
  void completeLesson(String lessonId, WidgetRef ref) {
    final lesson = state.firstWhere((l) => l.id == lessonId);

    if (lesson.isCompleted) {
      // Award experience based on difficulty
      int experience = _getExperienceForDifficulty(lesson.difficulty);
      ref.read(playerProvider.notifier).addExperience(experience);

      // Award some drachmae for learning
      int drachmae = experience ~/ 2;
      ref.read(playerProvider.notifier).addDrachmae(drachmae);

      _checkUnlockedLessons();
    }
  }

  int _getExperienceForDifficulty(LessonDifficulty difficulty) {
    switch (difficulty) {
      case LessonDifficulty.beginner:
        return 50;
      case LessonDifficulty.intermediate:
        return 100;
      case LessonDifficulty.advanced:
        return 150;
      case LessonDifficulty.expert:
        return 200;
    }
  }

  void _checkUnlockedLessons() {
    final completedLessonIds = state
        .where((lesson) => lesson.isCompleted)
        .map((lesson) => lesson.id)
        .toList();

    state = state.map((lesson) {
      if (!lesson.isUnlocked) {
        final prerequisitesMet = lesson.prerequisites.every(
          (prereq) => completedLessonIds.contains(prereq)
        );

        if (prerequisitesMet) {
          return lesson.copyWith(isUnlocked: true);
        }
      }
      return lesson;
    }).toList();
  }

  // Get lessons by difficulty
  List<Lesson> getLessonsByDifficulty(LessonDifficulty difficulty) {
    return state.where((lesson) => lesson.difficulty == difficulty).toList();
  }

  // Get unlocked lessons
  List<Lesson> getUnlockedLessons() {
    return state.where((lesson) => lesson.isUnlocked).toList();
  }

  // Get completed lessons
  List<Lesson> getCompletedLessons() {
    return state.where((lesson) => lesson.isCompleted).toList();
  }

  // Get lessons by subject
  List<Lesson> getLessonsBySubject(String subject) {
    return state.where((lesson) => lesson.subject == subject).toList();
  }

  // Get lesson progress percentage
  double getLessonProgress(String lessonId) {
    final lesson = state.firstWhere(
      (l) => l.id == lessonId,
      orElse: () => const Lesson(
        id: '',
        title: '',
        description: '',
        subject: '',
        difficulty: LessonDifficulty.beginner,
        sections: [],
        prerequisites: [],
        estimatedMinutes: 0,
        teacher: '',
      ),
    );

    if (lesson.id.isEmpty) return 0.0;

    final completedSections = lesson.sections.where((s) => s.isCompleted).length;
    return lesson.sections.isEmpty ? 0.0 : completedSections / lesson.sections.length;
  }

  // Calculate quiz score for a lesson
  Map<String, dynamic> getQuizScore(String lessonId) {
    final lesson = state.firstWhere(
      (l) => l.id == lessonId,
      orElse: () => const Lesson(
        id: '',
        title: '',
        description: '',
        subject: '',
        difficulty: LessonDifficulty.beginner,
        sections: [],
        prerequisites: [],
        estimatedMinutes: 0,
        teacher: '',
      ),
    );

    if (lesson.id.isEmpty) {
      return {'score': 0, 'total': 0, 'percentage': 0.0};
    }

    int totalQuestions = 0;
    int correctAnswers = 0;

    for (final section in lesson.sections) {
      if (section.quiz != null) {
        for (final question in section.quiz!) {
          totalQuestions++;
          if (question.isAnswered && question.userAnswer == question.correctAnswer) {
            correctAnswers++;
          }
        }
      }
    }

    final percentage = totalQuestions > 0 ? (correctAnswers / totalQuestions) * 100 : 0.0;

    return {
      'score': correctAnswers,
      'total': totalQuestions,
      'percentage': percentage,
    };
  }
}

final academyProvider = StateNotifierProvider<AcademyNotifier, List<Lesson>>((ref) {
  return AcademyNotifier();
});

// Convenience providers
final unlockedLessonsProvider = Provider<List<Lesson>>((ref) {
  final academyNotifier = ref.watch(academyProvider.notifier);
  return academyNotifier.getUnlockedLessons();
});

final completedLessonsProvider = Provider<List<Lesson>>((ref) {
  final academyNotifier = ref.watch(academyProvider.notifier);
  return academyNotifier.getCompletedLessons();
});

final beginnerLessonsProvider = Provider<List<Lesson>>((ref) {
  final academyNotifier = ref.watch(academyProvider.notifier);
  return academyNotifier.getLessonsByDifficulty(LessonDifficulty.beginner);
});

final intermediateLessonsProvider = Provider<List<Lesson>>((ref) {
  final academyNotifier = ref.watch(academyProvider.notifier);
  return academyNotifier.getLessonsByDifficulty(LessonDifficulty.intermediate);
});

final advancedLessonsProvider = Provider<List<Lesson>>((ref) {
  final academyNotifier = ref.watch(academyProvider.notifier);
  return academyNotifier.getLessonsByDifficulty(LessonDifficulty.advanced);
});