import '../../models/exploration.dart';

/// City maps database
class CityMapsData {
  static CityMap? getCityMap(String cityId) {
    return _cityMaps[cityId];
  }

  static final Map<String, CityMap> _cityMaps = {
    'athens': _athensMap,
    'thebes': _thebesMap,
    'corinth': _corinthMap,
    'sparta': _spartaMap,
    'delphi': _delphiMap,
    'marathon': _marathonMap,
  };

  /// Athens - Starting city with market, harbor, academy
  static final CityMap _athensMap = CityMap(
    cityId: 'athens',
    name: 'Athens',
    width: 1600,
    height: 1200,
    backgroundImagePath: 'assets/maps/athens_background.png',
    spawnPoint: const PlayerPosition(x: 800, y: 600, facing: Direction.down),

    // Buildings
    buildings: [
      // Marketplace
      const Building(
        id: 'athens_market',
        name: 'Marketplace',
        type: BuildingType.market,
        bounds: MapRect(x: 250, y: 200, width: 180, height: 140),
        entranceRoute: '/market',
      ),

      // Harbor
      const Building(
        id: 'athens_harbor',
        name: 'Harbor',
        type: BuildingType.harbor,
        bounds: MapRect(x: 1150, y: 200, width: 200, height: 160),
        entranceRoute: '/harbor',
      ),

      // Academy
      const Building(
        id: 'athens_academy',
        name: 'Academy',
        type: BuildingType.academy,
        bounds: MapRect(x: 650, y: 150, width: 220, height: 170),
        entranceRoute: '/academy',
      ),

      // Temple
      const Building(
        id: 'athens_temple',
        name: 'Temple of Athena',
        type: BuildingType.temple,
        bounds: MapRect(x: 150, y: 800, width: 200, height: 220),
        entranceRoute: '/athens/temple',
      ),

      // General Goods Shop
      const Building(
        id: 'athens_general_shop',
        name: 'General Goods Store',
        type: BuildingType.shop,
        bounds: MapRect(x: 1200, y: 850, width: 150, height: 120),
        entranceRoute: '/shop/athens_general',
      ),

      // Weapons Shop
      const Building(
        id: 'athens_weapons_shop',
        name: 'The Bronze Blade',
        type: BuildingType.shop,
        bounds: MapRect(x: 900, y: 850, width: 150, height: 120),
        entranceRoute: '/shop/athens_weapons',
      ),
    ],

    // NPCs positioned in the city
    npcs: [
      // Socrates - near Academy
      const NpcPosition(
        npcId: 'socrates',
        x: 680,
        y: 360,
        facing: Direction.down,
        hasQuest: true,
      ),

      // Alexios - Merchant near Marketplace
      const NpcPosition(
        npcId: 'alexios',
        x: 300,
        y: 380,
        facing: Direction.right,
        hasQuest: true,
      ),

      // Helen - Trader near Harbor
      const NpcPosition(
        npcId: 'helen',
        x: 1180,
        y: 400,
        facing: Direction.down,
        hasQuest: true,
      ),

      // Guard - near Temple
      const NpcPosition(
        npcId: 'guard_1',
        x: 200,
        y: 750,
        facing: Direction.up,
        hasQuest: false,
      ),

      // Citizen - wandering near fountain
      const NpcPosition(
        npcId: 'citizen_1',
        x: 800,
        y: 700,
        facing: Direction.left,
        hasQuest: false,
      ),
    ],

    // Collision areas (walls, obstacles)
    collisionAreas: [
      // Outer walls - top, bottom, left, right
      const CollisionArea(
        bounds: MapRect(x: 0, y: 0, width: 1600, height: 50),
        type: CollisionType.solid,
      ),
      const CollisionArea(
        bounds: MapRect(x: 0, y: 1150, width: 1600, height: 50),
        type: CollisionType.solid,
      ),
      const CollisionArea(
        bounds: MapRect(x: 0, y: 0, width: 50, height: 1200),
        type: CollisionType.solid,
      ),
      const CollisionArea(
        bounds: MapRect(x: 1550, y: 0, width: 50, height: 1200),
        type: CollisionType.solid,
      ),

      // Fountain in center
      const CollisionArea(
        bounds: MapRect(x: 750, y: 560, width: 120, height: 100),
        type: CollisionType.solid,
      ),

      // Statue near temple
      const CollisionArea(
        bounds: MapRect(x: 400, y: 850, width: 70, height: 70),
        type: CollisionType.solid,
      ),

      // Market stalls (obstacles)
      const CollisionArea(
        bounds: MapRect(x: 480, y: 250, width: 90, height: 50),
        type: CollisionType.solid,
      ),
      const CollisionArea(
        bounds: MapRect(x: 480, y: 330, width: 90, height: 50),
        type: CollisionType.solid,
      ),

      // Additional trees/obstacles
      const CollisionArea(
        bounds: MapRect(x: 1000, y: 600, width: 60, height: 60),
        type: CollisionType.solid,
      ),
      const CollisionArea(
        bounds: MapRect(x: 600, y: 900, width: 60, height: 60),
        type: CollisionType.solid,
      ),
    ],

    // Interaction zones
    interactionZones: [
      // Hidden treasure near temple
      const InteractionZone(
        id: 'athens_hidden_treasure_1',
        bounds: MapRect(x: 180, y: 1050, width: 50, height: 50),
        type: InteractionType.discovery,
        requiresPlayerAction: true,
      ),

      // Quest trigger - mysterious stranger
      const InteractionZone(
        id: 'athens_quest_stranger',
        bounds: MapRect(x: 950, y: 750, width: 70, height: 70),
        type: InteractionType.questTrigger,
        targetId: 'quest_mysterious_message',
        requiresPlayerAction: true,
      ),

      // Tutorial sign near spawn
      const InteractionZone(
        id: 'athens_tutorial_sign',
        bounds: MapRect(x: 750, y: 680, width: 100, height: 30),
        type: InteractionType.dialogue,
        targetId: 'tutorial_controls',
        requiresPlayerAction: true,
      ),
    ],

    // Transitions to other areas
    transitions: [
      // Exit to world map (bottom center)
      const MapTransition(
        id: 'athens_exit_south',
        triggerBounds: MapRect(x: 750, y: 1140, width: 100, height: 60),
        targetMapId: 'world_map',
        targetPosition: null,
        requiresConfirmation: true,
      ),
    ],
  );

  /// Get entrance position for a building
  static PlayerPosition? getBuildingEntrance(String cityId, String buildingId) {
    final map = _cityMaps[cityId];
    if (map == null) return null;

    final building = map.buildings.firstWhere(
      (b) => b.id == buildingId,
      orElse: () => throw Exception('Building not found: $buildingId'),
    );

    // Return position in front of building entrance
    return PlayerPosition(
      x: building.bounds.x + building.bounds.width / 2,
      y: building.bounds.y + building.bounds.height + 20,
      facing: Direction.up,
    );
  }

  /// Check if player can enter a building
  static bool canEnterBuilding(String cityId, String buildingId, List<String> playerItems, int reputation) {
    final map = _cityMaps[cityId];
    if (map == null) return false;

    final building = map.buildings.firstWhere(
      (b) => b.id == buildingId,
      orElse: () => throw Exception('Building not found: $buildingId'),
    );

    // Check required items
    for (final requiredItem in building.requiredItems) {
      if (!playerItems.contains(requiredItem)) return false;
    }

    // Check reputation
    if (reputation < building.minReputation) return false;

    return true;
  }

  /// Thebes - Military stronghold with training grounds and armory
  static final CityMap _thebesMap = CityMap(
    cityId: 'thebes',
    name: 'Thebes',
    width: 1400,
    height: 1100,
    backgroundImagePath: 'assets/maps/thebes_background.png',
    spawnPoint: const PlayerPosition(x: 700, y: 550, facing: Direction.down),

    buildings: [
      const Building(
        id: 'thebes_market',
        name: 'Thebes Market',
        type: BuildingType.market,
        bounds: MapRect(x: 200, y: 250, width: 160, height: 130),
        entranceRoute: '/market?location=thebes',
      ),
      const Building(
        id: 'thebes_barracks',
        name: 'Military Barracks',
        type: BuildingType.home,
        bounds: MapRect(x: 950, y: 200, width: 220, height: 180),
        entranceRoute: '/thebes',
      ),
      const Building(
        id: 'thebes_info_broker',
        name: 'The Whispering Merchant',
        type: BuildingType.shop,
        bounds: MapRect(x: 550, y: 180, width: 180, height: 150),
        entranceRoute: '/shop/info_broker',
      ),
    ],

    npcs: [
      const NpcPosition(
        npcId: 'theban_general',
        x: 700,
        y: 350,
      ),
      const NpcPosition(
        npcId: 'arms_dealer',
        x: 500,
        y: 450,
      ),
      const NpcPosition(
        npcId: 'theban_citizen',
        x: 350,
        y: 600,
      ),
    ],

    collisionAreas: [
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 1400, height: 50), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 50, height: 1100), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 1350, y: 0, width: 50, height: 1100), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 1050, width: 1400, height: 50), type: CollisionType.solid),
    ],
  );

  /// Corinth - Major trading hub with rich merchants
  static final CityMap _corinthMap = CityMap(
    cityId: 'corinth',
    name: 'Corinth',
    width: 1500,
    height: 1150,
    backgroundImagePath: 'assets/maps/corinth_background.png',
    spawnPoint: const PlayerPosition(x: 750, y: 575, facing: Direction.down),

    buildings: [
      const Building(
        id: 'corinth_market',
        name: 'Grand Marketplace',
        type: BuildingType.market,
        bounds: MapRect(x: 300, y: 300, width: 200, height: 160),
        entranceRoute: '/market?location=corinth',
      ),
      const Building(
        id: 'corinth_harbor',
        name: 'Trading Harbor',
        type: BuildingType.harbor,
        bounds: MapRect(x: 1000, y: 250, width: 220, height: 170),
        entranceRoute: '/harbor?location=corinth',
      ),
      const Building(
        id: 'corinth_bank',
        name: 'House of Coins',
        type: BuildingType.home,
        bounds: MapRect(x: 600, y: 200, width: 180, height: 140),
        entranceRoute: '/shop/corinth_bank',
      ),
      const Building(
        id: 'corinth_luxuryshop',
        name: 'Merchant of Wonders',
        type: BuildingType.shop,
        bounds: MapRect(x: 200, y: 600, width: 170, height: 140),
        entranceRoute: '/shop/corinth_luxury',
      ),
    ],

    npcs: [
      const NpcPosition(
        npcId: 'wealthy_merchant',
        x: 650,
        y: 450,
      ),
      const NpcPosition(
        npcId: 'banker',
        x: 550,
        y: 350,
      ),
      const NpcPosition(
        npcId: 'luxury_trader',
        x: 350,
        y: 700,
      ),
      const NpcPosition(
        npcId: 'corinthian_noble',
        x: 900,
        y: 600,
      ),
    ],

    collisionAreas: [
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 1500, height: 50), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 50, height: 1150), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 1450, y: 0, width: 50, height: 1150), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 1100, width: 1500, height: 50), type: CollisionType.solid),
    ],
  );

  /// Sparta - Austere military city with strict economy
  static final CityMap _spartaMap = CityMap(
    cityId: 'sparta',
    name: 'Sparta',
    width: 1300,
    height: 1000,
    backgroundImagePath: 'assets/maps/sparta_background.png',
    spawnPoint: const PlayerPosition(x: 650, y: 500, facing: Direction.down),

    buildings: [
      const Building(
        id: 'sparta_market',
        name: 'Spartan Market',
        type: BuildingType.market,
        bounds: MapRect(x: 250, y: 300, width: 150, height: 120),
        entranceRoute: '/market?location=sparta',
      ),
      const Building(
        id: 'sparta_training',
        name: 'Training Grounds',
        type: BuildingType.home,
        bounds: MapRect(x: 800, y: 250, width: 240, height: 200),
        entranceRoute: '/sparta',
      ),
      const Building(
        id: 'sparta_barracks',
        name: 'Spartan Barracks',
        type: BuildingType.home,
        bounds: MapRect(x: 500, y: 180, width: 200, height: 160),
        entranceRoute: '/barracks',
      ),
      const Building(
        id: 'sparta_armory',
        name: 'Spartan Armory',
        type: BuildingType.shop,
        bounds: MapRect(x: 900, y: 600, width: 160, height: 130),
        entranceRoute: '/shop/sparta_armory',
      ),
    ],

    npcs: [
      const NpcPosition(
        npcId: 'spartan_warrior',
        x: 700,
        y: 400,
      ),
      const NpcPosition(
        npcId: 'spartan_elder',
        x: 450,
        y: 550,
      ),
      const NpcPosition(
        npcId: 'helot_worker',
        x: 350,
        y: 650,
      ),
    ],

    collisionAreas: [
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 1300, height: 50), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 50, height: 1000), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 1250, y: 0, width: 50, height: 1000), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 950, width: 1300, height: 50), type: CollisionType.solid),
    ],
  );

  /// Delphi - Sacred city with oracle and temple
  static final CityMap _delphiMap = CityMap(
    cityId: 'delphi',
    name: 'Delphi',
    width: 1200,
    height: 1000,
    backgroundImagePath: 'assets/maps/delphi_background.png',
    spawnPoint: const PlayerPosition(x: 600, y: 500, facing: Direction.down),

    buildings: [
      const Building(
        id: 'delphi_oracle',
        name: 'Oracle\'s Temple',
        type: BuildingType.temple,
        bounds: MapRect(x: 450, y: 150, width: 300, height: 250),
        entranceRoute: '/delphi',
      ),
      const Building(
        id: 'delphi_shrine',
        name: 'Sacred Shrine',
        type: BuildingType.temple,
        bounds: MapRect(x: 200, y: 400, width: 180, height: 150),
        entranceRoute: '/shrine',
      ),
      const Building(
        id: 'delphi_market',
        name: 'Pilgrims\' Market',
        type: BuildingType.market,
        bounds: MapRect(x: 800, y: 350, width: 160, height: 130),
        entranceRoute: '/market?location=delphi',
      ),
      const Building(
        id: 'delphi_souvenirs',
        name: 'Oracle\'s Blessings',
        type: BuildingType.shop,
        bounds: MapRect(x: 250, y: 650, width: 150, height: 120),
        entranceRoute: '/shop/delphi_souvenirs',
      ),
    ],

    npcs: [
      const NpcPosition(
        npcId: 'oracle',
        x: 600,
        y: 350,
      ),
      const NpcPosition(
        npcId: 'priest',
        x: 450,
        y: 550,
      ),
      const NpcPosition(
        npcId: 'pilgrim',
        x: 750,
        y: 600,
      ),
      const NpcPosition(
        npcId: 'souvenir_seller',
        x: 900,
        y: 500,
      ),
    ],

    collisionAreas: [
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 1200, height: 50), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 50, height: 1000), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 1150, y: 0, width: 50, height: 1000), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 950, width: 1200, height: 50), type: CollisionType.solid),
    ],
  );

  /// Marathon - Coastal settlement known for athletics
  static final CityMap _marathonMap = CityMap(
    cityId: 'marathon',
    name: 'Marathon',
    width: 1350,
    height: 1050,
    backgroundImagePath: 'assets/maps/marathon_background.png',
    spawnPoint: const PlayerPosition(x: 675, y: 525, facing: Direction.down),

    buildings: [
      const Building(
        id: 'marathon_stadium',
        name: 'Athletic Stadium',
        type: BuildingType.home,
        bounds: MapRect(x: 450, y: 200, width: 450, height: 250),
        entranceRoute: '/marathon',
      ),
      const Building(
        id: 'marathon_market',
        name: 'Marathon Market',
        type: BuildingType.market,
        bounds: MapRect(x: 200, y: 500, width: 170, height: 140),
        entranceRoute: '/market?location=marathon',
      ),
      const Building(
        id: 'marathon_harbor',
        name: 'Small Harbor',
        type: BuildingType.harbor,
        bounds: MapRect(x: 950, y: 450, width: 180, height: 150),
        entranceRoute: '/harbor?location=marathon',
      ),
      const Building(
        id: 'marathon_food',
        name: 'Marathon Provisions',
        type: BuildingType.shop,
        bounds: MapRect(x: 600, y: 700, width: 160, height: 120),
        entranceRoute: '/shop/marathon_food',
      ),
    ],

    npcs: [
      const NpcPosition(
        npcId: 'athlete',
        x: 675,
        y: 400,
      ),
      const NpcPosition(
        npcId: 'marathon_trainer',
        x: 500,
        y: 550,
      ),
      const NpcPosition(
        npcId: 'fisherman',
        x: 1000,
        y: 600,
      ),
      const NpcPosition(
        npcId: 'marathon_merchant',
        x: 350,
        y: 700,
      ),
    ],

    collisionAreas: [
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 1350, height: 50), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 0, width: 50, height: 1050), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 1300, y: 0, width: 50, height: 1050), type: CollisionType.solid),
      const CollisionArea(bounds: MapRect(x: 0, y: 1000, width: 1350, height: 50), type: CollisionType.solid),
    ],
  );
}
