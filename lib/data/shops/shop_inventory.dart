import '../../models/shop.dart';

class ShopInventory {
  static List<Shop> getAllShops() {
    return [
      _athensGeneralShop,
      _athensWeaponsShop,
      _corinthLuxuryShop,
      _corinthBank,
      _spartanArmory,
      _marathonFoodMarket,
      _delphiSouvenirShop,
      _informationBroker,
    ];
  }

  static Shop? getShopById(String shopId) {
    try {
      return getAllShops().firstWhere((shop) => shop.id == shopId);
    } catch (e) {
      return null;
    }
  }

  static List<Shop> getShopsByLocation(String location) {
    return getAllShops().where((shop) => shop.location == location).toList();
  }

  /// Athens General Shop - Basic supplies
  static final Shop _athensGeneralShop = Shop(
    id: 'athens_general',
    name: 'General Goods Store',
    description: 'Everything you need for daily life and travel',
    type: ShopType.general,
    location: 'athens',
    inventory: [
      const ShopItem(
        itemId: 'bread',
        name: 'Bread Loaf',
        description: 'Fresh baked bread. Restores 20 energy.',
        basePrice: 5,
        category: ShopItemCategory.consumable,
        stock: -1,
        effects: {'energy': 20},
      ),
      const ShopItem(
        itemId: 'wine',
        name: 'Wine Amphora',
        description: 'Fine Greek wine. Restores 10 health and 15 energy.',
        basePrice: 15,
        category: ShopItemCategory.consumable,
        stock: -1,
        effects: {'health': 10, 'energy': 15},
      ),
      const ShopItem(
        itemId: 'olives',
        name: 'Jar of Olives',
        description: 'Preserved olives. Restores 15 energy.',
        basePrice: 8,
        category: ShopItemCategory.consumable,
        stock: -1,
        effects: {'energy': 15},
      ),
      const ShopItem(
        itemId: 'travel_supplies',
        name: 'Travel Supplies',
        description: 'Basic supplies for long journeys. Reduces travel cost by 20%.',
        basePrice: 50,
        category: ShopItemCategory.equipment,
        stock: 10,
        tags: ['travel', 'utility'],
        effects: {'travel_discount': 0.2},
      ),
      const ShopItem(
        itemId: 'map_scroll',
        name: 'Map of Greece',
        description: 'Detailed map showing all cities and routes.',
        basePrice: 30,
        category: ShopItemCategory.information,
        stock: 5,
      ),
    ],
  );

  /// Athens Weapons Shop
  static final Shop _athensWeaponsShop = Shop(
    id: 'athens_weapons',
    name: 'The Bronze Blade',
    description: 'Quality weapons for defense and combat',
    type: ShopType.weapons,
    location: 'athens',
    inventory: [
      const ShopItem(
        itemId: 'bronze_sword',
        name: 'Bronze Sword',
        description: 'Standard bronze sword. +5 combat power.',
        basePrice: 100,
        category: ShopItemCategory.weapon,
        stock: 8,
        effects: {'combat_power': 5},
      ),
      const ShopItem(
        itemId: 'iron_sword',
        name: 'Iron Sword',
        description: 'Superior iron blade. +10 combat power.',
        basePrice: 250,
        category: ShopItemCategory.weapon,
        stock: 3,
        effects: {'combat_power': 10},
        tags: ['rare'],
      ),
      const ShopItem(
        itemId: 'wooden_shield',
        name: 'Wooden Shield',
        description: 'Basic wooden shield. +3 defense.',
        basePrice: 75,
        category: ShopItemCategory.armor,
        stock: 10,
        effects: {'defense': 3},
      ),
      const ShopItem(
        itemId: 'bronze_shield',
        name: 'Bronze Shield',
        description: 'Reinforced bronze shield. +7 defense.',
        basePrice: 180,
        category: ShopItemCategory.armor,
        stock: 5,
        effects: {'defense': 7},
      ),
    ],
  );

  /// Corinth Luxury Shop
  static final Shop _corinthLuxuryShop = Shop(
    id: 'corinth_luxury',
    name: 'Merchant of Wonders',
    description: 'Exotic luxury goods from across the Mediterranean',
    type: ShopType.luxury,
    location: 'corinth',
    priceMultiplier: 1.5, // Luxury markup
    inventory: [
      const ShopItem(
        itemId: 'silk_robe',
        name: 'Silk Robe',
        description: 'Imported silk from the East. +10 reputation with nobles.',
        basePrice: 500,
        category: ShopItemCategory.luxury,
        stock: 2,
        effects: {'reputation_noble': 10},
        tags: ['exotic', 'rare'],
      ),
      const ShopItem(
        itemId: 'gold_bracelet',
        name: 'Gold Bracelet',
        description: 'Fine gold jewelry. +5 reputation.',
        basePrice: 300,
        category: ShopItemCategory.luxury,
        stock: 4,
        effects: {'reputation': 5},
      ),
      const ShopItem(
        itemId: 'perfume',
        name: 'Exotic Perfume',
        description: 'Rare perfume from Egypt. +3 charisma in dialogues.',
        basePrice: 150,
        category: ShopItemCategory.luxury,
        stock: 6,
        effects: {'charisma': 3},
      ),
      const ShopItem(
        itemId: 'fine_pottery',
        name: 'Corinthian Vase',
        description: 'Exquisite painted pottery. Can be sold for profit.',
        basePrice: 200,
        category: ShopItemCategory.luxury,
        stock: 5,
        tags: ['tradeable', 'art'],
      ),
    ],
  );

  /// Corinth Bank - Financial services
  static final Shop _corinthBank = Shop(
    id: 'corinth_bank',
    name: 'House of Coins',
    description: 'Banking and financial services',
    type: ShopType.information,
    location: 'corinth',
    minReputation: 10,
    inventory: [
      const ShopItem(
        itemId: 'market_intel',
        name: 'Market Intelligence Report',
        description: 'Shows best prices for goods across all cities.',
        basePrice: 100,
        category: ShopItemCategory.information,
        stock: -1,
        effects: {'reveal_prices': true},
      ),
      const ShopItem(
        itemId: 'trade_routes',
        name: 'Trade Route Maps',
        description: 'Reveals profitable trade opportunities.',
        basePrice: 150,
        category: ShopItemCategory.information,
        stock: -1,
        effects: {'trade_intel': true},
      ),
      const ShopItem(
        itemId: 'loan_contract',
        name: 'Loan Contract (500 drachmae)',
        description: 'Borrow 500 drachmae. Must repay 600 drachmae within 10 days.',
        basePrice: 0,
        category: ShopItemCategory.information,
        stock: 1,
        effects: {'loan': 500, 'debt': 600, 'days': 10},
      ),
    ],
  );

  /// Spartan Armory - Military equipment
  static final Shop _spartanArmory = Shop(
    id: 'sparta_armory',
    name: 'Spartan Armory',
    description: 'Military-grade weapons and armor',
    type: ShopType.weapons,
    location: 'sparta',
    priceMultiplier: 0.9, // Military discount
    inventory: [
      const ShopItem(
        itemId: 'spartan_spear',
        name: 'Spartan Spear',
        description: 'Legendary Spartan weapon. +12 combat power.',
        basePrice: 350,
        category: ShopItemCategory.weapon,
        stock: 4,
        effects: {'combat_power': 12},
        tags: ['legendary', 'spartan'],
      ),
      const ShopItem(
        itemId: 'hoplite_armor',
        name: 'Hoplite Armor',
        description: 'Full hoplite bronze armor. +15 defense.',
        basePrice: 400,
        category: ShopItemCategory.armor,
        stock: 3,
        effects: {'defense': 15},
        tags: ['legendary', 'spartan'],
      ),
      const ShopItem(
        itemId: 'red_cloak',
        name: 'Spartan Red Cloak',
        description: 'Symbol of Spartan warriors. +5 reputation with military.',
        basePrice: 150,
        category: ShopItemCategory.equipment,
        stock: 6,
        effects: {'reputation_military': 5},
      ),
    ],
  );

  /// Marathon Food Market
  static final Shop _marathonFoodMarket = Shop(
    id: 'marathon_food',
    name: 'Marathon Provisions',
    description: 'Fresh food and athletic supplements',
    type: ShopType.food,
    location: 'marathon',
    priceMultiplier: 0.8, // Cheaper food
    inventory: [
      const ShopItem(
        itemId: 'fish',
        name: 'Fresh Fish',
        description: 'Caught this morning. Restores 30 energy.',
        basePrice: 12,
        category: ShopItemCategory.consumable,
        stock: -1,
        effects: {'energy': 30},
      ),
      const ShopItem(
        itemId: 'athletic_meal',
        name: 'Athlete\'s Meal',
        description: 'Nutritious meal for peak performance. +25 energy, +5 health.',
        basePrice: 25,
        category: ShopItemCategory.consumable,
        stock: -1,
        effects: {'energy': 25, 'health': 5},
        tags: ['athletic'],
      ),
      const ShopItem(
        itemId: 'energy_potion',
        name: 'Endurance Tonic',
        description: 'Herbal tonic that boosts stamina. Restores 50 energy.',
        basePrice: 40,
        category: ShopItemCategory.consumable,
        stock: 15,
        effects: {'energy': 50},
      ),
    ],
  );

  /// Delphi Souvenir Shop
  static final Shop _delphiSouvenirShop = Shop(
    id: 'delphi_souvenirs',
    name: 'Oracle\'s Blessings',
    description: 'Sacred items and souvenirs',
    type: ShopType.general,
    location: 'delphi',
    inventory: [
      const ShopItem(
        itemId: 'prayer_scroll',
        name: 'Prayer Scroll',
        description: 'Sacred scroll blessed by the Oracle. Grants luck.',
        basePrice: 80,
        category: ShopItemCategory.consumable,
        stock: 10,
        effects: {'luck': 5},
        tags: ['blessed', 'sacred'],
      ),
      const ShopItem(
        itemId: 'oracle_charm',
        name: 'Oracle Charm',
        description: 'Protective charm from Delphi. +10 reputation with priests.',
        basePrice: 120,
        category: ShopItemCategory.equipment,
        stock: 5,
        effects: {'reputation_priest': 10, 'protection': 3},
      ),
      const ShopItem(
        itemId: 'prophecy',
        name: 'Personal Prophecy',
        description: 'The Oracle reveals your future. Unlocks special quest.',
        basePrice: 200,
        category: ShopItemCategory.information,
        stock: 1,
        effects: {'unlock_quest': 'oracle_prophecy'},
      ),
    ],
  );

  /// Information Broker - Available in multiple cities
  static final Shop _informationBroker = Shop(
    id: 'info_broker',
    name: 'The Whispering Merchant',
    description: 'Secrets, rumors, and valuable information',
    type: ShopType.information,
    location: 'athens',
    inventory: [
      const ShopItem(
        itemId: 'quest_hint',
        name: 'Quest Hint',
        description: 'Helpful hint for your current quest.',
        basePrice: 30,
        category: ShopItemCategory.information,
        stock: -1,
      ),
      const ShopItem(
        itemId: 'npc_intel',
        name: 'NPC Background Info',
        description: 'Learn about an NPC\'s likes, dislikes, and secrets.',
        basePrice: 50,
        category: ShopItemCategory.information,
        stock: -1,
      ),
      const ShopItem(
        itemId: 'treasure_map',
        name: 'Treasure Map',
        description: 'Marks location of hidden treasure. Random reward.',
        basePrice: 100,
        category: ShopItemCategory.information,
        stock: 3,
        effects: {'treasure': 'random'},
        tags: ['rare'],
      ),
    ],
  );
}
