import '../models/travel_encounter.dart';
import 'dart:math';

class TravelEncountersData {
  static final Random _random = Random();

  static TravelEncounter? getRandomEncounter() {
    // 30% chance of encounter
    if (_random.nextDouble() > 0.3) return null;

    final encounters = _allEncounters;
    return encounters[_random.nextInt(encounters.length)];
  }

  static final List<TravelEncounter> _allEncounters = [
    // Merchant encounters - trading opportunities
    const TravelEncounter(
      id: 'merchant_1',
      title: 'Traveling Merchant',
      description: 'A merchant offers to sell you rare silk at a discount: 50 drachmae instead of the usual 500. But you\'re suspicious...',
      type: EncounterType.merchant,
      economicLesson: 'If a deal seems too good to be true, it probably is (information asymmetry)',
      choices: [
        EncounterChoice(
          id: 'buy',
          text: 'Buy the silk (50 drachmae)',
          outcome: EncounterOutcome(
            resultText: 'The silk is fake! You\'ve been scammed. This teaches: always verify quality before buying.',
            drachmaeChange: -50,
          ),
        ),
        EncounterChoice(
          id: 'decline',
          text: 'Politely decline',
          outcome: EncounterOutcome(
            resultText: 'Wise choice. Later you hear others were scammed by the same merchant.',
            reputationChanges: {'hermes': 5},
          ),
        ),
      ],
    ),

    const TravelEncounter(
      id: 'merchant_2',
      title: 'Legitimate Trader',
      description: 'A reputable merchant offers to buy your travel supplies for 60 drachmae. You paid 50.',
      type: EncounterType.merchant,
      economicLesson: 'Quick profits through arbitrage - buying low and selling high',
      choices: [
        EncounterChoice(
          id: 'sell',
          text: 'Sell the supplies',
          outcome: EncounterOutcome(
            resultText: 'You made 10 drachmae profit! This is arbitrage in action.',
            drachmaeChange: 60,
            itemLost: 'travel_supplies',
          ),
        ),
        EncounterChoice(
          id: 'keep',
          text: 'Keep the supplies',
          outcome: EncounterOutcome(
            resultText: 'You keep your supplies. Sometimes the best trade is no trade.',
          ),
        ),
      ],
    ),

    // Bandit encounters - risk management
    const TravelEncounter(
      id: 'bandit_1',
      title: 'Bandits!',
      description: 'Bandits demand 30 drachmae. You could fight them or pay.',
      type: EncounterType.bandit,
      economicLesson: 'Insurance and risk: paying now to avoid bigger losses',
      choices: [
        EncounterChoice(
          id: 'pay',
          text: 'Pay 30 drachmae',
          outcome: EncounterOutcome(
            resultText: 'You paid them off. It\'s like buying insurance - a small cost to avoid big loss.',
            drachmaeChange: -30,
          ),
        ),
        EncounterChoice(
          id: 'fight',
          text: 'Fight them',
          outcome: EncounterOutcome(
            resultText: 'You fought bravely but got injured. High risk, high cost.',
            healthChange: -20,
            energyChange: -15,
          ),
        ),
        EncounterChoice(
          id: 'run',
          text: 'Run away',
          outcome: EncounterOutcome(
            resultText: 'You escaped safely but exhausted yourself.',
            energyChange: -10,
          ),
        ),
      ],
    ),

    // Traveler encounters - information and networking
    const TravelEncounter(
      id: 'traveler_1',
      title: 'Fellow Traveler',
      description: 'A traveler shares market information: "Wheat prices are about to spike in Thebes!"',
      type: EncounterType.traveler,
      economicLesson: 'Information is valuable - market intelligence can lead to profit',
      choices: [
        EncounterChoice(
          id: 'thank',
          text: 'Thank them and remember',
          outcome: EncounterOutcome(
            resultText: 'You gained valuable market intelligence! Use this to buy low, sell high.',
            reputationChanges: {'hermes': 3},
          ),
        ),
        EncounterChoice(
          id: 'share',
          text: 'Share your own information',
          outcome: EncounterOutcome(
            resultText: 'Information sharing builds networks. They give you 10 drachmae as thanks.',
            drachmaeChange: 10,
            reputationChanges: {'hermes': 5},
          ),
        ),
      ],
    ),

    // Oracle/philosophical encounters - economic wisdom
    const TravelEncounter(
      id: 'oracle_1',
      title: 'Wandering Philosopher',
      description: 'A philosopher asks: "What is more valuable - gold in your pocket, or seeds in the ground?"',
      type: EncounterType.oracle,
      economicLesson: 'Investment vs. consumption - future value vs. present enjoyment',
      choices: [
        EncounterChoice(
          id: 'gold',
          text: 'Gold in pocket',
          outcome: EncounterOutcome(
            resultText: 'The philosopher smiles. "Liquidity has value, but growth comes from investment."',
          ),
        ),
        EncounterChoice(
          id: 'seeds',
          text: 'Seeds in ground',
          outcome: EncounterOutcome(
            resultText: 'The philosopher nods. "Investment creates future wealth. Here\'s 20 drachmae for wisdom."',
            drachmaeChange: 20,
            reputationChanges: {'athena': 5},
          ),
        ),
      ],
    ),

    // Random events - externalities
    const TravelEncounter(
      id: 'event_1',
      title: 'Helpful Stranger',
      description: 'Someone dropped a coin purse! You could keep it or try to find the owner.',
      type: EncounterType.event,
      economicLesson: 'Honesty builds reputation, which has long-term economic value',
      choices: [
        EncounterChoice(
          id: 'keep',
          text: 'Keep it (50 drachmae)',
          outcome: EncounterOutcome(
            resultText: 'Short-term gain, but people saw you. Your reputation suffers.',
            drachmaeChange: 50,
            reputationChanges: {'athens': -10, 'zeus': -5},
          ),
        ),
        EncounterChoice(
          id: 'return',
          text: 'Find the owner',
          outcome: EncounterOutcome(
            resultText: 'The grateful owner gives you 30 drachmae reward and praises your honesty!',
            drachmaeChange: 30,
            reputationChanges: {'athens': 10, 'zeus': 10},
          ),
        ),
      ],
    ),

    const TravelEncounter(
      id: 'event_2',
      title: 'Weather Delay',
      description: 'A storm blocks the road. You can wait it out or pay for a covered wagon shortcut.',
      type: EncounterType.event,
      economicLesson: 'Time is money - sometimes paying more saves time and energy',
      choices: [
        EncounterChoice(
          id: 'wait',
          text: 'Wait for free',
          outcome: EncounterOutcome(
            resultText: 'You waited 3 hours. Time is a resource too!',
            energyChange: -5,
          ),
        ),
        EncounterChoice(
          id: 'pay',
          text: 'Pay 15 drachmae for wagon',
          outcome: EncounterOutcome(
            resultText: 'You arrive quickly and rested. Efficiency has value!',
            drachmaeChange: -15,
          ),
        ),
      ],
    ),

    const TravelEncounter(
      id: 'merchant_3',
      title: 'Bulk Discount Offer',
      description: 'A merchant offers: "Buy 3 bread loaves for 12 drachmae instead of 15!"',
      type: EncounterType.merchant,
      economicLesson: 'Economies of scale - buying in bulk reduces per-unit cost',
      choices: [
        EncounterChoice(
          id: 'bulk',
          text: 'Buy 3 for 12 drachmae',
          outcome: EncounterOutcome(
            resultText: 'You saved 3 drachmae! Bulk buying reduces unit cost (economies of scale).',
            drachmaeChange: -12,
            itemGained: 'bread',
          ),
        ),
        EncounterChoice(
          id: 'single',
          text: 'Buy just 1 for 5 drachmae',
          outcome: EncounterOutcome(
            resultText: 'Sometimes buying less is smarter if you don\'t need more.',
            drachmaeChange: -5,
            itemGained: 'bread',
          ),
        ),
        EncounterChoice(
          id: 'none',
          text: 'Don\'t buy anything',
          outcome: EncounterOutcome(
            resultText: 'You conserved your resources. Discipline is valuable too.',
          ),
        ),
      ],
    ),

    const TravelEncounter(
      id: 'event_3',
      title: 'Injured Traveler',
      description: 'An injured traveler needs medicine. You have healing wine worth 15 drachmae.',
      type: EncounterType.event,
      economicLesson: 'Altruism can have economic benefits through reputation',
      choices: [
        EncounterChoice(
          id: 'help',
          text: 'Give them the wine',
          outcome: EncounterOutcome(
            resultText: 'Your kindness spreads. Multiple cities hear of your generosity!',
            itemLost: 'wine',
            reputationChanges: {'athens': 8, 'thebes': 8, 'apollo': 10},
          ),
        ),
        EncounterChoice(
          id: 'sell',
          text: 'Sell it for 20 drachmae',
          outcome: EncounterOutcome(
            resultText: 'Profit maximization in action, but at what social cost?',
            drachmaeChange: 20,
            itemLost: 'wine',
            reputationChanges: {'apollo': -5},
          ),
        ),
      ],
    ),
  ];
}
