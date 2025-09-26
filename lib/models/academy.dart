import 'package:freezed_annotation/freezed_annotation.dart';

part 'academy.freezed.dart';
part 'academy.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String title,
    required String description,
    required String subject,
    required LessonDifficulty difficulty,
    required List<LessonSection> sections,
    required List<String> prerequisites,
    required int estimatedMinutes,
    required String teacher,
    @Default(false) bool isCompleted,
    @Default(false) bool isUnlocked,
    @Default(0) int currentSection,
    String? thumbnail,
    List<String>? tags,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

@freezed
class LessonSection with _$LessonSection {
  const factory LessonSection({
    required String id,
    required String title,
    required SectionType type,
    required String content,
    @Default(false) bool isCompleted,
    List<QuizQuestion>? quiz,
    Map<String, dynamic>? interactiveData,
    String? imageUrl,
    String? videoUrl,
  }) = _LessonSection;

  factory LessonSection.fromJson(Map<String, dynamic> json) => _$LessonSectionFromJson(json);
}

@freezed
class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    required String id,
    required String question,
    required List<String> options,
    required int correctAnswer,
    required String explanation,
    @Default(false) bool isAnswered,
    int? userAnswer,
  }) = _QuizQuestion;

  factory QuizQuestion.fromJson(Map<String, dynamic> json) => _$QuizQuestionFromJson(json);
}

@freezed
class LessonProgress with _$LessonProgress {
  const factory LessonProgress({
    required String lessonId,
    required DateTime startedAt,
    required int completedSections,
    required int totalSections,
    required Map<String, bool> sectionProgress,
    @Default(0) int quizScore,
    @Default(0) int totalQuizQuestions,
    DateTime? completedAt,
  }) = _LessonProgress;

  factory LessonProgress.fromJson(Map<String, dynamic> json) => _$LessonProgressFromJson(json);
}

enum LessonDifficulty {
  beginner,
  intermediate,
  advanced,
  expert,
}

enum SectionType {
  reading,
  video,
  interactive,
  quiz,
  simulation,
  discussion,
}