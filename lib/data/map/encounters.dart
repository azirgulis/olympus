import '../../models/game_map.dart';

class EncountersData {
  static List<TravelEncounter> getAllEncounters() {
    return [
      // Merchant encounters
      const TravelEncounter(
        id: 'friendly_merchant',
        title: 'Traveling Merchant',
        description: 'A friendly merchant with a loaded cart approaches you on the road. His goods glint in the sunlight.',
        type: EncounterType.merchant,
        probability: 0.3,
        options: [
          EncounterOption(
            id: 'browse_goods',
            text: 'Browse his wares',
            description: 'Look at what the merchant has to offer',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainItem,
                description: 'You purchase some useful supplies',
                value: 1,
                itemId: 'provisions',
                probability: 70,
              ),
              EncounterOutcome(
                type: OutcomeType.loseDrachmae,
                description: 'You spend drachmae on goods',
                value: 25,
                probability: 100,
              ),
            ],
            cost: 25,
          ),
          EncounterOption(
            id: 'ask_news',
            text: 'Ask for news',
            description: 'Inquire about happenings in other cities',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainKnowledge,
                description: 'The merchant shares valuable information',
                value: 1,
                probability: 80,
              ),
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'You learn about trade routes',
                value: 10,
                probability: 50,
              ),
            ],
          ),
          EncounterOption(
            id: 'continue_journey',
            text: 'Continue on your way',
            description: 'Politely decline and continue traveling',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'You maintain focus on your journey',
                value: 5,
                probability: 100,
              ),
            ],
          ),
        ],
      ),

      // Bandit encounters
      const TravelEncounter(
        id: 'highway_bandits',
        title: 'Highway Bandits',
        description: 'Three rough-looking men block your path, weapons drawn. "Your purse or your life!" one shouts.',
        type: EncounterType.bandit,
        probability: 0.2,
        options: [
          EncounterOption(
            id: 'fight_bandits',
            text: 'Fight them',
            description: 'Draw your weapon and prepare for battle',
            requirements: ['weapon'],
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainDrachmae,
                description: 'You defeat the bandits and take their coin',
                value: 50,
                probability: 60,
              ),
              EncounterOutcome(
                type: OutcomeType.loseHealth,
                description: 'You sustain injuries in the fight',
                value: 20,
                probability: 40,
              ),
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'You gain combat experience',
                value: 25,
                probability: 100,
              ),
            ],
          ),
          EncounterOption(
            id: 'pay_bandits',
            text: 'Pay them off',
            description: 'Give them some coin to avoid trouble',
            cost: 30,
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.loseDrachmae,
                description: 'You hand over your purse',
                value: 30,
                probability: 100,
              ),
            ],
          ),
          EncounterOption(
            id: 'negotiate',
            text: 'Try to negotiate',
            description: 'Use your silver tongue to talk your way out',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Your diplomatic skills improve',
                value: 15,
                probability: 100,
              ),
              EncounterOutcome(
                type: OutcomeType.loseDrachmae,
                description: 'They still demand some payment',
                value: 15,
                probability: 50,
              ),
            ],
          ),
        ],
      ),

      // Philosopher encounters
      const TravelEncounter(
        id: 'wandering_philosopher',
        title: 'Wandering Philosopher',
        description: 'An elderly man in simple robes sits by the roadside, contemplating the sky. He notices your approach.',
        type: EncounterType.philosopher,
        probability: 0.15,
        options: [
          EncounterOption(
            id: 'discuss_philosophy',
            text: 'Engage in philosophical discussion',
            description: 'Sit and discuss the great questions of existence',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainKnowledge,
                description: 'Your mind expands with new ideas',
                value: 2,
                probability: 90,
              ),
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Wisdom brings experience',
                value: 20,
                probability: 70,
              ),
            ],
          ),
          EncounterOption(
            id: 'offer_donation',
            text: 'Offer a donation',
            description: 'Give coin to support the philosopher',
            cost: 20,
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainReputation,
                description: 'Your generosity is noted',
                value: 5,
                probability: 100,
              ),
              EncounterOutcome(
                type: OutcomeType.loseDrachmae,
                description: 'You give a charitable donation',
                value: 20,
                probability: 100,
              ),
            ],
          ),
          EncounterOption(
            id: 'continue_past',
            text: 'Continue past',
            description: 'Nod respectfully and continue your journey',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'You stay focused on your path',
                value: 5,
                probability: 100,
              ),
            ],
          ),
        ],
      ),

      // Traveler encounters
      const TravelEncounter(
        id: 'fellow_traveler',
        title: 'Fellow Traveler',
        description: 'Another traveler heading in the same direction offers to share the road with you.',
        type: EncounterType.traveler,
        probability: 0.25,
        options: [
          EncounterOption(
            id: 'travel_together',
            text: 'Travel together',
            description: 'Join forces for safety and companionship',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Shared stories provide insight',
                value: 10,
                probability: 80,
              ),
              EncounterOutcome(
                type: OutcomeType.gainItem,
                description: 'They share some provisions',
                value: 1,
                itemId: 'bread',
                probability: 40,
              ),
            ],
          ),
          EncounterOption(
            id: 'travel_alone',
            text: 'Prefer to travel alone',
            description: 'Politely decline their offer',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Independence has its merits',
                value: 5,
                probability: 100,
              ),
            ],
          ),
        ],
      ),

      // Soldier encounters
      const TravelEncounter(
        id: 'patrol_soldiers',
        title: 'Military Patrol',
        description: 'A group of soldiers in gleaming armor stops you. "State your business, citizen."',
        type: EncounterType.soldier,
        probability: 0.15,
        options: [
          EncounterOption(
            id: 'show_respect',
            text: 'Show proper respect',
            description: 'Greet them with appropriate deference',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainReputation,
                description: 'Your respect is noted favorably',
                value: 3,
                probability: 80,
              ),
              EncounterOutcome(
                type: OutcomeType.gainKnowledge,
                description: 'They share military intelligence',
                value: 1,
                probability: 50,
              ),
            ],
          ),
          EncounterOption(
            id: 'offer_bribe',
            text: 'Offer a gift',
            description: 'Present them with coin as a gesture of respect',
            cost: 25,
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainReputation,
                description: 'Your generosity impresses them',
                value: 5,
                probability: 90,
              ),
              EncounterOutcome(
                type: OutcomeType.loseDrachmae,
                description: 'You present a respectful gift',
                value: 25,
                probability: 100,
              ),
            ],
          ),
          EncounterOption(
            id: 'be_cautious',
            text: 'Answer cautiously',
            description: 'Provide minimal information and move on',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Caution serves you well',
                value: 5,
                probability: 100,
              ),
            ],
          ),
        ],
      ),

      // Sea encounters
      const TravelEncounter(
        id: 'storm_at_sea',
        title: 'Sudden Storm',
        description: 'Dark clouds gather and the sea begins to churn violently. A storm approaches fast!',
        type: EncounterType.event,
        probability: 0.2,
        requiredConditions: ['at_sea'],
        options: [
          EncounterOption(
            id: 'weather_storm',
            text: 'Weather the storm',
            description: 'Try to ride out the tempest',
            requirements: ['experienced_crew'],
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'You survive the storm through skill',
                value: 30,
                probability: 70,
              ),
              EncounterOutcome(
                type: OutcomeType.loseItem,
                description: 'Some cargo is lost overboard',
                value: 1,
                probability: 40,
              ),
            ],
          ),
          EncounterOption(
            id: 'seek_shelter',
            text: 'Seek shelter',
            description: 'Try to find a safe harbor',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Prudence saves the day',
                value: 15,
                probability: 90,
              ),
            ],
          ),
        ],
      ),

      // Discovery encounters
      const TravelEncounter(
        id: 'ancient_ruins',
        title: 'Ancient Ruins',
        description: 'You notice crumbling stone structures hidden among the vegetation. Ancient ruins!',
        type: EncounterType.discovery,
        probability: 0.1,
        options: [
          EncounterOption(
            id: 'explore_ruins',
            text: 'Explore the ruins',
            description: 'Investigate these mysterious structures',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainItem,
                description: 'You find an ancient artifact',
                value: 1,
                itemId: 'ancient_relic',
                probability: 30,
              ),
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Historical knowledge gained',
                value: 25,
                probability: 80,
              ),
              EncounterOutcome(
                type: OutcomeType.gainDrachmae,
                description: 'You find some old coins',
                value: 40,
                probability: 50,
              ),
            ],
          ),
          EncounterOption(
            id: 'mark_location',
            text: 'Mark location for later',
            description: 'Note the location but continue your journey',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainKnowledge,
                description: 'You remember this place',
                value: 1,
                probability: 100,
              ),
            ],
          ),
          EncounterOption(
            id: 'avoid_ruins',
            text: 'Avoid the ruins',
            description: 'These places can be dangerous',
            outcomes: [
              EncounterOutcome(
                type: OutcomeType.gainExperience,
                description: 'Caution is often wise',
                value: 5,
                probability: 100,
              ),
            ],
          ),
        ],
      ),
    ];
  }

  static List<TravelEncounter> getEncountersByType(EncounterType type) {
    return getAllEncounters().where((encounter) => encounter.type == type).toList();
  }

  static TravelEncounter? getRandomEncounter(List<String> possibleEncounterTypes, {
    List<String> conditions = const [],
  }) {
    final availableEncounters = getAllEncounters().where((encounter) {
      // Check if encounter type is in possible encounters
      bool typeMatches = possibleEncounterTypes.contains(encounter.type.name);

      // Check if all required conditions are met
      bool conditionsMet = encounter.requiredConditions.every(
        (condition) => conditions.contains(condition)
      );

      return typeMatches && conditionsMet;
    }).toList();

    if (availableEncounters.isEmpty) return null;

    // Weight by probability
    final random = DateTime.now().millisecondsSinceEpoch % 100;
    for (final encounter in availableEncounters) {
      if (random < (encounter.probability * 100)) {
        return encounter;
      }
    }

    // Fallback to random selection
    final index = DateTime.now().millisecondsSinceEpoch % availableEncounters.length;
    return availableEncounters[index];
  }

  static String getEncounterTypeDescription(EncounterType type) {
    switch (type) {
      case EncounterType.merchant:
        return 'Trading opportunities with traveling merchants';
      case EncounterType.bandit:
        return 'Dangerous encounters with highway robbers';
      case EncounterType.philosopher:
        return 'Meetings with wise thinkers and scholars';
      case EncounterType.traveler:
        return 'Interactions with fellow travelers';
      case EncounterType.soldier:
        return 'Encounters with military patrols';
      case EncounterType.priest:
        return 'Religious figures offering blessings or challenges';
      case EncounterType.scholar:
        return 'Learned individuals sharing knowledge';
      case EncounterType.mystic:
        return 'Mysterious figures with arcane knowledge';
      case EncounterType.event:
        return 'Natural events and environmental challenges';
      case EncounterType.discovery:
        return 'Archaeological finds and hidden treasures';
    }
  }
}