// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String get name => throw _privateConstructorUsedError;
  CharacterClass get characterClass => throw _privateConstructorUsedError;
  int get health => throw _privateConstructorUsedError;
  int get energy => throw _privateConstructorUsedError;
  int get drachmae => throw _privateConstructorUsedError;
  Map<String, int> get reputation => throw _privateConstructorUsedError;
  Map<String, int> get skills => throw _privateConstructorUsedError;
  String get currentLocation => throw _privateConstructorUsedError;
  List<String> get completedQuests => throw _privateConstructorUsedError;
  List<String> get activeQuests => throw _privateConstructorUsedError;
  Map<String, bool> get storyFlags => throw _privateConstructorUsedError;

  /// Serializes this Player to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {String name,
      CharacterClass characterClass,
      int health,
      int energy,
      int drachmae,
      Map<String, int> reputation,
      Map<String, int> skills,
      String currentLocation,
      List<String> completedQuests,
      List<String> activeQuests,
      Map<String, bool> storyFlags});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characterClass = null,
    Object? health = null,
    Object? energy = null,
    Object? drachmae = null,
    Object? reputation = null,
    Object? skills = null,
    Object? currentLocation = null,
    Object? completedQuests = null,
    Object? activeQuests = null,
    Object? storyFlags = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characterClass: null == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as CharacterClass,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      drachmae: null == drachmae
          ? _value.drachmae
          : drachmae // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
      completedQuests: null == completedQuests
          ? _value.completedQuests
          : completedQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activeQuests: null == activeQuests
          ? _value.activeQuests
          : activeQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storyFlags: null == storyFlags
          ? _value.storyFlags
          : storyFlags // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      CharacterClass characterClass,
      int health,
      int energy,
      int drachmae,
      Map<String, int> reputation,
      Map<String, int> skills,
      String currentLocation,
      List<String> completedQuests,
      List<String> activeQuests,
      Map<String, bool> storyFlags});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characterClass = null,
    Object? health = null,
    Object? energy = null,
    Object? drachmae = null,
    Object? reputation = null,
    Object? skills = null,
    Object? currentLocation = null,
    Object? completedQuests = null,
    Object? activeQuests = null,
    Object? storyFlags = null,
  }) {
    return _then(_$PlayerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characterClass: null == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as CharacterClass,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      drachmae: null == drachmae
          ? _value.drachmae
          : drachmae // ignore: cast_nullable_to_non_nullable
              as int,
      reputation: null == reputation
          ? _value._reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
      completedQuests: null == completedQuests
          ? _value._completedQuests
          : completedQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activeQuests: null == activeQuests
          ? _value._activeQuests
          : activeQuests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storyFlags: null == storyFlags
          ? _value._storyFlags
          : storyFlags // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {this.name = '',
      this.characterClass = CharacterClass.merchant,
      this.health = 100,
      this.energy = 100,
      this.drachmae = 100,
      final Map<String, int> reputation = const {},
      final Map<String, int> skills = const {},
      this.currentLocation = 'athens',
      final List<String> completedQuests = const [],
      final List<String> activeQuests = const [],
      final Map<String, bool> storyFlags = const {}})
      : _reputation = reputation,
        _skills = skills,
        _completedQuests = completedQuests,
        _activeQuests = activeQuests,
        _storyFlags = storyFlags;

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final CharacterClass characterClass;
  @override
  @JsonKey()
  final int health;
  @override
  @JsonKey()
  final int energy;
  @override
  @JsonKey()
  final int drachmae;
  final Map<String, int> _reputation;
  @override
  @JsonKey()
  Map<String, int> get reputation {
    if (_reputation is EqualUnmodifiableMapView) return _reputation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reputation);
  }

  final Map<String, int> _skills;
  @override
  @JsonKey()
  Map<String, int> get skills {
    if (_skills is EqualUnmodifiableMapView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skills);
  }

  @override
  @JsonKey()
  final String currentLocation;
  final List<String> _completedQuests;
  @override
  @JsonKey()
  List<String> get completedQuests {
    if (_completedQuests is EqualUnmodifiableListView) return _completedQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedQuests);
  }

  final List<String> _activeQuests;
  @override
  @JsonKey()
  List<String> get activeQuests {
    if (_activeQuests is EqualUnmodifiableListView) return _activeQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeQuests);
  }

  final Map<String, bool> _storyFlags;
  @override
  @JsonKey()
  Map<String, bool> get storyFlags {
    if (_storyFlags is EqualUnmodifiableMapView) return _storyFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_storyFlags);
  }

  @override
  String toString() {
    return 'Player(name: $name, characterClass: $characterClass, health: $health, energy: $energy, drachmae: $drachmae, reputation: $reputation, skills: $skills, currentLocation: $currentLocation, completedQuests: $completedQuests, activeQuests: $activeQuests, storyFlags: $storyFlags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.characterClass, characterClass) ||
                other.characterClass == characterClass) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.energy, energy) || other.energy == energy) &&
            (identical(other.drachmae, drachmae) ||
                other.drachmae == drachmae) &&
            const DeepCollectionEquality()
                .equals(other._reputation, _reputation) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            const DeepCollectionEquality()
                .equals(other._completedQuests, _completedQuests) &&
            const DeepCollectionEquality()
                .equals(other._activeQuests, _activeQuests) &&
            const DeepCollectionEquality()
                .equals(other._storyFlags, _storyFlags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      characterClass,
      health,
      energy,
      drachmae,
      const DeepCollectionEquality().hash(_reputation),
      const DeepCollectionEquality().hash(_skills),
      currentLocation,
      const DeepCollectionEquality().hash(_completedQuests),
      const DeepCollectionEquality().hash(_activeQuests),
      const DeepCollectionEquality().hash(_storyFlags));

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {final String name,
      final CharacterClass characterClass,
      final int health,
      final int energy,
      final int drachmae,
      final Map<String, int> reputation,
      final Map<String, int> skills,
      final String currentLocation,
      final List<String> completedQuests,
      final List<String> activeQuests,
      final Map<String, bool> storyFlags}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  String get name;
  @override
  CharacterClass get characterClass;
  @override
  int get health;
  @override
  int get energy;
  @override
  int get drachmae;
  @override
  Map<String, int> get reputation;
  @override
  Map<String, int> get skills;
  @override
  String get currentLocation;
  @override
  List<String> get completedQuests;
  @override
  List<String> get activeQuests;
  @override
  Map<String, bool> get storyFlags;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
