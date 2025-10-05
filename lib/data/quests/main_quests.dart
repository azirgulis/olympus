import '../../models/quest.dart';

class MainQuests {
  static List<Quest> getAllMainQuests() {
    return [
      _quest1,
      _quest2,
      _quest3,
      _quest4,
      _quest5,
      _quest6,
      _quest7,
      _quest8,
      _quest9,
      _quest10,
    ];
  }

  static final Quest _quest1 = Quest(
    id: 'main_1',
    title: 'A Stranger in Athens',
    description: 'Arrive in Athens poor. Earn your first drachmae.',
    type: QuestType.main,
    difficulty: QuestDifficulty.easy,
    economicConcept: 'Starting Capital',
    learningObjective: 'Limited resources affect choices',
    objectives: [
      QuestObjective(
        id: 'obj1',
        description: 'Talk to Alexios',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'alexios'},
      ),
    ],
    rewards: [QuestReward(type: RewardType.drachmae, amount: 25)],
    prerequisites: [],
    location: 'athens',
  );

  static final Quest _quest2 = Quest(
    id: 'main_2',
    title: 'Market Investigation',
    description: 'Investigate market shortages',
    type: QuestType.main,
    difficulty: QuestDifficulty.medium,
    economicConcept: 'Supply Disruption',
    learningObjective: 'Supply affects prices',
    objectives: [
      QuestObjective(
        id: 'obj2',
        description: 'Talk to Socrates',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'socrates'},
      ),
    ],
    rewards: [QuestReward(type: RewardType.drachmae, amount: 50)],
    prerequisites: ['main_1'],
    location: 'athens',
  );

  static final Quest _quest3 = Quest(
    id: 'main_3',
    title: 'First Trade',
    description: 'Make profitable trade',
    type: QuestType.main,
    difficulty: QuestDifficulty.medium,
    economicConcept: 'Arbitrage',
    learningObjective: 'Price differences = profit',
    objectives: [
      QuestObjective(
        id: 'obj3',
        description: 'Talk to Helen',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'helen'},
      ),
    ],
    rewards: [QuestReward(type: RewardType.drachmae, amount: 75)],
    prerequisites: ['main_2'],
    location: 'athens',
  );

  static final Quest _quest4 = Quest(
    id: 'main_4',
    title: 'The Merchant\'s Dilemma',
    description: 'A merchant faces hard choices. Learn about opportunity cost.',
    type: QuestType.main,
    difficulty: QuestDifficulty.medium,
    economicConcept: 'Opportunity Cost',
    learningObjective: 'Every choice has tradeoffs - choosing one option means giving up another',
    objectives: [
      QuestObjective(
        id: 'obj4_1',
        description: 'Travel to Corinth',
        type: ObjectiveType.travel,
        parameters: {'destination': 'corinth'},
      ),
      QuestObjective(
        id: 'obj4_2',
        description: 'Talk to the merchant Thaddeus',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'thaddeus'},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 100),
      QuestReward(type: RewardType.experience, amount: 50),
    ],
    prerequisites: ['main_3'],
    location: 'corinth',
  );

  static final Quest _quest5 = Quest(
    id: 'main_5',
    title: 'The Inflation Crisis',
    description: 'Wheat prices skyrocket in Thebes. Understand inflation.',
    type: QuestType.main,
    difficulty: QuestDifficulty.hard,
    economicConcept: 'Inflation',
    learningObjective: 'When money supply increases faster than goods, prices rise',
    objectives: [
      QuestObjective(
        id: 'obj5_1',
        description: 'Investigate wheat shortage in Thebes',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'theban_farmer'},
      ),
      QuestObjective(
        id: 'obj5_2',
        description: 'Talk to the Oracle at Delphi for guidance',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'oracle'},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 150),
      QuestReward(type: RewardType.reputation, amount: 10),
    ],
    prerequisites: ['main_4'],
    location: 'thebes',
  );

  static final Quest _quest6 = Quest(
    id: 'main_6',
    title: 'The Spartan Investment',
    description: 'Spartans need weapons. Learn about supply and demand.',
    type: QuestType.main,
    difficulty: QuestDifficulty.medium,
    economicConcept: 'Supply & Demand',
    learningObjective: 'When demand increases but supply stays constant, prices rise',
    objectives: [
      QuestObjective(
        id: 'obj6_1',
        description: 'Meet with Spartan general Leontes',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'leontes'},
      ),
      QuestObjective(
        id: 'obj6_2',
        description: 'Purchase 3 bronze swords',
        type: ObjectiveType.collect,
        parameters: {'itemId': 'bronze_sword', 'quantity': 3},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 200),
      QuestReward(type: RewardType.item, amount: 1, itemId: 'spartan_spear'),
    ],
    prerequisites: ['main_5'],
    location: 'sparta',
  );

  static final Quest _quest7 = Quest(
    id: 'main_7',
    title: 'Market Equilibrium',
    description: 'The market is out of balance. Restore equilibrium.',
    type: QuestType.main,
    difficulty: QuestDifficulty.hard,
    economicConcept: 'Market Equilibrium',
    learningObjective: 'Markets naturally tend toward a balance of supply and demand',
    objectives: [
      QuestObjective(
        id: 'obj7_1',
        description: 'Talk to market officials in Athens',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'market_official'},
      ),
      QuestObjective(
        id: 'obj7_2',
        description: 'Sell goods at the optimal price point',
        type: ObjectiveType.custom,
        parameters: {'action': 'sell_optimal'},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 250),
      QuestReward(type: RewardType.experience, amount: 100),
    ],
    prerequisites: ['main_6'],
    location: 'athens',
  );

  static final Quest _quest8 = Quest(
    id: 'main_8',
    title: 'The Banking Revolution',
    description: 'Discover the power of lending and interest.',
    type: QuestType.main,
    difficulty: QuestDifficulty.medium,
    economicConcept: 'Interest & Banking',
    learningObjective: 'Money can grow over time through interest on loans',
    objectives: [
      QuestObjective(
        id: 'obj8_1',
        description: 'Visit the House of Coins in Corinth',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'banker'},
      ),
      QuestObjective(
        id: 'obj8_2',
        description: 'Make your first investment',
        type: ObjectiveType.custom,
        parameters: {'action': 'invest'},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 300),
      QuestReward(type: RewardType.reputation, amount: 15),
    ],
    prerequisites: ['main_7'],
    location: 'corinth',
  );

  static final Quest _quest9 = Quest(
    id: 'main_9',
    title: 'Specialization and Trade',
    description: 'Learn why cities specialize in different goods.',
    type: QuestType.main,
    difficulty: QuestDifficulty.hard,
    economicConcept: 'Comparative Advantage',
    learningObjective: 'Specializing in what you do best and trading creates mutual benefit',
    objectives: [
      QuestObjective(
        id: 'obj9_1',
        description: 'Study Marathon\'s athletic goods production',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'marathon_craftsman'},
      ),
      QuestObjective(
        id: 'obj9_2',
        description: 'Complete a trade route between 3 cities',
        type: ObjectiveType.custom,
        parameters: {'action': 'trade_route_3_cities'},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 400),
      QuestReward(type: RewardType.experience, amount: 150),
    ],
    prerequisites: ['main_8'],
    location: 'marathon',
  );

  static final Quest _quest10 = Quest(
    id: 'main_10',
    title: 'The Economics Master',
    description: 'Prove your mastery of economic principles.',
    type: QuestType.main,
    difficulty: QuestDifficulty.veryHard,
    economicConcept: 'Economic Systems',
    learningObjective: 'Understanding how all economic principles work together',
    objectives: [
      QuestObjective(
        id: 'obj10_1',
        description: 'Consult with Socrates about economic philosophy',
        type: ObjectiveType.talk,
        parameters: {'npcId': 'socrates'},
      ),
      QuestObjective(
        id: 'obj10_2',
        description: 'Build a thriving trade network across Greece',
        type: ObjectiveType.custom,
        parameters: {'action': 'trade_network'},
      ),
      QuestObjective(
        id: 'obj10_3',
        description: 'Achieve 1000 drachmae in wealth',
        type: ObjectiveType.collect,
        parameters: {'itemId': 'drachmae', 'quantity': 1000},
      ),
    ],
    rewards: [
      QuestReward(type: RewardType.drachmae, amount: 500),
      QuestReward(type: RewardType.experience, amount: 300),
      QuestReward(type: RewardType.reputation, amount: 50),
      QuestReward(type: RewardType.item, amount: 1, itemId: 'economic_mastery_scroll'),
    ],
    prerequisites: ['main_9'],
    location: 'athens',
  );
}
