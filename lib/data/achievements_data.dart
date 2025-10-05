import '../models/achievement.dart';

class AchievementsData {
  static List<Achievement> getAllAchievements() {
    return [
      // Wealth achievements
      const Achievement(
        id: 'first_coin',
        title: 'First Coin',
        description: 'Earn your first drachma',
        icon: '🪙',
        category: AchievementCategory.wealth,
        rewardDrachmae: 10,
      ),
      const Achievement(
        id: 'hundred_drachmae',
        title: 'Hundred Drachmae',
        description: 'Accumulate 100 drachmae',
        icon: '💰',
        category: AchievementCategory.wealth,
        rewardDrachmae: 25,
      ),
      const Achievement(
        id: 'wealthy_merchant',
        title: 'Wealthy Merchant',
        description: 'Accumulate 500 drachmae',
        icon: '💎',
        category: AchievementCategory.wealth,
        rewardDrachmae: 100,
      ),
      const Achievement(
        id: 'economic_master',
        title: 'Economic Master',
        description: 'Accumulate 1000 drachmae',
        icon: '👑',
        category: AchievementCategory.wealth,
        rewardDrachmae: 250,
      ),

      // Trading achievements
      const Achievement(
        id: 'first_trade',
        title: 'First Trade',
        description: 'Complete your first trade',
        icon: '🤝',
        category: AchievementCategory.trading,
        rewardDrachmae: 15,
      ),
      const Achievement(
        id: 'savvy_trader',
        title: 'Savvy Trader',
        description: 'Complete 10 profitable trades',
        icon: '📈',
        category: AchievementCategory.trading,
        rewardDrachmae: 50,
      ),
      const Achievement(
        id: 'master_negotiator',
        title: 'Master Negotiator',
        description: 'Get the best price in 5 different shops',
        icon: '🎯',
        category: AchievementCategory.trading,
        rewardDrachmae: 75,
      ),

      // Exploration achievements
      const Achievement(
        id: 'first_steps',
        title: 'First Steps',
        description: 'Leave Athens for the first time',
        icon: '👣',
        category: AchievementCategory.exploration,
        rewardDrachmae: 20,
      ),
      const Achievement(
        id: 'world_traveler',
        title: 'World Traveler',
        description: 'Visit all 6 cities in Greece',
        icon: '🗺️',
        category: AchievementCategory.exploration,
        rewardDrachmae: 100,
      ),
      const Achievement(
        id: 'road_warrior',
        title: 'Road Warrior',
        description: 'Travel 100 times between cities',
        icon: '🏃',
        category: AchievementCategory.exploration,
        rewardDrachmae: 150,
      ),

      // Reputation achievements
      const Achievement(
        id: 'first_friend',
        title: 'First Friend',
        description: 'Reach 60 reputation with any faction',
        icon: '😊',
        category: AchievementCategory.reputation,
        rewardDrachmae: 30,
      ),
      const Achievement(
        id: 'well_liked',
        title: 'Well Liked',
        description: 'Reach 70 reputation with 3 factions',
        icon: '⭐',
        category: AchievementCategory.reputation,
        rewardDrachmae: 75,
      ),
      const Achievement(
        id: 'legendary_hero',
        title: 'Legendary Hero',
        description: 'Reach 90 reputation with all cities',
        icon: '🏆',
        category: AchievementCategory.reputation,
        rewardDrachmae: 200,
      ),
      const Achievement(
        id: 'divine_favor',
        title: 'Divine Favor',
        description: 'Reach 80 reputation with all gods',
        icon: '⚡',
        category: AchievementCategory.reputation,
        rewardDrachmae: 250,
      ),

      // Quest achievements
      const Achievement(
        id: 'quest_beginner',
        title: 'Quest Beginner',
        description: 'Complete your first quest',
        icon: '📜',
        category: AchievementCategory.quests,
        rewardDrachmae: 25,
      ),
      const Achievement(
        id: 'quest_veteran',
        title: 'Quest Veteran',
        description: 'Complete 5 main quests',
        icon: '🎖️',
        category: AchievementCategory.quests,
        rewardDrachmae: 100,
      ),
      const Achievement(
        id: 'quest_master',
        title: 'Quest Master',
        description: 'Complete all 10 main quests',
        icon: '🌟',
        category: AchievementCategory.quests,
        rewardDrachmae: 300,
      ),

      // Learning achievements
      const Achievement(
        id: 'economics_student',
        title: 'Economics Student',
        description: 'Learn your first economic concept',
        icon: '📚',
        category: AchievementCategory.learning,
        rewardDrachmae: 20,
      ),
      const Achievement(
        id: 'economics_scholar',
        title: 'Economics Scholar',
        description: 'Learn 5 economic concepts through quests',
        icon: '🎓',
        category: AchievementCategory.learning,
        rewardDrachmae: 100,
      ),
      const Achievement(
        id: 'economics_professor',
        title: 'Economics Professor',
        description: 'Learn all 10 economic concepts',
        icon: '👨‍🏫',
        category: AchievementCategory.learning,
        rewardDrachmae: 250,
      ),
    ];
  }
}
