// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'npc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NPC _$NPCFromJson(Map<String, dynamic> json) {
  return _NPC.fromJson(json);
}

/// @nodoc
mixin _$NPC {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  NPCType get type => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  List<String> get availableDialogues => throw _privateConstructorUsedError;
  List<String> get completedDialogues => throw _privateConstructorUsedError;
  List<String> get availableQuests => throw _privateConstructorUsedError;
  int get relationshipLevel => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this NPC to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NPC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NPCCopyWith<NPC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NPCCopyWith<$Res> {
  factory $NPCCopyWith(NPC value, $Res Function(NPC) then) =
      _$NPCCopyWithImpl<$Res, NPC>;
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String description,
      NPCType type,
      String locationId,
      List<String> availableDialogues,
      List<String> completedDialogues,
      List<String> availableQuests,
      int relationshipLevel,
      bool isAvailable});
}

/// @nodoc
class _$NPCCopyWithImpl<$Res, $Val extends NPC> implements $NPCCopyWith<$Res> {
  _$NPCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NPC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? locationId = null,
    Object? availableDialogues = null,
    Object? completedDialogues = null,
    Object? availableQuests = null,
    Object? relationshipLevel = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NPCType,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      availableDialogues: null == availableDialogues
          ? _value.availableDialogues
          : availableDialogues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completedDialogues: null == completedDialogues
          ? _value.completedDialogues
          : completedDialogues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableQuests: null == availableQuests
          ? _value.availableQuests
          : availableQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationshipLevel: null == relationshipLevel
          ? _value.relationshipLevel
          : relationshipLevel // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NPCImplCopyWith<$Res> implements $NPCCopyWith<$Res> {
  factory _$$NPCImplCopyWith(_$NPCImpl value, $Res Function(_$NPCImpl) then) =
      __$$NPCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String description,
      NPCType type,
      String locationId,
      List<String> availableDialogues,
      List<String> completedDialogues,
      List<String> availableQuests,
      int relationshipLevel,
      bool isAvailable});
}

/// @nodoc
class __$$NPCImplCopyWithImpl<$Res> extends _$NPCCopyWithImpl<$Res, _$NPCImpl>
    implements _$$NPCImplCopyWith<$Res> {
  __$$NPCImplCopyWithImpl(_$NPCImpl _value, $Res Function(_$NPCImpl) _then)
      : super(_value, _then);

  /// Create a copy of NPC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? locationId = null,
    Object? availableDialogues = null,
    Object? completedDialogues = null,
    Object? availableQuests = null,
    Object? relationshipLevel = null,
    Object? isAvailable = null,
  }) {
    return _then(_$NPCImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NPCType,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      availableDialogues: null == availableDialogues
          ? _value._availableDialogues
          : availableDialogues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completedDialogues: null == completedDialogues
          ? _value._completedDialogues
          : completedDialogues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableQuests: null == availableQuests
          ? _value._availableQuests
          : availableQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationshipLevel: null == relationshipLevel
          ? _value.relationshipLevel
          : relationshipLevel // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NPCImpl implements _NPC {
  const _$NPCImpl(
      {required this.id,
      required this.name,
      required this.title,
      required this.description,
      required this.type,
      required this.locationId,
      final List<String> availableDialogues = const [],
      final List<String> completedDialogues = const [],
      final List<String> availableQuests = const [],
      this.relationshipLevel = 0,
      this.isAvailable = true})
      : _availableDialogues = availableDialogues,
        _completedDialogues = completedDialogues,
        _availableQuests = availableQuests;

  factory _$NPCImpl.fromJson(Map<String, dynamic> json) =>
      _$$NPCImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String title;
  @override
  final String description;
  @override
  final NPCType type;
  @override
  final String locationId;
  final List<String> _availableDialogues;
  @override
  @JsonKey()
  List<String> get availableDialogues {
    if (_availableDialogues is EqualUnmodifiableListView)
      return _availableDialogues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDialogues);
  }

  final List<String> _completedDialogues;
  @override
  @JsonKey()
  List<String> get completedDialogues {
    if (_completedDialogues is EqualUnmodifiableListView)
      return _completedDialogues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedDialogues);
  }

  final List<String> _availableQuests;
  @override
  @JsonKey()
  List<String> get availableQuests {
    if (_availableQuests is EqualUnmodifiableListView) return _availableQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableQuests);
  }

  @override
  @JsonKey()
  final int relationshipLevel;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'NPC(id: $id, name: $name, title: $title, description: $description, type: $type, locationId: $locationId, availableDialogues: $availableDialogues, completedDialogues: $completedDialogues, availableQuests: $availableQuests, relationshipLevel: $relationshipLevel, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NPCImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality()
                .equals(other._availableDialogues, _availableDialogues) &&
            const DeepCollectionEquality()
                .equals(other._completedDialogues, _completedDialogues) &&
            const DeepCollectionEquality()
                .equals(other._availableQuests, _availableQuests) &&
            (identical(other.relationshipLevel, relationshipLevel) ||
                other.relationshipLevel == relationshipLevel) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      title,
      description,
      type,
      locationId,
      const DeepCollectionEquality().hash(_availableDialogues),
      const DeepCollectionEquality().hash(_completedDialogues),
      const DeepCollectionEquality().hash(_availableQuests),
      relationshipLevel,
      isAvailable);

  /// Create a copy of NPC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NPCImplCopyWith<_$NPCImpl> get copyWith =>
      __$$NPCImplCopyWithImpl<_$NPCImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NPCImplToJson(
      this,
    );
  }
}

abstract class _NPC implements NPC {
  const factory _NPC(
      {required final String id,
      required final String name,
      required final String title,
      required final String description,
      required final NPCType type,
      required final String locationId,
      final List<String> availableDialogues,
      final List<String> completedDialogues,
      final List<String> availableQuests,
      final int relationshipLevel,
      final bool isAvailable}) = _$NPCImpl;

  factory _NPC.fromJson(Map<String, dynamic> json) = _$NPCImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get title;
  @override
  String get description;
  @override
  NPCType get type;
  @override
  String get locationId;
  @override
  List<String> get availableDialogues;
  @override
  List<String> get completedDialogues;
  @override
  List<String> get availableQuests;
  @override
  int get relationshipLevel;
  @override
  bool get isAvailable;

  /// Create a copy of NPC
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NPCImplCopyWith<_$NPCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NPCDialogue _$NPCDialogueFromJson(Map<String, dynamic> json) {
  return _NPCDialogue.fromJson(json);
}

/// @nodoc
mixin _$NPCDialogue {
  String get id => throw _privateConstructorUsedError;
  String get npcId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<DialogueNode> get nodes => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  List<DialogueReward> get rewards => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  EconomicConcept get educationalTopic => throw _privateConstructorUsedError;

  /// Serializes this NPCDialogue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NPCDialogue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NPCDialogueCopyWith<NPCDialogue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NPCDialogueCopyWith<$Res> {
  factory $NPCDialogueCopyWith(
          NPCDialogue value, $Res Function(NPCDialogue) then) =
      _$NPCDialogueCopyWithImpl<$Res, NPCDialogue>;
  @useResult
  $Res call(
      {String id,
      String npcId,
      String title,
      String description,
      List<DialogueNode> nodes,
      List<String> prerequisites,
      List<DialogueReward> rewards,
      bool isCompleted,
      EconomicConcept educationalTopic});
}

/// @nodoc
class _$NPCDialogueCopyWithImpl<$Res, $Val extends NPCDialogue>
    implements $NPCDialogueCopyWith<$Res> {
  _$NPCDialogueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NPCDialogue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? npcId = null,
    Object? title = null,
    Object? description = null,
    Object? nodes = null,
    Object? prerequisites = null,
    Object? rewards = null,
    Object? isCompleted = null,
    Object? educationalTopic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      npcId: null == npcId
          ? _value.npcId
          : npcId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<DialogueNode>,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<DialogueReward>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      educationalTopic: null == educationalTopic
          ? _value.educationalTopic
          : educationalTopic // ignore: cast_nullable_to_non_nullable
              as EconomicConcept,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NPCDialogueImplCopyWith<$Res>
    implements $NPCDialogueCopyWith<$Res> {
  factory _$$NPCDialogueImplCopyWith(
          _$NPCDialogueImpl value, $Res Function(_$NPCDialogueImpl) then) =
      __$$NPCDialogueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String npcId,
      String title,
      String description,
      List<DialogueNode> nodes,
      List<String> prerequisites,
      List<DialogueReward> rewards,
      bool isCompleted,
      EconomicConcept educationalTopic});
}

/// @nodoc
class __$$NPCDialogueImplCopyWithImpl<$Res>
    extends _$NPCDialogueCopyWithImpl<$Res, _$NPCDialogueImpl>
    implements _$$NPCDialogueImplCopyWith<$Res> {
  __$$NPCDialogueImplCopyWithImpl(
      _$NPCDialogueImpl _value, $Res Function(_$NPCDialogueImpl) _then)
      : super(_value, _then);

  /// Create a copy of NPCDialogue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? npcId = null,
    Object? title = null,
    Object? description = null,
    Object? nodes = null,
    Object? prerequisites = null,
    Object? rewards = null,
    Object? isCompleted = null,
    Object? educationalTopic = null,
  }) {
    return _then(_$NPCDialogueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      npcId: null == npcId
          ? _value.npcId
          : npcId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<DialogueNode>,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<DialogueReward>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      educationalTopic: null == educationalTopic
          ? _value.educationalTopic
          : educationalTopic // ignore: cast_nullable_to_non_nullable
              as EconomicConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NPCDialogueImpl implements _NPCDialogue {
  const _$NPCDialogueImpl(
      {required this.id,
      required this.npcId,
      required this.title,
      required this.description,
      required final List<DialogueNode> nodes,
      final List<String> prerequisites = const [],
      final List<DialogueReward> rewards = const [],
      this.isCompleted = false,
      required this.educationalTopic})
      : _nodes = nodes,
        _prerequisites = prerequisites,
        _rewards = rewards;

  factory _$NPCDialogueImpl.fromJson(Map<String, dynamic> json) =>
      _$$NPCDialogueImplFromJson(json);

  @override
  final String id;
  @override
  final String npcId;
  @override
  final String title;
  @override
  final String description;
  final List<DialogueNode> _nodes;
  @override
  List<DialogueNode> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  final List<String> _prerequisites;
  @override
  @JsonKey()
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<DialogueReward> _rewards;
  @override
  @JsonKey()
  List<DialogueReward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final EconomicConcept educationalTopic;

  @override
  String toString() {
    return 'NPCDialogue(id: $id, npcId: $npcId, title: $title, description: $description, nodes: $nodes, prerequisites: $prerequisites, rewards: $rewards, isCompleted: $isCompleted, educationalTopic: $educationalTopic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NPCDialogueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.npcId, npcId) || other.npcId == npcId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.educationalTopic, educationalTopic) ||
                other.educationalTopic == educationalTopic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      npcId,
      title,
      description,
      const DeepCollectionEquality().hash(_nodes),
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_rewards),
      isCompleted,
      educationalTopic);

  /// Create a copy of NPCDialogue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NPCDialogueImplCopyWith<_$NPCDialogueImpl> get copyWith =>
      __$$NPCDialogueImplCopyWithImpl<_$NPCDialogueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NPCDialogueImplToJson(
      this,
    );
  }
}

abstract class _NPCDialogue implements NPCDialogue {
  const factory _NPCDialogue(
      {required final String id,
      required final String npcId,
      required final String title,
      required final String description,
      required final List<DialogueNode> nodes,
      final List<String> prerequisites,
      final List<DialogueReward> rewards,
      final bool isCompleted,
      required final EconomicConcept educationalTopic}) = _$NPCDialogueImpl;

  factory _NPCDialogue.fromJson(Map<String, dynamic> json) =
      _$NPCDialogueImpl.fromJson;

  @override
  String get id;
  @override
  String get npcId;
  @override
  String get title;
  @override
  String get description;
  @override
  List<DialogueNode> get nodes;
  @override
  List<String> get prerequisites;
  @override
  List<DialogueReward> get rewards;
  @override
  bool get isCompleted;
  @override
  EconomicConcept get educationalTopic;

  /// Create a copy of NPCDialogue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NPCDialogueImplCopyWith<_$NPCDialogueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueNode _$DialogueNodeFromJson(Map<String, dynamic> json) {
  return _DialogueNode.fromJson(json);
}

/// @nodoc
mixin _$DialogueNode {
  String get id => throw _privateConstructorUsedError;
  String get speaker => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<DialogueChoice> get choices => throw _privateConstructorUsedError;
  String? get nextNodeId => throw _privateConstructorUsedError;
  bool get isEndNode => throw _privateConstructorUsedError;

  /// Serializes this DialogueNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueNodeCopyWith<DialogueNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueNodeCopyWith<$Res> {
  factory $DialogueNodeCopyWith(
          DialogueNode value, $Res Function(DialogueNode) then) =
      _$DialogueNodeCopyWithImpl<$Res, DialogueNode>;
  @useResult
  $Res call(
      {String id,
      String speaker,
      String text,
      List<DialogueChoice> choices,
      String? nextNodeId,
      bool isEndNode});
}

/// @nodoc
class _$DialogueNodeCopyWithImpl<$Res, $Val extends DialogueNode>
    implements $DialogueNodeCopyWith<$Res> {
  _$DialogueNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speaker = null,
    Object? text = null,
    Object? choices = null,
    Object? nextNodeId = freezed,
    Object? isEndNode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<DialogueChoice>,
      nextNodeId: freezed == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isEndNode: null == isEndNode
          ? _value.isEndNode
          : isEndNode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueNodeImplCopyWith<$Res>
    implements $DialogueNodeCopyWith<$Res> {
  factory _$$DialogueNodeImplCopyWith(
          _$DialogueNodeImpl value, $Res Function(_$DialogueNodeImpl) then) =
      __$$DialogueNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String speaker,
      String text,
      List<DialogueChoice> choices,
      String? nextNodeId,
      bool isEndNode});
}

/// @nodoc
class __$$DialogueNodeImplCopyWithImpl<$Res>
    extends _$DialogueNodeCopyWithImpl<$Res, _$DialogueNodeImpl>
    implements _$$DialogueNodeImplCopyWith<$Res> {
  __$$DialogueNodeImplCopyWithImpl(
      _$DialogueNodeImpl _value, $Res Function(_$DialogueNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speaker = null,
    Object? text = null,
    Object? choices = null,
    Object? nextNodeId = freezed,
    Object? isEndNode = null,
  }) {
    return _then(_$DialogueNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<DialogueChoice>,
      nextNodeId: freezed == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isEndNode: null == isEndNode
          ? _value.isEndNode
          : isEndNode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueNodeImpl implements _DialogueNode {
  const _$DialogueNodeImpl(
      {required this.id,
      required this.speaker,
      required this.text,
      final List<DialogueChoice> choices = const [],
      this.nextNodeId,
      this.isEndNode = false})
      : _choices = choices;

  factory _$DialogueNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueNodeImplFromJson(json);

  @override
  final String id;
  @override
  final String speaker;
  @override
  final String text;
  final List<DialogueChoice> _choices;
  @override
  @JsonKey()
  List<DialogueChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String? nextNodeId;
  @override
  @JsonKey()
  final bool isEndNode;

  @override
  String toString() {
    return 'DialogueNode(id: $id, speaker: $speaker, text: $text, choices: $choices, nextNodeId: $nextNodeId, isEndNode: $isEndNode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.nextNodeId, nextNodeId) ||
                other.nextNodeId == nextNodeId) &&
            (identical(other.isEndNode, isEndNode) ||
                other.isEndNode == isEndNode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, speaker, text,
      const DeepCollectionEquality().hash(_choices), nextNodeId, isEndNode);

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueNodeImplCopyWith<_$DialogueNodeImpl> get copyWith =>
      __$$DialogueNodeImplCopyWithImpl<_$DialogueNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueNodeImplToJson(
      this,
    );
  }
}

abstract class _DialogueNode implements DialogueNode {
  const factory _DialogueNode(
      {required final String id,
      required final String speaker,
      required final String text,
      final List<DialogueChoice> choices,
      final String? nextNodeId,
      final bool isEndNode}) = _$DialogueNodeImpl;

  factory _DialogueNode.fromJson(Map<String, dynamic> json) =
      _$DialogueNodeImpl.fromJson;

  @override
  String get id;
  @override
  String get speaker;
  @override
  String get text;
  @override
  List<DialogueChoice> get choices;
  @override
  String? get nextNodeId;
  @override
  bool get isEndNode;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueNodeImplCopyWith<_$DialogueNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueChoice _$DialogueChoiceFromJson(Map<String, dynamic> json) {
  return _DialogueChoice.fromJson(json);
}

/// @nodoc
mixin _$DialogueChoice {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get nextNodeId => throw _privateConstructorUsedError;
  List<DialogueEffect> get effects => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;

  /// Serializes this DialogueChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueChoiceCopyWith<DialogueChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueChoiceCopyWith<$Res> {
  factory $DialogueChoiceCopyWith(
          DialogueChoice value, $Res Function(DialogueChoice) then) =
      _$DialogueChoiceCopyWithImpl<$Res, DialogueChoice>;
  @useResult
  $Res call(
      {String id,
      String text,
      String nextNodeId,
      List<DialogueEffect> effects,
      List<String> requirements});
}

/// @nodoc
class _$DialogueChoiceCopyWithImpl<$Res, $Val extends DialogueChoice>
    implements $DialogueChoiceCopyWith<$Res> {
  _$DialogueChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? nextNodeId = null,
    Object? effects = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextNodeId: null == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String,
      effects: null == effects
          ? _value.effects
          : effects // ignore: cast_nullable_to_non_nullable
              as List<DialogueEffect>,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueChoiceImplCopyWith<$Res>
    implements $DialogueChoiceCopyWith<$Res> {
  factory _$$DialogueChoiceImplCopyWith(_$DialogueChoiceImpl value,
          $Res Function(_$DialogueChoiceImpl) then) =
      __$$DialogueChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String nextNodeId,
      List<DialogueEffect> effects,
      List<String> requirements});
}

/// @nodoc
class __$$DialogueChoiceImplCopyWithImpl<$Res>
    extends _$DialogueChoiceCopyWithImpl<$Res, _$DialogueChoiceImpl>
    implements _$$DialogueChoiceImplCopyWith<$Res> {
  __$$DialogueChoiceImplCopyWithImpl(
      _$DialogueChoiceImpl _value, $Res Function(_$DialogueChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? nextNodeId = null,
    Object? effects = null,
    Object? requirements = null,
  }) {
    return _then(_$DialogueChoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextNodeId: null == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String,
      effects: null == effects
          ? _value._effects
          : effects // ignore: cast_nullable_to_non_nullable
              as List<DialogueEffect>,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueChoiceImpl implements _DialogueChoice {
  const _$DialogueChoiceImpl(
      {required this.id,
      required this.text,
      required this.nextNodeId,
      final List<DialogueEffect> effects = const [],
      final List<String> requirements = const []})
      : _effects = effects,
        _requirements = requirements;

  factory _$DialogueChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueChoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String nextNodeId;
  final List<DialogueEffect> _effects;
  @override
  @JsonKey()
  List<DialogueEffect> get effects {
    if (_effects is EqualUnmodifiableListView) return _effects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_effects);
  }

  final List<String> _requirements;
  @override
  @JsonKey()
  List<String> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  String toString() {
    return 'DialogueChoice(id: $id, text: $text, nextNodeId: $nextNodeId, effects: $effects, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.nextNodeId, nextNodeId) ||
                other.nextNodeId == nextNodeId) &&
            const DeepCollectionEquality().equals(other._effects, _effects) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      nextNodeId,
      const DeepCollectionEquality().hash(_effects),
      const DeepCollectionEquality().hash(_requirements));

  /// Create a copy of DialogueChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueChoiceImplCopyWith<_$DialogueChoiceImpl> get copyWith =>
      __$$DialogueChoiceImplCopyWithImpl<_$DialogueChoiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueChoiceImplToJson(
      this,
    );
  }
}

abstract class _DialogueChoice implements DialogueChoice {
  const factory _DialogueChoice(
      {required final String id,
      required final String text,
      required final String nextNodeId,
      final List<DialogueEffect> effects,
      final List<String> requirements}) = _$DialogueChoiceImpl;

  factory _DialogueChoice.fromJson(Map<String, dynamic> json) =
      _$DialogueChoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get nextNodeId;
  @override
  List<DialogueEffect> get effects;
  @override
  List<String> get requirements;

  /// Create a copy of DialogueChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueChoiceImplCopyWith<_$DialogueChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueEffect _$DialogueEffectFromJson(Map<String, dynamic> json) {
  return _DialogueEffect.fromJson(json);
}

/// @nodoc
mixin _$DialogueEffect {
  EffectType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get targetId => throw _privateConstructorUsedError;

  /// Serializes this DialogueEffect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueEffectCopyWith<DialogueEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueEffectCopyWith<$Res> {
  factory $DialogueEffectCopyWith(
          DialogueEffect value, $Res Function(DialogueEffect) then) =
      _$DialogueEffectCopyWithImpl<$Res, DialogueEffect>;
  @useResult
  $Res call({EffectType type, int value, String? itemId, String? targetId});
}

/// @nodoc
class _$DialogueEffectCopyWithImpl<$Res, $Val extends DialogueEffect>
    implements $DialogueEffectCopyWith<$Res> {
  _$DialogueEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
    Object? targetId = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EffectType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueEffectImplCopyWith<$Res>
    implements $DialogueEffectCopyWith<$Res> {
  factory _$$DialogueEffectImplCopyWith(_$DialogueEffectImpl value,
          $Res Function(_$DialogueEffectImpl) then) =
      __$$DialogueEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EffectType type, int value, String? itemId, String? targetId});
}

/// @nodoc
class __$$DialogueEffectImplCopyWithImpl<$Res>
    extends _$DialogueEffectCopyWithImpl<$Res, _$DialogueEffectImpl>
    implements _$$DialogueEffectImplCopyWith<$Res> {
  __$$DialogueEffectImplCopyWithImpl(
      _$DialogueEffectImpl _value, $Res Function(_$DialogueEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
    Object? targetId = freezed,
  }) {
    return _then(_$DialogueEffectImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EffectType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueEffectImpl implements _DialogueEffect {
  const _$DialogueEffectImpl(
      {required this.type, required this.value, this.itemId, this.targetId});

  factory _$DialogueEffectImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueEffectImplFromJson(json);

  @override
  final EffectType type;
  @override
  final int value;
  @override
  final String? itemId;
  @override
  final String? targetId;

  @override
  String toString() {
    return 'DialogueEffect(type: $type, value: $value, itemId: $itemId, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueEffectImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, itemId, targetId);

  /// Create a copy of DialogueEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueEffectImplCopyWith<_$DialogueEffectImpl> get copyWith =>
      __$$DialogueEffectImplCopyWithImpl<_$DialogueEffectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueEffectImplToJson(
      this,
    );
  }
}

abstract class _DialogueEffect implements DialogueEffect {
  const factory _DialogueEffect(
      {required final EffectType type,
      required final int value,
      final String? itemId,
      final String? targetId}) = _$DialogueEffectImpl;

  factory _DialogueEffect.fromJson(Map<String, dynamic> json) =
      _$DialogueEffectImpl.fromJson;

  @override
  EffectType get type;
  @override
  int get value;
  @override
  String? get itemId;
  @override
  String? get targetId;

  /// Create a copy of DialogueEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueEffectImplCopyWith<_$DialogueEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueReward _$DialogueRewardFromJson(Map<String, dynamic> json) {
  return _DialogueReward.fromJson(json);
}

/// @nodoc
mixin _$DialogueReward {
  RewardType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this DialogueReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueRewardCopyWith<DialogueReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueRewardCopyWith<$Res> {
  factory $DialogueRewardCopyWith(
          DialogueReward value, $Res Function(DialogueReward) then) =
      _$DialogueRewardCopyWithImpl<$Res, DialogueReward>;
  @useResult
  $Res call({RewardType type, int value, String? itemId, String? description});
}

/// @nodoc
class _$DialogueRewardCopyWithImpl<$Res, $Val extends DialogueReward>
    implements $DialogueRewardCopyWith<$Res> {
  _$DialogueRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueRewardImplCopyWith<$Res>
    implements $DialogueRewardCopyWith<$Res> {
  factory _$$DialogueRewardImplCopyWith(_$DialogueRewardImpl value,
          $Res Function(_$DialogueRewardImpl) then) =
      __$$DialogueRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardType type, int value, String? itemId, String? description});
}

/// @nodoc
class __$$DialogueRewardImplCopyWithImpl<$Res>
    extends _$DialogueRewardCopyWithImpl<$Res, _$DialogueRewardImpl>
    implements _$$DialogueRewardImplCopyWith<$Res> {
  __$$DialogueRewardImplCopyWithImpl(
      _$DialogueRewardImpl _value, $Res Function(_$DialogueRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? itemId = freezed,
    Object? description = freezed,
  }) {
    return _then(_$DialogueRewardImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueRewardImpl implements _DialogueReward {
  const _$DialogueRewardImpl(
      {required this.type, required this.value, this.itemId, this.description});

  factory _$DialogueRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueRewardImplFromJson(json);

  @override
  final RewardType type;
  @override
  final int value;
  @override
  final String? itemId;
  @override
  final String? description;

  @override
  String toString() {
    return 'DialogueReward(type: $type, value: $value, itemId: $itemId, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, value, itemId, description);

  /// Create a copy of DialogueReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueRewardImplCopyWith<_$DialogueRewardImpl> get copyWith =>
      __$$DialogueRewardImplCopyWithImpl<_$DialogueRewardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueRewardImplToJson(
      this,
    );
  }
}

abstract class _DialogueReward implements DialogueReward {
  const factory _DialogueReward(
      {required final RewardType type,
      required final int value,
      final String? itemId,
      final String? description}) = _$DialogueRewardImpl;

  factory _DialogueReward.fromJson(Map<String, dynamic> json) =
      _$DialogueRewardImpl.fromJson;

  @override
  RewardType get type;
  @override
  int get value;
  @override
  String? get itemId;
  @override
  String? get description;

  /// Create a copy of DialogueReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueRewardImplCopyWith<_$DialogueRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
