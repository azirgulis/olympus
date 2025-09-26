import '../../models/harbor.dart';

class ShipsData {
  static List<Ship> getPlayerShips() {
    return [
      // Starting ship - small fishing boat
      Ship(
        id: 'ship_001',
        name: 'Poseidon\'s Grace',
        type: ShipType.fishing_boat,
        cargoCapacity: 50,
        speed: 80, // Lower speed = longer travel time
        durability: 100,
        currentCondition: 100,
        crewSize: 3,
        maintenanceCost: 10,
        isAvailable: true,
      ),
    ];
  }

  static List<Ship> getAvailableShips() {
    return [
      Ship(
        id: 'ship_merchant_001',
        name: 'Hermes\' Wind',
        type: ShipType.merchant_vessel,
        cargoCapacity: 200,
        speed: 100,
        durability: 150,
        currentCondition: 150,
        crewSize: 8,
        maintenanceCost: 50,
        isAvailable: false, // For purchase
      ),
      Ship(
        id: 'ship_merchant_002',
        name: 'Golden Fleece',
        type: ShipType.merchant_vessel,
        cargoCapacity: 250,
        speed: 90,
        durability: 180,
        currentCondition: 180,
        crewSize: 10,
        maintenanceCost: 60,
        isAvailable: false,
      ),
      Ship(
        id: 'ship_galley_001',
        name: 'Athens\' Pride',
        type: ShipType.war_galley,
        cargoCapacity: 100,
        speed: 120,
        durability: 300,
        currentCondition: 300,
        crewSize: 20,
        maintenanceCost: 100,
        isAvailable: false,
      ),
      Ship(
        id: 'ship_luxury_001',
        name: 'Divine Odyssey',
        type: ShipType.luxury_yacht,
        cargoCapacity: 80,
        speed: 130,
        durability: 200,
        currentCondition: 200,
        crewSize: 15,
        maintenanceCost: 150,
        isAvailable: false,
      ),
    ];
  }

  static List<ShipUpgrade> getAvailableUpgrades() {
    return [
      ShipUpgrade(
        id: 'upgrade_cargo_hold',
        name: 'Reinforced Cargo Hold',
        description: 'Increases cargo capacity by 25%',
        type: UpgradeType.cargo,
        cost: 500,
        effects: {'cargoCapacity': 25}, // percentage increase
      ),
      ShipUpgrade(
        id: 'upgrade_bronze_ram',
        name: 'Bronze Ram',
        description: 'Increases ship speed and reduces pirate encounter risk',
        type: UpgradeType.speed,
        cost: 800,
        effects: {'speed': 15, 'pirateResistance': 20},
      ),
      ShipUpgrade(
        id: 'upgrade_reinforced_hull',
        name: 'Reinforced Hull',
        description: 'Increases ship durability and storm resistance',
        type: UpgradeType.durability,
        cost: 600,
        effects: {'durability': 30, 'stormResistance': 25},
      ),
      ShipUpgrade(
        id: 'upgrade_skilled_crew',
        name: 'Skilled Crew',
        description: 'Reduces travel time and improves trade negotiations',
        type: UpgradeType.crew,
        cost: 400,
        effects: {'speed': 10, 'tradeBonus': 15},
      ),
      ShipUpgrade(
        id: 'upgrade_navigation_tools',
        name: 'Navigation Tools',
        description: 'Advanced astrolabe and charts for safer navigation',
        type: UpgradeType.navigation,
        cost: 300,
        effects: {'speed': 5, 'safetyBonus': 30},
      ),
      ShipUpgrade(
        id: 'upgrade_luxury_quarters',
        name: 'Luxury Quarters',
        description: 'Comfortable accommodations for high-value passengers',
        type: UpgradeType.cargo,
        cost: 1000,
        effects: {'luxuryBonus': 50, 'reputationBonus': 10},
      ),
    ];
  }

  static String getShipTypeDescription(ShipType type) {
    switch (type) {
      case ShipType.fishing_boat:
        return 'Small, nimble vessel perfect for coastal trading. Low capacity but affordable maintenance.';
      case ShipType.merchant_vessel:
        return 'Purpose-built for trade with large cargo holds. The backbone of Mediterranean commerce.';
      case ShipType.war_galley:
        return 'Fast and well-protected vessel that can defend against pirates. Lower cargo capacity.';
      case ShipType.luxury_yacht:
        return 'Elegant ship that impresses foreign dignitaries. Provides diplomatic bonuses.';
    }
  }

  static Map<String, dynamic> getShipStats(ShipType type) {
    switch (type) {
      case ShipType.fishing_boat:
        return {
          'cargoCapacity': 50,
          'speed': 80,
          'durability': 100,
          'crewSize': 3,
          'maintenanceCost': 10,
          'specialBonus': 'Coastal trading bonus',
        };
      case ShipType.merchant_vessel:
        return {
          'cargoCapacity': 200,
          'speed': 100,
          'durability': 150,
          'crewSize': 8,
          'maintenanceCost': 50,
          'specialBonus': 'Trade efficiency bonus',
        };
      case ShipType.war_galley:
        return {
          'cargoCapacity': 100,
          'speed': 120,
          'durability': 300,
          'crewSize': 20,
          'maintenanceCost': 100,
          'specialBonus': 'Pirate resistance',
        };
      case ShipType.luxury_yacht:
        return {
          'cargoCapacity': 80,
          'speed': 130,
          'durability': 200,
          'crewSize': 15,
          'maintenanceCost': 150,
          'specialBonus': 'Diplomatic bonus',
        };
    }
  }

  static List<String> getShipNames() {
    return [
      'Athena\'s Wisdom',
      'Poseidon\'s Trident',
      'Apollo\'s Chariot',
      'Hermes\' Swift',
      'Dionysus\' Joy',
      'Ares\' Fury',
      'Hera\'s Crown',
      'Zeus\' Thunder',
      'Artemis\' Arrow',
      'Hephaestus\' Forge',
      'Demeter\'s Bounty',
      'Aphrodite\'s Pearl',
      'Golden Fleece',
      'Odyssey\'s Return',
      'Argonaut\'s Dream',
      'Siren\'s Call',
      'Titan\'s Strength',
      'Phoenix Rising',
      'Aegean Star',
      'Mediterranean Dawn',
    ];
  }

  static String getRandomShipName() {
    final names = getShipNames();
    final random = DateTime.now().millisecondsSinceEpoch % names.length;
    return names[random];
  }
}