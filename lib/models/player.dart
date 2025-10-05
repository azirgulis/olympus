import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const Player._();

  const factory Player({
    @Default('') String name,
    @Default(CharacterClass.merchant) CharacterClass characterClass,
    @Default(100) int health,
    @Default(100) int energy,
    @Default(100) int drachmae,
    @Default(1) int level,
    @Default(0) int experience,
    @Default({}) Map<String, int> reputation,
    @Default({}) Map<String, int> skills,
    @Default('athens') String currentLocation,
    @Default([]) List<String> completedQuests,
    @Default([]) List<String> activeQuests,
    @Default({}) Map<String, bool> storyFlags,
    @Default({}) Map<String, int> inventory, // itemId -> quantity
    @Default({}) Map<String, String> equippedItems, // slot -> itemId (weapon, armor, accessory)
    @Default([]) List<String> unlockedAchievements, // achievement IDs
  }) = _Player;

  factory Player.fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}

enum CharacterClass {
  @JsonValue('merchant')
  merchant,
  @JsonValue('scholar')
  scholar,
  @JsonValue('warrior')
  warrior,
}