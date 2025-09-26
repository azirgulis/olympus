import '../../models/quest.dart';

class MainQuests {
  static List<Quest> getAllQuests() {
    return [
      // Tutorial Quest - Introduction to Economics
      Quest(
        id: 'main_001',
        title: 'The Merchant\'s Introduction',
        description: 'Meet Alexios the merchant and learn the basics of trade. He will teach you about supply, demand, and the foundations of economics.',
        type: QuestType.tutorial,
        difficulty: QuestDifficulty.easy,
        objectives: [
          QuestObjective(
            id: 'talk_alexios',
            description: 'Speak with Alexios the merchant in the Athens marketplace',
            type: ObjectiveType.talk,
            parameters: {'npc': 'alexios', 'location': 'athens_market'},
          ),
          QuestObjective(
            id: 'first_trade',
            description: 'Make your first trade - buy or sell an item',
            type: ObjectiveType.trade,
            parameters: {'action': 'any', 'count': 1},
            targetProgress: 1,
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 50),
          QuestReward(type: RewardType.experience, amount: 100),
        ],
        prerequisites: [],
        economicConcept: 'Supply and Demand Basics',
        learningObjective: 'Understand how prices are determined by the relationship between supply and demand',
        giver: 'Alexios',
        location: 'Athens Marketplace',
        hint: 'Look for the merchant with the golden beard near the olive oil stalls',
      ),

      // Main Quest 1 - Opportunity Cost
      Quest(
        id: 'main_002',
        title: 'The Choice of Heracles',
        description: 'A wealthy citizen offers you two different trading opportunities, but you can only choose one. Learn about opportunity cost and making economic decisions.',
        type: QuestType.main,
        difficulty: QuestDifficulty.easy,
        objectives: [
          QuestObjective(
            id: 'meet_citizen',
            description: 'Find the wealthy citizen near the temple',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_temple'},
          ),
          QuestObjective(
            id: 'choose_opportunity',
            description: 'Choose between trading wine or pottery (you cannot do both)',
            type: ObjectiveType.trade,
            parameters: {'choice': 'either', 'exclusive': true},
          ),
          QuestObjective(
            id: 'reflect_choice',
            description: 'Speak with Socrates about your decision',
            type: ObjectiveType.talk,
            parameters: {'npc': 'socrates'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 100),
          QuestReward(type: RewardType.experience, amount: 150),
          QuestReward(type: RewardType.reputation, amount: 10),
        ],
        prerequisites: ['main_001'],
        economicConcept: 'Opportunity Cost',
        learningObjective: 'Learn that choosing one option means giving up another, and understand the cost of foregone alternatives',
        giver: 'Rich Athenian Citizen',
        location: 'Athens Temple District',
        hint: 'Think carefully about which trade will benefit you more in the long run',
      ),

      // Main Quest 2 - Market Competition
      Quest(
        id: 'main_003',
        title: 'The Rival Merchants',
        description: 'Two competing merchants are driving prices down. Learn about market competition and how it affects prices and quality.',
        type: QuestType.main,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'observe_competition',
            description: 'Watch the price war between competing olive oil merchants',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_market', 'duration': 5},
          ),
          QuestObjective(
            id: 'buy_cheap_goods',
            description: 'Purchase goods from the merchant with lower prices',
            type: ObjectiveType.trade,
            parameters: {'action': 'buy', 'merchant': 'competing'},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'quality_check',
            description: 'Examine the quality difference between cheap and expensive goods',
            type: ObjectiveType.learn,
            parameters: {'concept': 'quality_vs_price'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 75),
          QuestReward(type: RewardType.experience, amount: 200),
          QuestReward(type: RewardType.item, amount: 2, itemId: 'quality_olive_oil'),
        ],
        prerequisites: ['main_002'],
        economicConcept: 'Market Competition',
        learningObjective: 'Understand how competition between sellers can lead to lower prices and innovation',
        location: 'Athens Marketplace',
        hint: 'Competition often benefits consumers, but consider the trade-offs',
      ),

      // Main Quest 3 - Scarcity and Resource Allocation
      Quest(
        id: 'main_004',
        title: 'The Great Drought',
        description: 'A drought has made grain scarce across Greece. Learn about scarcity, resource allocation, and how societies deal with limited resources.',
        type: QuestType.main,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'witness_scarcity',
            description: 'Observe the effects of grain shortage in the marketplace',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_market'},
          ),
          QuestObjective(
            id: 'high_price_purchase',
            description: 'Purchase grain at the inflated price',
            type: ObjectiveType.trade,
            parameters: {'item': 'grain', 'min_price': 20},
          ),
          QuestObjective(
            id: 'help_needy',
            description: 'Decide how to distribute your grain among needy families',
            type: ObjectiveType.learn,
            parameters: {'concept': 'resource_allocation', 'moral_choice': true},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.experience, amount: 250),
          QuestReward(type: RewardType.reputation, amount: 25),
          QuestReward(type: RewardType.health, amount: 10),
        ],
        prerequisites: ['main_003'],
        economicConcept: 'Scarcity and Resource Allocation',
        learningObjective: 'Learn how societies allocate limited resources and the role of prices in signaling scarcity',
        location: 'Athens and surrounding areas',
        hint: 'Consider both economic efficiency and social fairness in your decisions',
      ),

      // Main Quest 4 - International Trade
      Quest(
        id: 'main_005',
        title: 'The Phoenician Connection',
        description: 'Establish trade relationships with foreign merchants. Learn about comparative advantage and the benefits of international trade.',
        type: QuestType.main,
        difficulty: QuestDifficulty.hard,
        objectives: [
          QuestObjective(
            id: 'meet_phoenicians',
            description: 'Find the Phoenician traders at the harbor',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_harbor'},
          ),
          QuestObjective(
            id: 'export_goods',
            description: 'Export Greek olive oil and pottery to Phoenicia',
            type: ObjectiveType.trade,
            parameters: {'action': 'export', 'items': ['olive_oil', 'pottery']},
            targetProgress: 5,
          ),
          QuestObjective(
            id: 'import_goods',
            description: 'Import purple dye and cedar wood from Phoenicia',
            type: ObjectiveType.trade,
            parameters: {'action': 'import', 'items': ['purple_dye', 'cedar_wood']},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'profit_analysis',
            description: 'Calculate the profit from international trade',
            type: ObjectiveType.learn,
            parameters: {'concept': 'comparative_advantage'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 300),
          QuestReward(type: RewardType.experience, amount: 400),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'trade_permit'),
          QuestReward(type: RewardType.reputation, amount: 50),
        ],
        prerequisites: ['main_004'],
        economicConcept: 'International Trade and Comparative Advantage',
        learningObjective: 'Understand how countries benefit from specializing in what they do best and trading with others',
        location: 'Athens Harbor',
        timeLimit: 10, // 10 days
        hint: 'Focus on what Greece produces most efficiently and trade for what others make better',
      ),

      // Main Quest 5 - Banking and Credit
      Quest(
        id: 'main_006',
        title: 'The Temple Bank',
        description: 'The Temple of Apollo has started offering loans to merchants. Learn about banking, interest, and the role of credit in economics.',
        type: QuestType.main,
        difficulty: QuestDifficulty.hard,
        objectives: [
          QuestObjective(
            id: 'visit_temple_bank',
            description: 'Speak with the temple priests about their banking services',
            type: ObjectiveType.talk,
            parameters: {'npc': 'temple_priest', 'location': 'apollo_temple'},
          ),
          QuestObjective(
            id: 'take_loan',
            description: 'Take out a loan to expand your trading business',
            type: ObjectiveType.learn,
            parameters: {'concept': 'credit', 'amount': 500},
          ),
          QuestObjective(
            id: 'invest_loan',
            description: 'Invest the borrowed money in profitable trades',
            type: ObjectiveType.trade,
            parameters: {'min_investment': 500},
            targetProgress: 1000, // Profit target
          ),
          QuestObjective(
            id: 'repay_loan',
            description: 'Repay the loan with interest',
            type: ObjectiveType.trade,
            parameters: {'action': 'repay', 'amount': 550}, // 10% interest
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.experience, amount: 500),
          QuestReward(type: RewardType.reputation, amount: 30),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'credit_rating'),
        ],
        prerequisites: ['main_005'],
        economicConcept: 'Banking and Credit',
        learningObjective: 'Understand how banks work, the concept of interest, and how credit can help grow businesses',
        location: 'Temple of Apollo',
        hint: 'Use the loan wisely - you need to earn enough profit to pay back more than you borrowed',
      ),

      // Final Main Quest - Economic Systems
      Quest(
        id: 'main_007',
        title: 'The Athenian Assembly',
        description: 'The Assembly is debating economic policies for Athens. Use everything you\'ve learned to advise on the best economic system for the city.',
        type: QuestType.main,
        difficulty: QuestDifficulty.expert,
        objectives: [
          QuestObjective(
            id: 'attend_assembly',
            description: 'Attend the Assembly meeting in the Agora',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_agora'},
          ),
          QuestObjective(
            id: 'present_case',
            description: 'Present your economic recommendations to the Assembly',
            type: ObjectiveType.learn,
            parameters: {'concept': 'economic_systems', 'presentation': true},
          ),
          QuestObjective(
            id: 'defend_position',
            description: 'Defend your economic philosophy against opposition',
            type: ObjectiveType.learn,
            parameters: {'concept': 'economic_debate'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 1000),
          QuestReward(type: RewardType.experience, amount: 1000),
          QuestReward(type: RewardType.reputation, amount: 100),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'master_economist_scroll'),
        ],
        prerequisites: ['main_006'],
        economicConcept: 'Economic Systems and Policy',
        learningObjective: 'Synthesize all economic concepts learned to understand how different economic systems work',
        location: 'Athens Agora',
        hint: 'Draw on all your experiences to make the best argument for economic prosperity',
      ),
    ];
  }
}