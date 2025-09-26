// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      subject: json['subject'] as String,
      difficulty: $enumDecode(_$LessonDifficultyEnumMap, json['difficulty']),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => LessonSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      prerequisites: (json['prerequisites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      estimatedMinutes: (json['estimatedMinutes'] as num).toInt(),
      teacher: json['teacher'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      currentSection: (json['currentSection'] as num?)?.toInt() ?? 0,
      thumbnail: json['thumbnail'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'subject': instance.subject,
      'difficulty': _$LessonDifficultyEnumMap[instance.difficulty]!,
      'sections': instance.sections,
      'prerequisites': instance.prerequisites,
      'estimatedMinutes': instance.estimatedMinutes,
      'teacher': instance.teacher,
      'isCompleted': instance.isCompleted,
      'isUnlocked': instance.isUnlocked,
      'currentSection': instance.currentSection,
      'thumbnail': instance.thumbnail,
      'tags': instance.tags,
    };

const _$LessonDifficultyEnumMap = {
  LessonDifficulty.beginner: 'beginner',
  LessonDifficulty.intermediate: 'intermediate',
  LessonDifficulty.advanced: 'advanced',
  LessonDifficulty.expert: 'expert',
};

_$LessonSectionImpl _$$LessonSectionImplFromJson(Map<String, dynamic> json) =>
    _$LessonSectionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$SectionTypeEnumMap, json['type']),
      content: json['content'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      quiz: (json['quiz'] as List<dynamic>?)
          ?.map((e) => QuizQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactiveData: json['interactiveData'] as Map<String, dynamic>?,
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$$LessonSectionImplToJson(_$LessonSectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$SectionTypeEnumMap[instance.type]!,
      'content': instance.content,
      'isCompleted': instance.isCompleted,
      'quiz': instance.quiz,
      'interactiveData': instance.interactiveData,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
    };

const _$SectionTypeEnumMap = {
  SectionType.reading: 'reading',
  SectionType.video: 'video',
  SectionType.interactive: 'interactive',
  SectionType.quiz: 'quiz',
  SectionType.simulation: 'simulation',
  SectionType.discussion: 'discussion',
};

_$QuizQuestionImpl _$$QuizQuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuizQuestionImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: (json['correctAnswer'] as num).toInt(),
      explanation: json['explanation'] as String,
      isAnswered: json['isAnswered'] as bool? ?? false,
      userAnswer: (json['userAnswer'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuizQuestionImplToJson(_$QuizQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
      'explanation': instance.explanation,
      'isAnswered': instance.isAnswered,
      'userAnswer': instance.userAnswer,
    };

_$LessonProgressImpl _$$LessonProgressImplFromJson(Map<String, dynamic> json) =>
    _$LessonProgressImpl(
      lessonId: json['lessonId'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      completedSections: (json['completedSections'] as num).toInt(),
      totalSections: (json['totalSections'] as num).toInt(),
      sectionProgress: Map<String, bool>.from(json['sectionProgress'] as Map),
      quizScore: (json['quizScore'] as num?)?.toInt() ?? 0,
      totalQuizQuestions: (json['totalQuizQuestions'] as num?)?.toInt() ?? 0,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$LessonProgressImplToJson(
        _$LessonProgressImpl instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'startedAt': instance.startedAt.toIso8601String(),
      'completedSections': instance.completedSections,
      'totalSections': instance.totalSections,
      'sectionProgress': instance.sectionProgress,
      'quizScore': instance.quizScore,
      'totalQuizQuestions': instance.totalQuizQuestions,
      'completedAt': instance.completedAt?.toIso8601String(),
    };
