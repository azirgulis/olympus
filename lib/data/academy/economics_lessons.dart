import '../../models/academy.dart';

class EconomicsLessons {
  static List<Lesson> getAllLessons() {
    return [
      // Beginner Level Lessons
      Lesson(
        id: 'econ_basics_001',
        title: 'What is Economics?',
        description: 'Learn the fundamental concepts of economics and why it matters in ancient Greece and today.',
        subject: 'Economics Fundamentals',
        difficulty: LessonDifficulty.beginner,
        estimatedMinutes: 15,
        teacher: 'Socrates',
        isUnlocked: true,
        prerequisites: [],
        tags: ['fundamentals', 'introduction'],
        sections: [
          LessonSection(
            id: 'intro_reading',
            title: 'Introduction to Economics',
            type: SectionType.reading,
            content: '''Economics is the study of how people make choices about using limited resources to satisfy their unlimited wants and needs.

In ancient Greece, just like today, people faced the fundamental economic problem: scarcity. The olive groves could only produce so much oil, the silver mines had limited output, and craftsmen could only make so many pottery pieces in a day.

Economics helps us understand:
• How individuals and societies make choices
• Why some goods cost more than others
• How markets work and prices are determined
• The role of trade and money in society

The Greeks were among the first to think systematically about these questions. Philosophers like Aristotle wrote about the nature of money, trade, and wealth creation.''',
          ),
          LessonSection(
            id: 'scarcity_simulation',
            title: 'Understanding Scarcity',
            type: SectionType.interactive,
            content: 'Experience scarcity firsthand by managing limited resources in an ancient Greek household.',
            interactiveData: {
              'type': 'resource_allocation',
              'scenario': 'family_budget',
              'resources': ['drachmae', 'time', 'food'],
              'decisions': 3,
            },
          ),
          LessonSection(
            id: 'quiz_basics',
            title: 'Test Your Knowledge',
            type: SectionType.quiz,
            content: 'Check your understanding of basic economic concepts.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'What is the fundamental economic problem?',
                options: [
                  'Not enough money',
                  'Scarcity - unlimited wants but limited resources',
                  'Too many markets',
                  'People don\'t know what they want'
                ],
                correctAnswer: 1,
                explanation: 'Scarcity is the fundamental economic problem because people have unlimited wants and needs, but resources are limited.',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'Which ancient Greek philosopher wrote about economics?',
                options: ['Plato', 'Aristotle', 'Homer', 'Herodotus'],
                correctAnswer: 1,
                explanation: 'Aristotle was one of the first to systematically study economics, writing about money, trade, and wealth.',
              ),
            ],
          ),
        ],
      ),

      Lesson(
        id: 'supply_demand_001',
        title: 'Supply and Demand',
        description: 'Discover how supply and demand determine prices in the Athens marketplace.',
        subject: 'Market Economics',
        difficulty: LessonDifficulty.beginner,
        estimatedMinutes: 20,
        teacher: 'Alexios the Merchant',
        prerequisites: ['econ_basics_001'],
        tags: ['supply', 'demand', 'prices', 'markets'],
        sections: [
          LessonSection(
            id: 'supply_concept',
            title: 'Understanding Supply',
            type: SectionType.reading,
            content: '''Supply refers to the quantity of a good or service that sellers are willing and able to offer at different prices.

In the Athens marketplace, olive oil merchants demonstrate supply perfectly:
• When prices are high, more merchants bring olive oil to sell
• When prices are low, fewer merchants find it profitable
• The supply curve slopes upward - higher prices lead to higher quantities supplied

Factors affecting supply:
• Production costs (labor, materials)
• Technology and efficiency
• Number of sellers
• Government regulations
• Expectations about future prices

For example, if a new olive pressing technique is invented, merchants can produce more oil at lower cost, increasing supply.''',
          ),
          LessonSection(
            id: 'demand_concept',
            title: 'Understanding Demand',
            type: SectionType.reading,
            content: '''Demand refers to the quantity of a good or service that buyers are willing and able to purchase at different prices.

In Athens, demand for pottery shows classic patterns:
• When prices are low, more families can afford decorative pottery
• When prices are high, only wealthy citizens purchase pottery
• The demand curve slopes downward - higher prices lead to lower quantities demanded

Factors affecting demand:
• Consumer income (richer citizens buy more)
• Preferences and tastes
• Population size
• Prices of related goods
• Expectations about future prices

During religious festivals, demand for ceremonial pottery increases as citizens prepare offerings for the gods.''',
          ),
          LessonSection(
            id: 'price_equilibrium',
            title: 'Market Equilibrium',
            type: SectionType.interactive,
            content: 'Use the interactive market simulator to see how supply and demand determine prices.',
            interactiveData: {
              'type': 'market_simulation',
              'product': 'olive_oil',
              'factors': ['harvest_quality', 'festival_demand', 'competitor_count'],
            },
          ),
          LessonSection(
            id: 'supply_demand_quiz',
            title: 'Supply and Demand Quiz',
            type: SectionType.quiz,
            content: 'Test your understanding of supply and demand.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'What happens to the price of grain during a drought?',
                options: [
                  'Price decreases because supply increases',
                  'Price increases because supply decreases',
                  'Price stays the same',
                  'Demand disappears'
                ],
                correctAnswer: 1,
                explanation: 'During a drought, grain supply decreases while demand remains the same, causing prices to rise.',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'If more pottery makers enter the market, what happens to pottery prices?',
                options: [
                  'Prices increase',
                  'Prices decrease',
                  'Prices are unaffected',
                  'Demand increases'
                ],
                correctAnswer: 1,
                explanation: 'More pottery makers increase the supply of pottery, which typically leads to lower prices.',
              ),
            ],
          ),
        ],
      ),

      // Intermediate Level Lessons
      Lesson(
        id: 'opportunity_cost_001',
        title: 'Opportunity Cost and Trade-offs',
        description: 'Learn why every choice has a cost and how to make better economic decisions.',
        subject: 'Decision Making',
        difficulty: LessonDifficulty.intermediate,
        estimatedMinutes: 25,
        teacher: 'Aristotle',
        prerequisites: ['econ_basics_001', 'supply_demand_001'],
        tags: ['opportunity_cost', 'trade-offs', 'decision_making'],
        sections: [
          LessonSection(
            id: 'opportunity_cost_intro',
            title: 'What is Opportunity Cost?',
            type: SectionType.reading,
            content: '''Opportunity cost is the value of the next best alternative that you give up when making a choice.

Ancient Greek Example:
A potter in Athens must choose how to spend his day:
• Option A: Make 10 decorative vases (sells for 50 drachmae each)
• Option B: Make 20 simple bowls (sells for 30 drachmae each)
• Option C: Teach pottery to students (earns 400 drachmae)

If he chooses to teach (Option C), his opportunity cost is the 500 drachmae he could have earned making vases (the next best alternative).

Key Principles:
• Every choice involves giving up something else
• Opportunity cost helps compare alternatives
• The cost is not what you paid, but what you gave up
• Good decision-makers consider opportunity costs

This concept applies to individuals, businesses, and entire city-states like Athens when deciding how to allocate resources.''',
          ),
          LessonSection(
            id: 'personal_choices',
            title: 'Personal Economic Choices',
            type: SectionType.interactive,
            content: 'Make economic decisions for an Athenian citizen and see the opportunity costs.',
            interactiveData: {
              'type': 'choice_scenario',
              'character': 'young_athenian',
              'decisions': [
                'education_vs_work',
                'save_vs_spend',
                'city_vs_countryside'
              ],
            },
          ),
          LessonSection(
            id: 'production_possibilities',
            title: 'Production Possibilities',
            type: SectionType.reading,
            content: '''Production possibilities show the trade-offs faced by individuals or societies.

Athens Production Example:
The city-state of Athens must allocate its limited resources between:
• Military defense (ships, weapons, soldiers)
• Economic development (infrastructure, education, trade)

If Athens uses more resources for defense, it has fewer available for economic growth. This trade-off is represented by the production possibilities frontier.

Real-World Applications:
• A farmer choosing between growing olives or grapes
• A craftsman deciding between quantity or quality
• A merchant choosing which goods to trade

Understanding these trade-offs helps make better decisions about resource allocation.''',
          ),
          LessonSection(
            id: 'opportunity_cost_quiz',
            title: 'Opportunity Cost Quiz',
            type: SectionType.quiz,
            content: 'Test your understanding of opportunity cost and trade-offs.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'A merchant can either trade pottery (profit: 200 drachmae) or olive oil (profit: 150 drachmae). If he chooses pottery, what is his opportunity cost?',
                options: ['200 drachmae', '150 drachmae', '350 drachmae', '50 drachmae'],
                correctAnswer: 1,
                explanation: 'The opportunity cost is the value of the next best alternative (olive oil trading), which is 150 drachmae.',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'Which statement about opportunity cost is true?',
                options: [
                  'It only applies to money',
                  'It exists for every choice made',
                  'It only affects businesses',
                  'It can be avoided with careful planning'
                ],
                correctAnswer: 1,
                explanation: 'Opportunity cost exists for every choice because resources are limited and choosing one option means giving up alternatives.',
              ),
            ],
          ),
        ],
      ),

      Lesson(
        id: 'competition_001',
        title: 'Market Competition',
        description: 'Understand how competition between sellers benefits consumers and drives innovation.',
        subject: 'Market Structure',
        difficulty: LessonDifficulty.intermediate,
        estimatedMinutes: 30,
        teacher: 'Helen the Trader',
        prerequisites: ['supply_demand_001'],
        tags: ['competition', 'markets', 'innovation', 'efficiency'],
        sections: [
          LessonSection(
            id: 'types_of_competition',
            title: 'Types of Market Competition',
            type: SectionType.reading,
            content: '''Competition occurs when multiple sellers offer similar products or services.

Types of Competition in Ancient Greece:

1. Perfect Competition (Grain Market)
• Many farmers selling identical grain
• No single farmer can influence prices
• Easy entry and exit from the market
• Prices determined by supply and demand

2. Monopoly (Rare Goods)
• Only one seller of Tyrian purple dye
• Complete control over price
• High barriers to entry (secret techniques)
• Can charge premium prices

3. Oligopoly (Shipbuilding)
• Few large shipyards in Athens
• Each affects the market significantly
• Competition through quality and service
• Some coordination possible

4. Monopolistic Competition (Pottery)
• Many potters with differentiated products
• Each has some pricing power
• Easy to enter but hard to stand out
• Competition through style and reputation''',
          ),
          LessonSection(
            id: 'benefits_competition',
            title: 'Benefits of Competition',
            type: SectionType.reading,
            content: '''Competition benefits society in several ways:

For Consumers:
• Lower prices as sellers compete for customers
• Higher quality as businesses improve to stand out
• More variety and choice
• Better customer service

For Society:
• Efficient resource allocation
• Innovation and technological progress
• Economic growth and prosperity
• Prevents abuse of market power

Athens Marketplace Example:
When multiple olive oil merchants compete:
• Prices stay reasonable
• Quality improves (better pressing, pure oil)
• Innovation occurs (better storage, packaging)
• Customer service improves (credit, delivery)

Without competition, a single merchant might:
• Charge excessive prices
• Provide poor quality oil
• Offer terrible service
• Have no incentive to improve''',
          ),
          LessonSection(
            id: 'competition_simulation',
            title: 'Competition Simulation',
            type: SectionType.simulation,
            content: 'Experience how competition affects prices and quality in a market simulation.',
            interactiveData: {
              'type': 'market_competition',
              'scenarios': ['monopoly', 'duopoly', 'many_competitors'],
              'product': 'wine',
              'variables': ['price', 'quality', 'service'],
            },
          ),
          LessonSection(
            id: 'competition_quiz',
            title: 'Competition Quiz',
            type: SectionType.quiz,
            content: 'Test your knowledge of market competition.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'What typically happens when more competitors enter a market?',
                options: [
                  'Prices increase',
                  'Prices decrease and quality improves',
                  'Nothing changes',
                  'Quality decreases'
                ],
                correctAnswer: 1,
                explanation: 'More competition typically leads to lower prices and higher quality as businesses compete for customers.',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'In which market structure does a single seller have the most pricing power?',
                options: ['Perfect competition', 'Oligopoly', 'Monopoly', 'Monopolistic competition'],
                correctAnswer: 2,
                explanation: 'In a monopoly, a single seller has complete control over the market and can set prices with little constraint.',
              ),
            ],
          ),
        ],
      ),

      // Advanced Level Lessons
      Lesson(
        id: 'international_trade_001',
        title: 'International Trade and Comparative Advantage',
        description: 'Discover why nations trade and how specialization benefits everyone.',
        subject: 'International Economics',
        difficulty: LessonDifficulty.advanced,
        estimatedMinutes: 35,
        teacher: 'Phoenician Trader',
        prerequisites: ['opportunity_cost_001', 'competition_001'],
        tags: ['trade', 'comparative_advantage', 'specialization', 'international'],
        sections: [
          LessonSection(
            id: 'why_trade',
            title: 'Why Do Nations Trade?',
            type: SectionType.reading,
            content: '''Trade occurs because different regions have different advantages in producing goods.

Mediterranean Trade Example:
• Greece: Excellent olive oil and pottery
• Egypt: Abundant grain and papyrus
• Phoenicia: Purple dye and cedar wood
• Scythia: Wheat and honey

Each region could try to produce everything, but trade allows specialization and mutual benefit.

Reasons for Trade:
1. Natural Resources: Egypt has fertile Nile soil; Greece has silver mines
2. Climate: Greece perfect for olives; Egypt ideal for grain
3. Skills and Knowledge: Greek artisans; Egyptian engineers
4. Technology: Different production techniques
5. Scale: Larger markets support specialized production

Without trade, Athens would have to:
• Grow all its own grain (inefficiently)
• Produce its own papyrus (impossible)
• Make everything locally (expensive)

Trade makes everyone better off by allowing specialization.''',
          ),
          LessonSection(
            id: 'comparative_advantage',
            title: 'Comparative Advantage',
            type: SectionType.reading,
            content: '''Comparative advantage explains why trade benefits everyone, even when one country is better at producing everything.

Example: Athens vs. Sparta Production (per day)
Athens can produce: 100 pottery pieces OR 50 olive jars
Sparta can produce: 40 pottery pieces OR 30 olive jars

Athens has absolute advantage in both goods (can produce more of each).

But look at opportunity costs:
Athens pottery: costs 0.5 olive jars (50/100)
Sparta pottery: costs 0.75 olive jars (30/40)

Athens olive jars: costs 2 pottery pieces (100/50)
Sparta olive jars: costs 1.33 pottery pieces (40/30)

Athens has comparative advantage in pottery (lower opportunity cost).
Sparta has comparative advantage in olive jars (lower opportunity cost).

If they specialize and trade:
• Athens makes only pottery: 100 pieces
• Sparta makes only olive jars: 30 jars
• They trade 40 pottery for 20 olive jars

Result: Both have more than they could produce alone!''',
          ),
          LessonSection(
            id: 'trade_simulation',
            title: 'Trade Simulation',
            type: SectionType.simulation,
            content: 'Experience comparative advantage through trading between Greek city-states.',
            interactiveData: {
              'type': 'trade_simulation',
              'participants': ['athens', 'sparta', 'corinth', 'thebes'],
              'goods': ['pottery', 'olive_oil', 'wine', 'weapons'],
              'rounds': 5,
            },
          ),
          LessonSection(
            id: 'trade_barriers',
            title: 'Trade Barriers and Their Effects',
            type: SectionType.reading,
            content: '''Sometimes governments restrict trade, but this usually reduces overall welfare.

Common Trade Barriers:
1. Tariffs: Taxes on imported goods
2. Quotas: Limits on import quantities
3. Embargos: Complete bans on trade
4. Standards: Complex regulations that favor domestic producers

Athens Pottery Protection Example:
If Athens imposes a 50% tariff on Corinthian pottery:
• Athenian pottery becomes more competitive
• Athenian potters benefit
• Athenian consumers pay higher prices
• Corinthian potters lose market
• Overall efficiency decreases

Benefits of Free Trade:
• Lower prices for consumers
• Greater variety of goods
• Encourages efficiency
• Promotes innovation
• Builds diplomatic relationships

Arguments for Protection:
• Protects domestic jobs
• National security concerns
• Infant industry support
• Fair competition issues''',
          ),
          LessonSection(
            id: 'trade_quiz',
            title: 'International Trade Quiz',
            type: SectionType.quiz,
            content: 'Test your understanding of international trade concepts.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'What is comparative advantage?',
                options: [
                  'Being able to produce more of everything',
                  'Having lower opportunity cost in producing a good',
                  'Having more natural resources',
                  'Being the first to market'
                ],
                correctAnswer: 1,
                explanation: 'Comparative advantage means having a lower opportunity cost in producing a particular good or service.',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'Who benefits from free international trade?',
                options: [
                  'Only exporting countries',
                  'Only importing countries',
                  'Only wealthy citizens',
                  'All participating countries'
                ],
                correctAnswer: 3,
                explanation: 'Free trade benefits all participating countries by allowing specialization and increasing overall efficiency and welfare.',
              ),
            ],
          ),
        ],
      ),

      Lesson(
        id: 'money_banking_001',
        title: 'Money and Banking',
        description: 'Learn how money evolved and why banks are essential to modern economies.',
        subject: 'Financial Systems',
        difficulty: LessonDifficulty.advanced,
        estimatedMinutes: 40,
        teacher: 'Temple Priest Banker',
        prerequisites: ['international_trade_001'],
        tags: ['money', 'banking', 'credit', 'interest', 'financial_systems'],
        sections: [
          LessonSection(
            id: 'evolution_of_money',
            title: 'The Evolution of Money',
            type: SectionType.reading,
            content: '''Money solved the problems of barter and made trade more efficient.

Problems with Barter:
• Double coincidence of wants (finding someone who has what you want and wants what you have)
• Difficulty in storing value
• No standard unit of account
• Indivisible goods

Evolution in Ancient Greece:
1. Barter: Direct exchange of goods
2. Commodity Money: Cattle, grain, shells
3. Metal Money: Gold and silver by weight
4. Coined Money: Standardized metal pieces
5. Representative Money: Claims on precious metals

Functions of Money:
1. Medium of Exchange: Facilitates trade
2. Unit of Account: Measures value
3. Store of Value: Preserves wealth over time

The Athenian "Owl" coins became widely accepted throughout the Mediterranean because:
• Consistent silver content
• Standardized weight
• Trusted government backing
• Beautiful, recognizable design''',
          ),
          LessonSection(
            id: 'banking_origins',
            title: 'Origins of Banking',
            type: SectionType.reading,
            content: '''Banking began in temples and expanded to serve merchants and citizens.

Early Banking Services:
1. Safe Storage: Temples provided secure vaults
2. Money Changing: Converting different currencies
3. Loans: Lending money at interest
4. Letters of Credit: Safe long-distance payments

Temple Banking in Athens:
• Priests acted as trusted intermediaries
• Sacred property was considered safe
• Religious oath ensured honesty
• Central location convenient for trade

Private Banking Development:
• Successful merchants began lending
• Specialized in trade financing
• Developed international networks
• Created more sophisticated services

Banking Benefits:
• Reduces need to carry large amounts of money
• Provides credit for business expansion
• Facilitates long-distance trade
• Efficiently allocates capital to productive uses''',
          ),
          LessonSection(
            id: 'interest_and_credit',
            title: 'Interest and Credit',
            type: SectionType.reading,
            content: '''Interest is the price of borrowing money, determined by supply and demand for credit.

Why Interest Exists:
1. Time Preference: People prefer money now to money later
2. Risk: Lenders risk not being repaid
3. Opportunity Cost: Lenders give up other uses for their money
4. Inflation: Money may be worth less in the future

Factors Affecting Interest Rates:
• Risk of default (merchant vs. farmer)
• Loan duration (short-term vs. long-term)
• Collateral provided (secured vs. unsecured)
• Economic conditions (boom vs. recession)
• Competition among lenders

Ancient Greek Example:
A merchant borrows 1,000 drachmae at 12% annual interest to buy goods in Egypt:
• Principal: 1,000 drachmae
• Interest for one year: 120 drachmae
• Total repayment: 1,120 drachmae

The merchant expects to profit more than 120 drachmae from the trade, making the loan worthwhile.

Credit Risks:
• Bad weather affecting harvests
• Pirates attacking trade ships
• Political instability in trading partners
• Competition reducing profits''',
          ),
          LessonSection(
            id: 'banking_simulation',
            title: 'Banking Simulation',
            type: SectionType.simulation,
            content: 'Run a temple bank and make lending decisions based on risk and return.',
            interactiveData: {
              'type': 'banking_simulation',
              'role': 'temple_banker',
              'decisions': ['loan_approval', 'interest_rates', 'risk_assessment'],
              'scenarios': ['merchant_loan', 'farmer_loan', 'government_loan'],
            },
          ),
          LessonSection(
            id: 'money_banking_quiz',
            title: 'Money and Banking Quiz',
            type: SectionType.quiz,
            content: 'Test your knowledge of money and banking systems.',
            quiz: [
              QuizQuestion(
                id: 'q1',
                question: 'What are the three main functions of money?',
                options: [
                  'Saving, spending, investing',
                  'Medium of exchange, unit of account, store of value',
                  'Gold, silver, copper',
                  'Banks, temples, markets'
                ],
                correctAnswer: 1,
                explanation: 'Money serves as a medium of exchange (facilitates trade), unit of account (measures value), and store of value (preserves wealth).',
              ),
              QuizQuestion(
                id: 'q2',
                question: 'Why do banks charge interest on loans?',
                options: [
                  'To make excessive profits',
                  'To compensate for risk, time preference, and opportunity cost',
                  'Because governments require it',
                  'To discourage borrowing'
                ],
                correctAnswer: 1,
                explanation: 'Interest compensates lenders for the risk of default, time preference (money now vs. later), and opportunity cost of alternative investments.',
              ),
            ],
          ),
        ],
      ),
    ];
  }
}