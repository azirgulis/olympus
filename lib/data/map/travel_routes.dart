import '../../models/game_map.dart';

class TravelRoutesData {
  static List<TravelRoute> getAllRoutes() {
    return [
      // Athens connections
      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'piraeus',
        distance: 12,
        baseTravelTime: 30, // 30 minutes
        cost: 5,
        difficulty: RouteDifficulty.easy,
        possibleEncounters: ['merchant', 'traveler'],
        description: 'Short journey to the bustling port of Athens',
      ),

      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'marathon',
        distance: 42,
        baseTravelTime: 180, // 3 hours
        cost: 20,
        difficulty: RouteDifficulty.moderate,
        possibleEncounters: ['soldier', 'historian', 'bandit'],
        description: 'Historic route to the legendary battlefield',
      ),

      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'corinth',
        distance: 84,
        baseTravelTime: 360, // 6 hours
        cost: 50,
        difficulty: RouteDifficulty.moderate,
        possibleEncounters: ['merchant', 'bandit', 'tradesman'],
        description: 'Main route to the wealthy trading city',
      ),

      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'thebes',
        distance: 50,
        baseTravelTime: 240, // 4 hours
        cost: 30,
        difficulty: RouteDifficulty.moderate,
        possibleEncounters: ['soldier', 'messenger', 'bandit'],
        description: 'Northern route through Boeotian plains',
      ),

      // Naval routes (require ship)
      const TravelRoute(
        fromLocationId: 'piraeus',
        toLocationId: 'aegina',
        distance: 27,
        baseTravelTime: 120, // 2 hours
        cost: 25,
        difficulty: RouteDifficulty.easy,
        possibleEncounters: ['pirate', 'merchant_ship', 'fisherman'],
        requiresShip: true,
        description: 'Short sea journey to the prosperous island',
      ),

      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'sparta',
        distance: 150,
        baseTravelTime: 720, // 12 hours
        cost: 100,
        difficulty: RouteDifficulty.hard,
        possibleEncounters: ['bandit', 'spartan_patrol', 'helot'],
        minimumLevel: 5,
        description: 'Dangerous mountain path to the warrior city',
      ),

      // Long distance routes
      const TravelRoute(
        fromLocationId: 'athens',
        toLocationId: 'delphi',
        distance: 120,
        baseTravelTime: 540, // 9 hours
        cost: 75,
        difficulty: RouteDifficulty.hard,
        possibleEncounters: ['pilgrim', 'oracle_seeker', 'mountain_bandit'],
        description: 'Sacred pilgrimage route through mountain passes',
      ),

      const TravelRoute(
        fromLocationId: 'corinth',
        toLocationId: 'olympia',
        distance: 90,
        baseTravelTime: 420, // 7 hours
        cost: 60,
        difficulty: RouteDifficulty.moderate,
        possibleEncounters: ['athlete', 'trainer', 'competitor'],
        description: 'Route to the sacred Olympic grounds',
      ),

      // Dangerous sea routes
      const TravelRoute(
        fromLocationId: 'piraeus',
        toLocationId: 'crete',
        distance: 300,
        baseTravelTime: 1440, // 24 hours
        cost: 200,
        difficulty: RouteDifficulty.dangerous,
        possibleEncounters: ['storm', 'sea_monster', 'pirate_fleet'],
        requiresShip: true,
        minimumLevel: 8,
        requiredItems: ['provisions', 'navigation_tools'],
        description: 'Perilous journey across the wine-dark sea',
      ),

      const TravelRoute(
        fromLocationId: 'aegina',
        toLocationId: 'rhodes',
        distance: 450,
        baseTravelTime: 2160, // 36 hours
        cost: 300,
        difficulty: RouteDifficulty.legendary,
        possibleEncounters: ['storm', 'sea_monster', 'eastern_traders'],
        requiresShip: true,
        minimumLevel: 12,
        requiredItems: ['provisions', 'navigation_tools', 'experienced_crew'],
        description: 'Epic voyage to the distant island of the Colossus',
      ),
    ];
  }

  static List<TravelRoute> getRoutesFrom(String locationId) {
    return getAllRoutes()
        .where((route) => route.fromLocationId == locationId)
        .toList();
  }

  static List<TravelRoute> getRoutesTo(String locationId) {
    return getAllRoutes()
        .where((route) => route.toLocationId == locationId)
        .toList();
  }

  static TravelRoute? getRoute(String fromId, String toId) {
    try {
      return getAllRoutes().firstWhere(
        (route) => route.fromLocationId == fromId && route.toLocationId == toId,
      );
    } catch (e) {
      // Try reverse route
      try {
        final reverseRoute = getAllRoutes().firstWhere(
          (route) => route.fromLocationId == toId && route.toLocationId == fromId,
        );
        // Return reversed route
        return reverseRoute.copyWith(
          fromLocationId: fromId,
          toLocationId: toId,
        );
      } catch (e) {
        return null;
      }
    }
  }

  static List<TravelRoute> getAvailableRoutes(String fromLocationId, {
    int playerLevel = 1,
    List<String> playerItems = const [],
    bool hasShip = false,
  }) {
    return getRoutesFrom(fromLocationId).where((route) {
      // Check level requirement
      if (route.minimumLevel > playerLevel) return false;

      // Check ship requirement
      if (route.requiresShip && !hasShip) return false;

      // Check required items
      for (final requiredItem in route.requiredItems) {
        if (!playerItems.contains(requiredItem)) return false;
      }

      return true;
    }).toList();
  }

  static int calculateTravelCost(TravelRoute route, {
    int playerLevel = 1,
    bool hasDiscounts = false,
  }) {
    int baseCost = route.cost;

    // Apply difficulty multiplier
    switch (route.difficulty) {
      case RouteDifficulty.easy:
        baseCost = (baseCost * 0.8).round();
        break;
      case RouteDifficulty.moderate:
        break; // No change
      case RouteDifficulty.hard:
        baseCost = (baseCost * 1.3).round();
        break;
      case RouteDifficulty.dangerous:
        baseCost = (baseCost * 1.8).round();
        break;
      case RouteDifficulty.legendary:
        baseCost = (baseCost * 2.5).round();
        break;
    }

    // Apply discounts
    if (hasDiscounts) {
      baseCost = (baseCost * 0.9).round();
    }

    return baseCost;
  }

  static int calculateTravelTime(TravelRoute route, {
    int playerLevel = 1,
    bool hasSpeedBonus = false,
  }) {
    int baseTime = route.baseTravelTime;

    // Higher level players travel slightly faster
    double levelMultiplier = 1.0 - (playerLevel * 0.02);
    levelMultiplier = levelMultiplier.clamp(0.7, 1.0);

    baseTime = (baseTime * levelMultiplier).round();

    // Apply speed bonus
    if (hasSpeedBonus) {
      baseTime = (baseTime * 0.8).round();
    }

    return baseTime;
  }

  static String getDifficultyDescription(RouteDifficulty difficulty) {
    switch (difficulty) {
      case RouteDifficulty.easy:
        return 'Safe and well-traveled roads with little danger';
      case RouteDifficulty.moderate:
        return 'Some risks but manageable for experienced travelers';
      case RouteDifficulty.hard:
        return 'Dangerous paths requiring skill and preparation';
      case RouteDifficulty.dangerous:
        return 'Extremely hazardous journey with significant risks';
      case RouteDifficulty.legendary:
        return 'Legendary voyage attempted only by the most skilled';
    }
  }
}