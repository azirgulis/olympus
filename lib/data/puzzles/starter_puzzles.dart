import '../../models/puzzle.dart';

class StarterPuzzles {
  static List<EconomicPuzzle> getAllPuzzles() {
    return [
      _supplyDemandBasics,
      _opportunityCost,
      _tradeAdvantage,
      _priceDiscovery,
      _scarcityValue,
      _inflation,
      _marketFailure,
      _taxIncidence,
      _priceElasticity,
      _economiesOfScale,
      _monopolyPower,
      _publicGoods,
      _externalCosts,
      _laborMarket,
      _interestRates,
    ];
  }

  /// Puzzle 1: Supply and Demand Basics
  static final EconomicPuzzle _supplyDemandBasics = EconomicPuzzle(
    id: 'puzzle_supply_demand_1',
    title: 'The Market Shortage',
    description:
        'The Athens marketplace has run out of olive oil! Help determine what will happen to prices.',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.easy,
    economicConcept: 'Supply and Demand',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'When there is less olive oil available but people still want to buy it, what happens to the price?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Price goes up',
            isCorrect: true,
            feedback:
                'Correct! When supply decreases but demand stays the same, prices rise.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Price goes down',
            isCorrect: false,
            feedback: 'Not quite. Less supply with same demand increases prices.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Price stays the same',
            isCorrect: false,
            feedback: 'Prices change when supply and demand are unbalanced.',
          ),
        ],
        hint: 'Think about what happens when something becomes rare.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 10),
      const PuzzleReward(type: RewardType.experience, value: 25),
    ],
  );

  /// Puzzle 2: Opportunity Cost
  static final EconomicPuzzle _opportunityCost = EconomicPuzzle(
    id: 'puzzle_opportunity_cost_1',
    title: 'The Merchant\'s Dilemma',
    description:
        'You have 50 drachmae. You can buy either pottery to sell in Sparta (profit: 30 drachmae) or wine to sell in Thebes (profit: 40 drachmae). What is the opportunity cost of choosing wine?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.easy,
    economicConcept: 'Opportunity Cost',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'If you choose to buy wine and sell it in Thebes (gaining 40 drachmae), what is your opportunity cost?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: '30 drachmae (the pottery profit you gave up)',
            isCorrect: true,
            feedback:
                'Correct! Opportunity cost is the value of the next best alternative you didn\'t choose.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: '40 drachmae (the wine profit)',
            isCorrect: false,
            feedback:
                'That\'s your gain, not your opportunity cost. Opportunity cost is what you gave up.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: '50 drachmae (the money you spent)',
            isCorrect: false,
            feedback:
                'That\'s your investment, not opportunity cost. What profit did you give up?',
          ),
        ],
        explanation:
            'Opportunity cost is the value of what you give up when you make a choice. Here, choosing wine means giving up the 30 drachmae profit from pottery.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 15),
      const PuzzleReward(type: RewardType.experience, value: 30),
    ],
  );

  /// Puzzle 3: Comparative Advantage
  static final EconomicPuzzle _tradeAdvantage = EconomicPuzzle(
    id: 'puzzle_trade_advantage_1',
    title: 'The Potter and the Farmer',
    description:
        'A potter can make 10 vases OR grow 5 bushels of wheat per day. A farmer can make 2 vases OR grow 12 bushels of wheat per day. Who should specialize in what?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Comparative Advantage',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'Who should focus on making vases?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'The potter (better at making vases)',
            isCorrect: true,
            feedback:
                'Correct! The potter is much better at making vases (10 vs 2).',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'The farmer',
            isCorrect: false,
            feedback: 'The farmer is better at growing wheat.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Both equally',
            isCorrect: false,
            feedback: 'They have different strengths.',
          ),
        ],
      ),
      PuzzleQuestion(
        id: 'q2',
        questionText: 'What should the farmer specialize in?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Growing wheat',
            isCorrect: true,
            feedback:
                'Correct! The farmer is better at wheat (12 bushels vs 5).',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Making vases',
            isCorrect: false,
            feedback: 'The farmer isn\'t as good at vases.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 20),
      const PuzzleReward(type: RewardType.experience, value: 40),
    ],
  );

  /// Puzzle 4: Price Discovery
  static final EconomicPuzzle _priceDiscovery = EconomicPuzzle(
    id: 'puzzle_price_discovery_1',
    title: 'Finding the Right Price',
    description:
        'You want to sell fish in the market. At 10 drachmae, 5 people want to buy. At 5 drachmae, 15 people want to buy. You have 10 fish. What price should you set?',
    type: PuzzleType.calculation,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Market Equilibrium',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'At what price will you sell all your fish and maximize revenue?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: '10 drachmae (5 buyers × 10 = 50 drachmae, 5 fish left over)',
            isCorrect: false,
            feedback: 'You\'d have unsold fish!',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: '7-8 drachmae (around 10 buyers, sells all fish)',
            isCorrect: true,
            feedback:
                'Correct! The equilibrium price is where supply meets demand.',
            value: 8,
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: '5 drachmae (15 buyers want fish but you only have 10)',
            isCorrect: false,
            feedback: 'You could charge more since demand exceeds supply!',
          ),
        ],
        explanation:
            'The best price is where the number of buyers equals your supply. Between 5-10 drachmae, about 10 people will buy at 7-8 drachmae.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 25),
      const PuzzleReward(type: RewardType.experience, value: 50),
    ],
  );

  /// Puzzle 5: Scarcity and Value
  static final EconomicPuzzle _scarcityValue = EconomicPuzzle(
    id: 'puzzle_scarcity_1',
    title: 'The Rare Gem',
    description:
        'A merchant has 100 common stones and 1 rare diamond. Both are pretty, but which is worth more?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.easy,
    economicConcept: 'Scarcity and Value',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'Why is the diamond worth more than the common stones?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Because it is rare (scarce)',
            isCorrect: true,
            feedback:
                'Correct! Scarcity increases value when people want something.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Because it is prettier',
            isCorrect: false,
            feedback: 'Beauty is subjective. Scarcity is the key factor.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Because merchants say so',
            isCorrect: false,
            feedback: 'Value comes from scarcity and demand, not just opinion.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 12),
      const PuzzleReward(type: RewardType.experience, value: 20),
    ],
  );

  /// Puzzle 6: Inflation
  static final EconomicPuzzle _inflation = EconomicPuzzle(
    id: 'puzzle_inflation_1',
    title: 'The Rising Prices',
    description:
        'Prices across Athens are rising. The price of bread was 1 drachma last year, now it\'s 2 drachmae. What\'s happening?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Inflation',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'If prices double but your wages stay the same, what happens to your purchasing power?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'It cuts in half',
            isCorrect: true,
            feedback:
                'Correct! You can now buy only half as much with the same wages.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'It doubles',
            isCorrect: false,
            feedback: 'Your money buys less, not more, when prices rise.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'It stays the same',
            isCorrect: false,
            feedback: 'Higher prices mean you can afford fewer goods.',
          ),
        ],
        hint: 'Think about how many loaves you could buy before vs. now.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 35),
      const PuzzleReward(type: RewardType.experience, value: 45),
    ],
  );

  /// Puzzle 7: Market Failure
  static final EconomicPuzzle _marketFailure = EconomicPuzzle(
    id: 'puzzle_market_failure_1',
    title: 'The Polluted Harbor',
    description:
        'A dye factory dumps waste into the harbor. Fish die, fishermen lose income, but the factory profits. Who pays the cost?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.hard,
    economicConcept: 'Market Failure and Externalities',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'The dye factory doesn\'t pay for the environmental damage. Who bears this cost?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Society (fishermen, consumers, environment)',
            isCorrect: true,
            feedback:
                'Correct! This is a negative externality - costs imposed on others.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Only the factory',
            isCorrect: false,
            feedback: 'The factory profits while others suffer the costs.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Nobody - pollution has no cost',
            isCorrect: false,
            feedback: 'Pollution definitely has costs, just not paid by the polluter.',
          ),
        ],
      ),
      PuzzleQuestion(
        id: 'q2',
        questionText: 'What could solve this problem?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Government regulation or taxes on pollution',
            isCorrect: true,
            feedback:
                'Correct! Making the factory pay for the damage aligns private and social costs.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Let the market handle it',
            isCorrect: false,
            feedback: 'The market alone won\'t fix this - factory has no incentive to stop.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 50),
      const PuzzleReward(type: RewardType.experience, value: 75),
    ],
  );

  /// Puzzle 8: Tax Incidence
  static final EconomicPuzzle _taxIncidence = EconomicPuzzle(
    id: 'puzzle_tax_incidence_1',
    title: 'Who Really Pays the Tax?',
    description:
        'The government imposes a 10% tax on wine sellers. Do the sellers or buyers really pay it?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.hard,
    economicConcept: 'Tax Incidence',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'Wine sellers are taxed 10%. They raise prices by 10%. Who actually pays the tax?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Buyers (through higher prices)',
            isCorrect: true,
            feedback:
                'Correct! Tax burden often shifts to consumers through higher prices.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Only the sellers',
            isCorrect: false,
            feedback: 'Sellers pass the cost to buyers by raising prices.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'The government',
            isCorrect: false,
            feedback: 'Government collects the tax, but buyers/sellers pay it.',
          ),
        ],
        explanation:
            'The economic burden of a tax can differ from who legally pays it. It depends on price elasticity.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 45),
      const PuzzleReward(type: RewardType.experience, value: 70),
    ],
  );

  /// Puzzle 9: Price Elasticity
  static final EconomicPuzzle _priceElasticity = EconomicPuzzle(
    id: 'puzzle_elasticity_1',
    title: 'Raising Prices',
    description:
        'You sell both bread (necessity) and jewelry (luxury). If you raise prices 20%, which loses more customers?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Price Elasticity of Demand',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText:
            'Which product will lose more customers when price increases 20%?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Jewelry (luxury good)',
            isCorrect: true,
            feedback:
                'Correct! Luxury goods are elastic - people easily cut back when prices rise.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Bread (necessity)',
            isCorrect: false,
            feedback: 'People need bread, so demand doesn\'t drop much with price.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Both equally',
            isCorrect: false,
            feedback: 'Necessities and luxuries respond differently to price changes.',
          ),
        ],
        hint: 'Can people easily do without the product?',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 40),
      const PuzzleReward(type: RewardType.experience, value: 55),
    ],
  );

  /// Puzzle 10: Economies of Scale
  static final EconomicPuzzle _economiesOfScale = EconomicPuzzle(
    id: 'puzzle_economies_scale_1',
    title: 'The Big Pottery Workshop',
    description:
        'A large pottery workshop produces 1000 vases at 5 drachmae each. A small workshop produces 10 vases at 12 drachmae each. Why?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Economies of Scale',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'Why can the large workshop produce cheaper vases?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Fixed costs spread over more units',
            isCorrect: true,
            feedback:
                'Correct! Kiln, tools, building costs divided by 1000 vs 10 vases.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'They use cheaper materials',
            isCorrect: false,
            feedback: 'Cost advantage comes from spreading fixed costs, not materials.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: 'Small workshops are lazy',
            isCorrect: false,
            feedback: 'It\'s about fixed costs, not effort.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 38),
      const PuzzleReward(type: RewardType.experience, value: 52),
    ],
  );

  /// Puzzle 11: Monopoly Power
  static final EconomicPuzzle _monopolyPower = EconomicPuzzle(
    id: 'puzzle_monopoly_1',
    title: 'The Only Well',
    description:
        'A merchant controls the only well in a desert town. He charges whatever he wants. What happens?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Monopoly Power',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'Why can the merchant charge high prices?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'No competition - people must buy from him',
            isCorrect: true,
            feedback: 'Correct! Monopoly power comes from lack of alternatives.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Water is expensive to produce',
            isCorrect: false,
            feedback: 'He charges high prices because he can, not because of costs.',
          ),
        ],
      ),
      PuzzleQuestion(
        id: 'q2',
        questionText: 'What would lower prices?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Another well owner (competition)',
            isCorrect: true,
            feedback: 'Correct! Competition forces prices down.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Asking nicely',
            isCorrect: false,
            feedback: 'Without competition, monopolist has no incentive to lower prices.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 42),
      const PuzzleReward(type: RewardType.experience, value: 60),
    ],
  );

  /// Puzzle 12: Public Goods
  static final EconomicPuzzle _publicGoods = EconomicPuzzle(
    id: 'puzzle_public_goods_1',
    title: 'The City Walls',
    description:
        'Athens needs walls for defense. Everyone benefits, but who should pay?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.hard,
    economicConcept: 'Public Goods',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'Why won\'t private merchants build the walls themselves?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Free rider problem - others benefit without paying',
            isCorrect: true,
            feedback:
                'Correct! Can\'t exclude non-payers, so private provision fails.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Merchants don\'t care about defense',
            isCorrect: false,
            feedback: 'They care, but can\'t profit from something everyone gets for free.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 48),
      const PuzzleReward(type: RewardType.experience, value: 72),
    ],
  );

  /// Puzzle 13: External Costs
  static final EconomicPuzzle _externalCosts = EconomicPuzzle(
    id: 'puzzle_externality_1',
    title: 'The Noisy Workshop',
    description:
        'A blacksmith\'s noise disturbs neighbors, lowering their property values. Should he compensate them?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Negative Externalities',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'The blacksmith profits 100 drachmae but imposes 150 drachmae in costs on neighbors. What\'s the social outcome?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: 'Net loss of 50 drachmae to society',
            isCorrect: true,
            feedback: 'Correct! Total costs (150) exceed benefits (100).',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: 'Net gain because blacksmith profits',
            isCorrect: false,
            feedback: 'Must consider costs to others, not just blacksmith\'s profit.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 36),
      const PuzzleReward(type: RewardType.experience, value: 50),
    ],
  );

  /// Puzzle 14: Labor Market
  static final EconomicPuzzle _laborMarket = EconomicPuzzle(
    id: 'puzzle_labor_1',
    title: 'Hiring Workers',
    description:
        'You need workers for harvest. At 10 drachmae/day, 100 workers apply. At 5 drachmae/day, only 30 apply. What wage do you pay?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.medium,
    economicConcept: 'Labor Supply and Demand',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'If you need 50 workers and want to minimize cost while getting enough workers, what wage?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: '7-8 drachmae (attracts 50 workers)',
            isCorrect: true,
            feedback: 'Correct! Pay just enough to attract the workers you need.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: '5 drachmae (minimum)',
            isCorrect: false,
            feedback: 'You only get 30 workers, not enough for your harvest.',
          ),
          const PuzzleAnswer(
            id: 'a3',
            text: '10 drachmae (maximum)',
            isCorrect: false,
            feedback: 'You\'d get 100 workers but overpay for what you need.',
          ),
        ],
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 44),
      const PuzzleReward(type: RewardType.experience, value: 58),
    ],
  );

  /// Puzzle 15: Interest Rates
  static final EconomicPuzzle _interestRates = EconomicPuzzle(
    id: 'puzzle_interest_1',
    title: 'The Moneylender',
    description:
        'A merchant offers you 100 drachmae today or 120 drachmae next year. Which is better?',
    type: PuzzleType.multipleChoice,
    difficulty: PuzzleDifficulty.hard,
    economicConcept: 'Time Value of Money',
    questions: [
      PuzzleQuestion(
        id: 'q1',
        questionText: 'If the interest rate is 25%, which is better?',
        type: QuestionType.singleChoice,
        answers: [
          const PuzzleAnswer(
            id: 'a1',
            text: '100 now (worth 125 next year at 25% interest)',
            isCorrect: true,
            feedback: 'Correct! 100 today invested at 25% = 125, better than 120.',
          ),
          const PuzzleAnswer(
            id: 'a2',
            text: '120 next year',
            isCorrect: false,
            feedback: '100 today can earn more than 20 drachmae if interest is 25%.',
          ),
        ],
        explanation:
            'Money today is worth more than the same amount in the future because it can earn interest.',
      ),
    ],
    rewards: [
      const PuzzleReward(type: RewardType.drachmae, value: 52),
      const PuzzleReward(type: RewardType.experience, value: 80),
    ],
  );
}
