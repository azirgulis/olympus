import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement.freezed.dart';
part 'achievement.g.dart';

@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required String title,
    required String description,
    required String icon, // Icon name or emoji
    required AchievementCategory category,
    required int rewardDrachmae,
    @Default(false) bool isUnlocked,
    DateTime? unlockedAt,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
}

enum AchievementCategory {
  @JsonValue('wealth')
  wealth,
  @JsonValue('trading')
  trading,
  @JsonValue('exploration')
  exploration,
  @JsonValue('reputation')
  reputation,
  @JsonValue('quests')
  quests,
  @JsonValue('learning')
  learning,
}
