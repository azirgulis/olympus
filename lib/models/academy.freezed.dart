// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  LessonDifficulty get difficulty => throw _privateConstructorUsedError;
  List<LessonSection> get sections => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  int get estimatedMinutes => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  int get currentSection => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String subject,
      LessonDifficulty difficulty,
      List<LessonSection> sections,
      List<String> prerequisites,
      int estimatedMinutes,
      String teacher,
      bool isCompleted,
      bool isUnlocked,
      int currentSection,
      String? thumbnail,
      List<String>? tags});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? subject = null,
    Object? difficulty = null,
    Object? sections = null,
    Object? prerequisites = null,
    Object? estimatedMinutes = null,
    Object? teacher = null,
    Object? isCompleted = null,
    Object? isUnlocked = null,
    Object? currentSection = null,
    Object? thumbnail = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as LessonDifficulty,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<LessonSection>,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      estimatedMinutes: null == estimatedMinutes
          ? _value.estimatedMinutes
          : estimatedMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String subject,
      LessonDifficulty difficulty,
      List<LessonSection> sections,
      List<String> prerequisites,
      int estimatedMinutes,
      String teacher,
      bool isCompleted,
      bool isUnlocked,
      int currentSection,
      String? thumbnail,
      List<String>? tags});
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? subject = null,
    Object? difficulty = null,
    Object? sections = null,
    Object? prerequisites = null,
    Object? estimatedMinutes = null,
    Object? teacher = null,
    Object? isCompleted = null,
    Object? isUnlocked = null,
    Object? currentSection = null,
    Object? thumbnail = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as LessonDifficulty,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<LessonSection>,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      estimatedMinutes: null == estimatedMinutes
          ? _value.estimatedMinutes
          : estimatedMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.subject,
      required this.difficulty,
      required final List<LessonSection> sections,
      required final List<String> prerequisites,
      required this.estimatedMinutes,
      required this.teacher,
      this.isCompleted = false,
      this.isUnlocked = false,
      this.currentSection = 0,
      this.thumbnail,
      final List<String>? tags})
      : _sections = sections,
        _prerequisites = prerequisites,
        _tags = tags;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String subject;
  @override
  final LessonDifficulty difficulty;
  final List<LessonSection> _sections;
  @override
  List<LessonSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<String> _prerequisites;
  @override
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  @override
  final int estimatedMinutes;
  @override
  final String teacher;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  @JsonKey()
  final int currentSection;
  @override
  final String? thumbnail;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Lesson(id: $id, title: $title, description: $description, subject: $subject, difficulty: $difficulty, sections: $sections, prerequisites: $prerequisites, estimatedMinutes: $estimatedMinutes, teacher: $teacher, isCompleted: $isCompleted, isUnlocked: $isUnlocked, currentSection: $currentSection, thumbnail: $thumbnail, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            (identical(other.estimatedMinutes, estimatedMinutes) ||
                other.estimatedMinutes == estimatedMinutes) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.currentSection, currentSection) ||
                other.currentSection == currentSection) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      subject,
      difficulty,
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_prerequisites),
      estimatedMinutes,
      teacher,
      isCompleted,
      isUnlocked,
      currentSection,
      thumbnail,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final String id,
      required final String title,
      required final String description,
      required final String subject,
      required final LessonDifficulty difficulty,
      required final List<LessonSection> sections,
      required final List<String> prerequisites,
      required final int estimatedMinutes,
      required final String teacher,
      final bool isCompleted,
      final bool isUnlocked,
      final int currentSection,
      final String? thumbnail,
      final List<String>? tags}) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get subject;
  @override
  LessonDifficulty get difficulty;
  @override
  List<LessonSection> get sections;
  @override
  List<String> get prerequisites;
  @override
  int get estimatedMinutes;
  @override
  String get teacher;
  @override
  bool get isCompleted;
  @override
  bool get isUnlocked;
  @override
  int get currentSection;
  @override
  String? get thumbnail;
  @override
  List<String>? get tags;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonSection _$LessonSectionFromJson(Map<String, dynamic> json) {
  return _LessonSection.fromJson(json);
}

/// @nodoc
mixin _$LessonSection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  SectionType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  List<QuizQuestion>? get quiz => throw _privateConstructorUsedError;
  Map<String, dynamic>? get interactiveData =>
      throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  /// Serializes this LessonSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonSectionCopyWith<LessonSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonSectionCopyWith<$Res> {
  factory $LessonSectionCopyWith(
          LessonSection value, $Res Function(LessonSection) then) =
      _$LessonSectionCopyWithImpl<$Res, LessonSection>;
  @useResult
  $Res call(
      {String id,
      String title,
      SectionType type,
      String content,
      bool isCompleted,
      List<QuizQuestion>? quiz,
      Map<String, dynamic>? interactiveData,
      String? imageUrl,
      String? videoUrl});
}

/// @nodoc
class _$LessonSectionCopyWithImpl<$Res, $Val extends LessonSection>
    implements $LessonSectionCopyWith<$Res> {
  _$LessonSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? isCompleted = null,
    Object? quiz = freezed,
    Object? interactiveData = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SectionType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>?,
      interactiveData: freezed == interactiveData
          ? _value.interactiveData
          : interactiveData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonSectionImplCopyWith<$Res>
    implements $LessonSectionCopyWith<$Res> {
  factory _$$LessonSectionImplCopyWith(
          _$LessonSectionImpl value, $Res Function(_$LessonSectionImpl) then) =
      __$$LessonSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      SectionType type,
      String content,
      bool isCompleted,
      List<QuizQuestion>? quiz,
      Map<String, dynamic>? interactiveData,
      String? imageUrl,
      String? videoUrl});
}

/// @nodoc
class __$$LessonSectionImplCopyWithImpl<$Res>
    extends _$LessonSectionCopyWithImpl<$Res, _$LessonSectionImpl>
    implements _$$LessonSectionImplCopyWith<$Res> {
  __$$LessonSectionImplCopyWithImpl(
      _$LessonSectionImpl _value, $Res Function(_$LessonSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? isCompleted = null,
    Object? quiz = freezed,
    Object? interactiveData = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_$LessonSectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SectionType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      quiz: freezed == quiz
          ? _value._quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>?,
      interactiveData: freezed == interactiveData
          ? _value._interactiveData
          : interactiveData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonSectionImpl implements _LessonSection {
  const _$LessonSectionImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.content,
      this.isCompleted = false,
      final List<QuizQuestion>? quiz,
      final Map<String, dynamic>? interactiveData,
      this.imageUrl,
      this.videoUrl})
      : _quiz = quiz,
        _interactiveData = interactiveData;

  factory _$LessonSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final SectionType type;
  @override
  final String content;
  @override
  @JsonKey()
  final bool isCompleted;
  final List<QuizQuestion>? _quiz;
  @override
  List<QuizQuestion>? get quiz {
    final value = _quiz;
    if (value == null) return null;
    if (_quiz is EqualUnmodifiableListView) return _quiz;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _interactiveData;
  @override
  Map<String, dynamic>? get interactiveData {
    final value = _interactiveData;
    if (value == null) return null;
    if (_interactiveData is EqualUnmodifiableMapView) return _interactiveData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? imageUrl;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'LessonSection(id: $id, title: $title, type: $type, content: $content, isCompleted: $isCompleted, quiz: $quiz, interactiveData: $interactiveData, imageUrl: $imageUrl, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(other._quiz, _quiz) &&
            const DeepCollectionEquality()
                .equals(other._interactiveData, _interactiveData) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      content,
      isCompleted,
      const DeepCollectionEquality().hash(_quiz),
      const DeepCollectionEquality().hash(_interactiveData),
      imageUrl,
      videoUrl);

  /// Create a copy of LessonSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonSectionImplCopyWith<_$LessonSectionImpl> get copyWith =>
      __$$LessonSectionImplCopyWithImpl<_$LessonSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonSectionImplToJson(
      this,
    );
  }
}

abstract class _LessonSection implements LessonSection {
  const factory _LessonSection(
      {required final String id,
      required final String title,
      required final SectionType type,
      required final String content,
      final bool isCompleted,
      final List<QuizQuestion>? quiz,
      final Map<String, dynamic>? interactiveData,
      final String? imageUrl,
      final String? videoUrl}) = _$LessonSectionImpl;

  factory _LessonSection.fromJson(Map<String, dynamic> json) =
      _$LessonSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  SectionType get type;
  @override
  String get content;
  @override
  bool get isCompleted;
  @override
  List<QuizQuestion>? get quiz;
  @override
  Map<String, dynamic>? get interactiveData;
  @override
  String? get imageUrl;
  @override
  String? get videoUrl;

  /// Create a copy of LessonSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonSectionImplCopyWith<_$LessonSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizQuestion _$QuizQuestionFromJson(Map<String, dynamic> json) {
  return _QuizQuestion.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestion {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  int get correctAnswer => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;
  int? get userAnswer => throw _privateConstructorUsedError;

  /// Serializes this QuizQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizQuestionCopyWith<QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionCopyWith<$Res> {
  factory $QuizQuestionCopyWith(
          QuizQuestion value, $Res Function(QuizQuestion) then) =
      _$QuizQuestionCopyWithImpl<$Res, QuizQuestion>;
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> options,
      int correctAnswer,
      String explanation,
      bool isAnswered,
      int? userAnswer});
}

/// @nodoc
class _$QuizQuestionCopyWithImpl<$Res, $Val extends QuizQuestion>
    implements $QuizQuestionCopyWith<$Res> {
  _$QuizQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = null,
    Object? isAnswered = null,
    Object? userAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionImplCopyWith<$Res>
    implements $QuizQuestionCopyWith<$Res> {
  factory _$$QuizQuestionImplCopyWith(
          _$QuizQuestionImpl value, $Res Function(_$QuizQuestionImpl) then) =
      __$$QuizQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> options,
      int correctAnswer,
      String explanation,
      bool isAnswered,
      int? userAnswer});
}

/// @nodoc
class __$$QuizQuestionImplCopyWithImpl<$Res>
    extends _$QuizQuestionCopyWithImpl<$Res, _$QuizQuestionImpl>
    implements _$$QuizQuestionImplCopyWith<$Res> {
  __$$QuizQuestionImplCopyWithImpl(
      _$QuizQuestionImpl _value, $Res Function(_$QuizQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = null,
    Object? isAnswered = null,
    Object? userAnswer = freezed,
  }) {
    return _then(_$QuizQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizQuestionImpl implements _QuizQuestion {
  const _$QuizQuestionImpl(
      {required this.id,
      required this.question,
      required final List<String> options,
      required this.correctAnswer,
      required this.explanation,
      this.isAnswered = false,
      this.userAnswer})
      : _options = options;

  factory _$QuizQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final int correctAnswer;
  @override
  final String explanation;
  @override
  @JsonKey()
  final bool isAnswered;
  @override
  final int? userAnswer;

  @override
  String toString() {
    return 'QuizQuestion(id: $id, question: $question, options: $options, correctAnswer: $correctAnswer, explanation: $explanation, isAnswered: $isAnswered, userAnswer: $userAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      const DeepCollectionEquality().hash(_options),
      correctAnswer,
      explanation,
      isAnswered,
      userAnswer);

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionImplCopyWith<_$QuizQuestionImpl> get copyWith =>
      __$$QuizQuestionImplCopyWithImpl<_$QuizQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizQuestionImplToJson(
      this,
    );
  }
}

abstract class _QuizQuestion implements QuizQuestion {
  const factory _QuizQuestion(
      {required final String id,
      required final String question,
      required final List<String> options,
      required final int correctAnswer,
      required final String explanation,
      final bool isAnswered,
      final int? userAnswer}) = _$QuizQuestionImpl;

  factory _QuizQuestion.fromJson(Map<String, dynamic> json) =
      _$QuizQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  List<String> get options;
  @override
  int get correctAnswer;
  @override
  String get explanation;
  @override
  bool get isAnswered;
  @override
  int? get userAnswer;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizQuestionImplCopyWith<_$QuizQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonProgress _$LessonProgressFromJson(Map<String, dynamic> json) {
  return _LessonProgress.fromJson(json);
}

/// @nodoc
mixin _$LessonProgress {
  String get lessonId => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  int get completedSections => throw _privateConstructorUsedError;
  int get totalSections => throw _privateConstructorUsedError;
  Map<String, bool> get sectionProgress => throw _privateConstructorUsedError;
  int get quizScore => throw _privateConstructorUsedError;
  int get totalQuizQuestions => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this LessonProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonProgressCopyWith<LessonProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonProgressCopyWith<$Res> {
  factory $LessonProgressCopyWith(
          LessonProgress value, $Res Function(LessonProgress) then) =
      _$LessonProgressCopyWithImpl<$Res, LessonProgress>;
  @useResult
  $Res call(
      {String lessonId,
      DateTime startedAt,
      int completedSections,
      int totalSections,
      Map<String, bool> sectionProgress,
      int quizScore,
      int totalQuizQuestions,
      DateTime? completedAt});
}

/// @nodoc
class _$LessonProgressCopyWithImpl<$Res, $Val extends LessonProgress>
    implements $LessonProgressCopyWith<$Res> {
  _$LessonProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? startedAt = null,
    Object? completedSections = null,
    Object? totalSections = null,
    Object? sectionProgress = null,
    Object? quizScore = null,
    Object? totalQuizQuestions = null,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedSections: null == completedSections
          ? _value.completedSections
          : completedSections // ignore: cast_nullable_to_non_nullable
              as int,
      totalSections: null == totalSections
          ? _value.totalSections
          : totalSections // ignore: cast_nullable_to_non_nullable
              as int,
      sectionProgress: null == sectionProgress
          ? _value.sectionProgress
          : sectionProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      quizScore: null == quizScore
          ? _value.quizScore
          : quizScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuizQuestions: null == totalQuizQuestions
          ? _value.totalQuizQuestions
          : totalQuizQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonProgressImplCopyWith<$Res>
    implements $LessonProgressCopyWith<$Res> {
  factory _$$LessonProgressImplCopyWith(_$LessonProgressImpl value,
          $Res Function(_$LessonProgressImpl) then) =
      __$$LessonProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lessonId,
      DateTime startedAt,
      int completedSections,
      int totalSections,
      Map<String, bool> sectionProgress,
      int quizScore,
      int totalQuizQuestions,
      DateTime? completedAt});
}

/// @nodoc
class __$$LessonProgressImplCopyWithImpl<$Res>
    extends _$LessonProgressCopyWithImpl<$Res, _$LessonProgressImpl>
    implements _$$LessonProgressImplCopyWith<$Res> {
  __$$LessonProgressImplCopyWithImpl(
      _$LessonProgressImpl _value, $Res Function(_$LessonProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? startedAt = null,
    Object? completedSections = null,
    Object? totalSections = null,
    Object? sectionProgress = null,
    Object? quizScore = null,
    Object? totalQuizQuestions = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$LessonProgressImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedSections: null == completedSections
          ? _value.completedSections
          : completedSections // ignore: cast_nullable_to_non_nullable
              as int,
      totalSections: null == totalSections
          ? _value.totalSections
          : totalSections // ignore: cast_nullable_to_non_nullable
              as int,
      sectionProgress: null == sectionProgress
          ? _value._sectionProgress
          : sectionProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      quizScore: null == quizScore
          ? _value.quizScore
          : quizScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuizQuestions: null == totalQuizQuestions
          ? _value.totalQuizQuestions
          : totalQuizQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonProgressImpl implements _LessonProgress {
  const _$LessonProgressImpl(
      {required this.lessonId,
      required this.startedAt,
      required this.completedSections,
      required this.totalSections,
      required final Map<String, bool> sectionProgress,
      this.quizScore = 0,
      this.totalQuizQuestions = 0,
      this.completedAt})
      : _sectionProgress = sectionProgress;

  factory _$LessonProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonProgressImplFromJson(json);

  @override
  final String lessonId;
  @override
  final DateTime startedAt;
  @override
  final int completedSections;
  @override
  final int totalSections;
  final Map<String, bool> _sectionProgress;
  @override
  Map<String, bool> get sectionProgress {
    if (_sectionProgress is EqualUnmodifiableMapView) return _sectionProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sectionProgress);
  }

  @override
  @JsonKey()
  final int quizScore;
  @override
  @JsonKey()
  final int totalQuizQuestions;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'LessonProgress(lessonId: $lessonId, startedAt: $startedAt, completedSections: $completedSections, totalSections: $totalSections, sectionProgress: $sectionProgress, quizScore: $quizScore, totalQuizQuestions: $totalQuizQuestions, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonProgressImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedSections, completedSections) ||
                other.completedSections == completedSections) &&
            (identical(other.totalSections, totalSections) ||
                other.totalSections == totalSections) &&
            const DeepCollectionEquality()
                .equals(other._sectionProgress, _sectionProgress) &&
            (identical(other.quizScore, quizScore) ||
                other.quizScore == quizScore) &&
            (identical(other.totalQuizQuestions, totalQuizQuestions) ||
                other.totalQuizQuestions == totalQuizQuestions) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      startedAt,
      completedSections,
      totalSections,
      const DeepCollectionEquality().hash(_sectionProgress),
      quizScore,
      totalQuizQuestions,
      completedAt);

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonProgressImplCopyWith<_$LessonProgressImpl> get copyWith =>
      __$$LessonProgressImplCopyWithImpl<_$LessonProgressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonProgressImplToJson(
      this,
    );
  }
}

abstract class _LessonProgress implements LessonProgress {
  const factory _LessonProgress(
      {required final String lessonId,
      required final DateTime startedAt,
      required final int completedSections,
      required final int totalSections,
      required final Map<String, bool> sectionProgress,
      final int quizScore,
      final int totalQuizQuestions,
      final DateTime? completedAt}) = _$LessonProgressImpl;

  factory _LessonProgress.fromJson(Map<String, dynamic> json) =
      _$LessonProgressImpl.fromJson;

  @override
  String get lessonId;
  @override
  DateTime get startedAt;
  @override
  int get completedSections;
  @override
  int get totalSections;
  @override
  Map<String, bool> get sectionProgress;
  @override
  int get quizScore;
  @override
  int get totalQuizQuestions;
  @override
  DateTime? get completedAt;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonProgressImplCopyWith<_$LessonProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
