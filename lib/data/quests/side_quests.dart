import '../../models/quest.dart';

class SideQuests {
  static List<Quest> getAllQuests() {
    return [
      // Side Quest - Market Research
      Quest(
        id: 'side_001',
        title: 'The Market Researcher',
        description: 'Helen the trader needs help gathering market information. Learn about market research and consumer behavior.',
        type: QuestType.side,
        difficulty: QuestDifficulty.easy,
        objectives: [
          QuestObjective(
            id: 'survey_customers',
            description: 'Ask 5 customers about their buying preferences',
            type: ObjectiveType.talk,
            parameters: {'target': 'customers', 'count': 5},
            targetProgress: 5,
          ),
          QuestObjective(
            id: 'price_comparison',
            description: 'Compare prices of similar goods from different merchants',
            type: ObjectiveType.collect,
            parameters: {'data_type': 'prices', 'merchants': 3},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'report_findings',
            description: 'Report your findings to Helen',
            type: ObjectiveType.talk,
            parameters: {'npc': 'helen'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 75),
          QuestReward(type: RewardType.experience, amount: 100),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'market_data_scroll'),
        ],
        prerequisites: ['main_001'],
        economicConcept: 'Market Research and Consumer Behavior',
        learningObjective: 'Learn how businesses gather information about customers and markets to make better decisions',
        giver: 'Helen',
        location: 'Athens Marketplace',
        hint: 'Talk to a variety of customers to get diverse perspectives',
      ),

      // Side Quest - Entrepreneurship
      Quest(
        id: 'side_002',
        title: 'The Young Entrepreneur',
        description: 'A young Athenian wants to start a pottery business but needs guidance. Help them understand entrepreneurship and business planning.',
        type: QuestType.side,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'business_plan',
            description: 'Help create a business plan for the pottery shop',
            type: ObjectiveType.learn,
            parameters: {'concept': 'business_planning'},
          ),
          QuestObjective(
            id: 'find_location',
            description: 'Find a suitable location for the pottery shop',
            type: ObjectiveType.visit,
            parameters: {'location_type': 'shop_space', 'criteria': 'foot_traffic'},
          ),
          QuestObjective(
            id: 'initial_investment',
            description: 'Help gather the initial investment of 200 drachmae',
            type: ObjectiveType.collect,
            parameters: {'resource': 'drachmae', 'amount': 200},
            targetProgress: 200,
          ),
          QuestObjective(
            id: 'first_sales',
            description: 'Help make the first 10 sales',
            type: ObjectiveType.trade,
            parameters: {'action': 'sell', 'item': 'pottery'},
            targetProgress: 10,
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 150),
          QuestReward(type: RewardType.experience, amount: 200),
          QuestReward(type: RewardType.reputation, amount: 20),
          QuestReward(type: RewardType.item, amount: 5, itemId: 'fine_pottery'),
        ],
        prerequisites: ['main_002'],
        economicConcept: 'Entrepreneurship and Business Planning',
        learningObjective: 'Understand how new businesses are created and the challenges entrepreneurs face',
        giver: 'Young Athenian',
        location: 'Athens Craftsman Quarter',
        hint: 'A good business plan considers costs, customers, and competition',
      ),

      // Side Quest - Labor and Wages
      Quest(
        id: 'side_003',
        title: 'The Worker\'s Dilemma',
        description: 'Workers at the marble quarry are demanding higher wages. Learn about labor economics and wage determination.',
        type: QuestType.side,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'visit_quarry',
            description: 'Visit the marble quarry and speak with workers',
            type: ObjectiveType.visit,
            parameters: {'location': 'marble_quarry'},
          ),
          QuestObjective(
            id: 'meet_foreman',
            description: 'Speak with the quarry foreman about wages',
            type: ObjectiveType.talk,
            parameters: {'npc': 'quarry_foreman'},
          ),
          QuestObjective(
            id: 'analyze_productivity',
            description: 'Measure worker productivity and output',
            type: ObjectiveType.learn,
            parameters: {'concept': 'productivity', 'measurement': true},
          ),
          QuestObjective(
            id: 'mediate_dispute',
            description: 'Help negotiate a fair wage agreement',
            type: ObjectiveType.learn,
            parameters: {'concept': 'wage_negotiation'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.experience, amount: 250),
          QuestReward(type: RewardType.reputation, amount: 30),
          QuestReward(type: RewardType.item, amount: 3, itemId: 'marble_blocks'),
        ],
        prerequisites: ['main_003'],
        economicConcept: 'Labor Economics and Wage Determination',
        learningObjective: 'Understand how wages are determined and the relationship between productivity and pay',
        location: 'Marble Quarry outside Athens',
        hint: 'Consider both worker needs and business sustainability',
      ),

      // Side Quest - Innovation and Technology
      Quest(
        id: 'side_004',
        title: 'The Inventor\'s Workshop',
        description: 'An inventor has created a new type of loom that weaves cloth faster. Learn about innovation, technology, and economic growth.',
        type: QuestType.side,
        difficulty: QuestDifficulty.hard,
        objectives: [
          QuestObjective(
            id: 'test_invention',
            description: 'Test the new loom and compare its efficiency',
            type: ObjectiveType.learn,
            parameters: {'concept': 'technological_efficiency'},
          ),
          QuestObjective(
            id: 'calculate_savings',
            description: 'Calculate the time and cost savings of the new loom',
            type: ObjectiveType.learn,
            parameters: {'concept': 'cost_benefit_analysis'},
          ),
          QuestObjective(
            id: 'find_investors',
            description: 'Find investors willing to fund mass production',
            type: ObjectiveType.talk,
            parameters: {'target': 'wealthy_merchants', 'count': 3},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'mass_production',
            description: 'Oversee production of 5 new looms',
            type: ObjectiveType.craft,
            parameters: {'item': 'advanced_loom'},
            targetProgress: 5,
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 400),
          QuestReward(type: RewardType.experience, amount: 350),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'innovation_patent'),
          QuestReward(type: RewardType.reputation, amount: 25),
        ],
        prerequisites: ['main_004'],
        economicConcept: 'Innovation and Technological Progress',
        learningObjective: 'Learn how new technology can increase productivity and drive economic growth',
        giver: 'Athenian Inventor',
        location: 'Innovation Workshop',
        hint: 'New technology often requires investment before it shows benefits',
      ),

      // Side Quest - Economic Cycles
      Quest(
        id: 'side_005',
        title: 'The Merchant\'s Calendar',
        description: 'A seasoned merchant teaches you about seasonal economic patterns and cycles in ancient Greece.',
        type: QuestType.side,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'observe_seasons',
            description: 'Observe price changes across different seasons',
            type: ObjectiveType.collect,
            parameters: {'data_type': 'seasonal_prices', 'seasons': 4},
            targetProgress: 4,
          ),
          QuestObjective(
            id: 'track_demand',
            description: 'Track which goods are in demand during different festivals',
            type: ObjectiveType.learn,
            parameters: {'concept': 'cyclical_demand'},
          ),
          QuestObjective(
            id: 'time_purchases',
            description: 'Buy goods at low season and sell at high season',
            type: ObjectiveType.trade,
            parameters: {'strategy': 'seasonal_arbitrage'},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'predict_cycles',
            description: 'Successfully predict the next market cycle',
            type: ObjectiveType.learn,
            parameters: {'concept': 'market_forecasting'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 250),
          QuestReward(type: RewardType.experience, amount: 300),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'merchant_calendar'),
        ],
        prerequisites: ['main_005'],
        economicConcept: 'Economic Cycles and Seasonal Patterns',
        learningObjective: 'Understand how economic activity fluctuates in predictable patterns',
        giver: 'Seasoned Merchant',
        location: 'Athens Marketplace',
        timeLimit: 15, // 15 days to observe full cycle
        hint: 'Pay attention to religious festivals and seasonal changes',
      ),

      // Side Quest - Economic Policy
      Quest(
        id: 'side_006',
        title: 'The Tax Collector\'s Burden',
        description: 'Help the tax collector understand the economic impact of different tax policies on Athens.',
        type: QuestType.side,
        difficulty: QuestDifficulty.hard,
        objectives: [
          QuestObjective(
            id: 'study_taxes',
            description: 'Study the current tax system in Athens',
            type: ObjectiveType.learn,
            parameters: {'concept': 'taxation_systems'},
          ),
          QuestObjective(
            id: 'measure_impact',
            description: 'Measure how taxes affect different social classes',
            type: ObjectiveType.collect,
            parameters: {'data_type': 'tax_impact', 'classes': 3},
            targetProgress: 3,
          ),
          QuestObjective(
            id: 'alternative_proposal',
            description: 'Propose an alternative tax structure',
            type: ObjectiveType.learn,
            parameters: {'concept': 'tax_reform'},
          ),
          QuestObjective(
            id: 'present_findings',
            description: 'Present your findings to the city officials',
            type: ObjectiveType.talk,
            parameters: {'npc': 'city_officials'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.experience, amount: 400),
          QuestReward(type: RewardType.reputation, amount: 50),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'policy_advisor_seal'),
        ],
        prerequisites: ['main_006'],
        economicConcept: 'Taxation and Economic Policy',
        learningObjective: 'Understand how government policies affect economic behavior and outcomes',
        giver: 'Chief Tax Collector',
        location: 'Athens Administrative Building',
        hint: 'Consider both efficiency and fairness in tax policy',
      ),

      // Daily Quest - Trade Practice
      Quest(
        id: 'daily_001',
        title: 'Daily Market Analysis',
        description: 'Practice your trading skills by analyzing daily market conditions and making profitable trades.',
        type: QuestType.daily,
        difficulty: QuestDifficulty.easy,
        objectives: [
          QuestObjective(
            id: 'check_prices',
            description: 'Check current market prices for all goods',
            type: ObjectiveType.visit,
            parameters: {'location': 'athens_market'},
          ),
          QuestObjective(
            id: 'make_trades',
            description: 'Make 3 profitable trades today',
            type: ObjectiveType.trade,
            parameters: {'profit_margin': 0.1}, // 10% minimum profit
            targetProgress: 3,
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.drachmae, amount: 25),
          QuestReward(type: RewardType.experience, amount: 50),
        ],
        prerequisites: ['main_001'],
        economicConcept: 'Market Analysis and Trading',
        learningObjective: 'Practice analyzing market conditions and making economic decisions',
        location: 'Athens Marketplace',
        hint: 'Look for goods with high demand and low supply for the best profits',
      ),

      // Economic Education Quest
      Quest(
        id: 'education_001',
        title: 'Teaching the Children',
        description: 'The Academy needs help teaching young Athenians about economics. Share your knowledge with the next generation.',
        type: QuestType.economic,
        difficulty: QuestDifficulty.medium,
        objectives: [
          QuestObjective(
            id: 'prepare_lesson',
            description: 'Prepare a lesson about supply and demand',
            type: ObjectiveType.learn,
            parameters: {'concept': 'teaching_preparation'},
          ),
          QuestObjective(
            id: 'teach_students',
            description: 'Teach 10 young students about economics',
            type: ObjectiveType.talk,
            parameters: {'target': 'students', 'topic': 'economics'},
            targetProgress: 10,
          ),
          QuestObjective(
            id: 'practical_exercise',
            description: 'Guide students through a practical trading exercise',
            type: ObjectiveType.learn,
            parameters: {'concept': 'hands_on_learning'},
          ),
        ],
        rewards: [
          QuestReward(type: RewardType.experience, amount: 300),
          QuestReward(type: RewardType.reputation, amount: 40),
          QuestReward(type: RewardType.item, amount: 1, itemId: 'teacher_scroll'),
        ],
        prerequisites: ['main_003'],
        economicConcept: 'Economic Education and Knowledge Transfer',
        learningObjective: 'Learn how to explain economic concepts to others and the importance of economic literacy',
        giver: 'Academy Teacher',
        location: 'Athens Academy',
        hint: 'Use simple examples that children can understand and relate to',
      ),
    ];
  }
}