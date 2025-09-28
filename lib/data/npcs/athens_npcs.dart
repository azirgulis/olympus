import '../../models/npc.dart';

class AthensNPCsData {
  static List<NPC> getAthensNPCs() {
    return [
      const NPC(
        id: 'socrates',
        name: 'Socrates',
        title: 'Philosopher',
        description: 'The great philosopher, always ready to discuss the nature of value and trade',
        type: NPCType.philosopher,
        locationId: 'athens',
        availableDialogues: ['socrates_intro', 'socrates_value_discussion'],
        relationshipLevel: 0,
      ),
      const NPC(
        id: 'alexios',
        name: 'Alexios',
        title: 'Merchant',
        description: 'A successful trader who knows the ins and outs of the marketplace',
        type: NPCType.merchant,
        locationId: 'athens',
        availableDialogues: ['alexios_intro', 'alexios_supply_demand'],
        relationshipLevel: 0,
      ),
      const NPC(
        id: 'helen',
        name: 'Helen',
        title: 'Trader',
        description: 'An experienced trader specializing in international commerce',
        type: NPCType.trader,
        locationId: 'athens',
        availableDialogues: ['helen_intro', 'helen_trade_routes'],
        relationshipLevel: 0,
      ),
    ];
  }

  static List<NPCDialogue> getAthensDialogues() {
    return [
      // Socrates - Philosophy of Economics
      NPCDialogue(
        id: 'socrates_intro',
        npcId: 'socrates',
        title: 'Meeting Socrates',
        description: 'Your first conversation with the great philosopher',
        educationalTopic: EconomicConcept.opportunity_cost,
        nodes: [
          const DialogueNode(
            id: 'socrates_1',
            speaker: 'Socrates',
            text: 'Ah, young traveler! I see you carry the weight of commerce in your eyes. Tell me, what do you believe gives an item its true worth?',
            choices: [
              DialogueChoice(
                id: 'choice_1a',
                text: 'Its usefulness to people',
                nextNodeId: 'socrates_2a',
              ),
              DialogueChoice(
                id: 'choice_1b',
                text: 'How rare it is',
                nextNodeId: 'socrates_2b',
              ),
              DialogueChoice(
                id: 'choice_1c',
                text: 'How much work went into making it',
                nextNodeId: 'socrates_2c',
              ),
            ],
          ),
          const DialogueNode(
            id: 'socrates_2a',
            speaker: 'Socrates',
            text: 'Wise words! Utility indeed shapes value. But consider this - water is essential for life, yet we pay little for it. Jewels serve no vital purpose, yet command great prices. Why might this be?',
            choices: [
              DialogueChoice(
                id: 'choice_2a',
                text: 'Because jewels are harder to find',
                nextNodeId: 'socrates_3',
              ),
              DialogueChoice(
                id: 'choice_2b',
                text: 'Because people desire what they cannot have',
                nextNodeId: 'socrates_3',
              ),
            ],
          ),
          const DialogueNode(
            id: 'socrates_2b',
            speaker: 'Socrates',
            text: 'Ah, scarcity! Yes, when something is rare, people will pay more. But is rarity alone enough? Consider - there is only one rock exactly like this one, yet it has no value. What makes rarity valuable?',
            choices: [
              DialogueChoice(
                id: 'choice_2c',
                text: 'People must also want it',
                nextNodeId: 'socrates_3',
              ),
              DialogueChoice(
                id: 'choice_2d',
                text: 'It must also be useful',
                nextNodeId: 'socrates_3',
              ),
            ],
          ),
          const DialogueNode(
            id: 'socrates_2c',
            speaker: 'Socrates',
            text: 'The labor theory of value! Many believe this. But tell me - if I spend all day moving sand from one pile to another, does that sand become valuable because of my work?',
            choices: [
              DialogueChoice(
                id: 'choice_2e',
                text: 'No, the work must create something people want',
                nextNodeId: 'socrates_3',
              ),
              DialogueChoice(
                id: 'choice_2f',
                text: 'Work alone doesn\'t create value',
                nextNodeId: 'socrates_3',
              ),
            ],
          ),
          const DialogueNode(
            id: 'socrates_3',
            speaker: 'Socrates',
            text: 'Excellent thinking! Value emerges from the dance between what people want and what they can obtain. This is why the merchant\'s art is so vital - they connect desire with availability. Speak with Alexios in the marketplace - he understands this dance well.',
            nextNodeId: null,
            isEndNode: true,
          ),
        ],
        rewards: [
          const DialogueReward(
            type: RewardType.experience,
            value: 25,
            description: 'Gained philosophical insights into economic value',
          ),
          const DialogueReward(
            type: RewardType.drachmae,
            value: 10,
            description: 'Socrates gives you a small gift for the thoughtful discussion',
          ),
        ],
      ),

      // Alexios - Supply and Demand
      NPCDialogue(
        id: 'alexios_intro',
        npcId: 'alexios',
        title: 'The Merchant\'s Wisdom',
        description: 'Learn the fundamentals of supply and demand',
        educationalTopic: EconomicConcept.supplyAndDemand,
        nodes: [
          const DialogueNode(
            id: 'alexios_1',
            speaker: 'Alexios',
            text: 'Welcome to my stall, friend! I\'ve been trading here for twenty years. Want to know the secret to successful commerce? Watch the flow of supply and demand like a sailor watches the winds.',
            choices: [
              DialogueChoice(
                id: 'choice_a1',
                text: 'How do you read supply and demand?',
                nextNodeId: 'alexios_2',
              ),
              DialogueChoice(
                id: 'choice_a2',
                text: 'Can you give me an example?',
                nextNodeId: 'alexios_example',
              ),
            ],
          ),
          const DialogueNode(
            id: 'alexios_2',
            speaker: 'Alexios',
            text: 'Simple! When many people want something but there\'s little available, prices rise. When there\'s plenty of something but few buyers, prices fall. I watch the ships, the harvests, the seasons.',
            nextNodeId: 'alexios_example',
          ),
          const DialogueNode(
            id: 'alexios_example',
            speaker: 'Alexios',
            text: 'Last month, a storm delayed grain ships from Egypt. Bread became scarce, so bakers paid more for grain. I had stored grain in my warehouse - sold it for three times the normal price! Supply was low, demand stayed high.',
            choices: [
              DialogueChoice(
                id: 'choice_a3',
                text: 'Wasn\'t that unfair to charge more?',
                nextNodeId: 'alexios_ethics',
              ),
              DialogueChoice(
                id: 'choice_a4',
                text: 'That was smart planning!',
                nextNodeId: 'alexios_planning',
              ),
            ],
          ),
          const DialogueNode(
            id: 'alexios_ethics',
            speaker: 'Alexios',
            text: 'I understand your concern, but think deeper. High prices signal scarcity - they encourage people to use less grain and encourage more traders to bring grain from distant places. Without price signals, how would we know what\'s truly needed?',
            nextNodeId: 'alexios_conclusion',
          ),
          const DialogueNode(
            id: 'alexios_planning',
            speaker: 'Alexios',
            text: 'Exactly! But it wasn\'t just luck - I studied patterns, took risks storing grain, and connected those who needed grain with those who had it. The profit rewards this valuable service to the community.',
            nextNodeId: 'alexios_conclusion',
          ),
          const DialogueNode(
            id: 'alexios_conclusion',
            speaker: 'Alexios',
            text: 'Remember this lesson: prices are messengers. They tell us what the world needs and what it has too much of. A good trader learns to listen to these messages and act accordingly.',
            nextNodeId: null,
            isEndNode: true,
          ),
        ],
        rewards: [
          const DialogueReward(
            type: RewardType.experience,
            value: 30,
            description: 'Learned about supply and demand dynamics',
          ),
          const DialogueReward(
            type: RewardType.item,
            value: 1,
            itemId: 'trade_guide',
            description: 'Received "Trader\'s Guide to Market Signals"',
          ),
        ],
      ),

      // Helen - International Trade
      NPCDialogue(
        id: 'helen_intro',
        npcId: 'helen',
        title: 'Trade Routes and Specialization',
        description: 'Discover the benefits of international commerce',
        educationalTopic: EconomicConcept.international_trade,
        nodes: [
          const DialogueNode(
            id: 'helen_1',
            speaker: 'Helen',
            text: 'Greetings, traveler! I\'ve just returned from Phoenicia with a ship full of purple dye. Do you know why I travel so far instead of making dye here in Athens?',
            choices: [
              DialogueChoice(
                id: 'choice_h1',
                text: 'Because they make better dye there?',
                nextNodeId: 'helen_2a',
              ),
              DialogueChoice(
                id: 'choice_h2',
                text: 'Because it\'s cheaper to buy than make?',
                nextNodeId: 'helen_2b',
              ),
              DialogueChoice(
                id: 'choice_h3',
                text: 'I don\'t know - why?',
                nextNodeId: 'helen_explain',
              ),
            ],
          ),
          const DialogueNode(
            id: 'helen_2a',
            speaker: 'Helen',
            text: 'Partly true! The Phoenicians have perfected the art over centuries. But there\'s more to it...',
            nextNodeId: 'helen_explain',
          ),
          const DialogueNode(
            id: 'helen_2b',
            speaker: 'Helen',
            text: 'Exactly! But why is it cheaper? That\'s the key question...',
            nextNodeId: 'helen_explain',
          ),
          const DialogueNode(
            id: 'helen_explain',
            speaker: 'Helen',
            text: 'The Phoenicians specialize in dye-making. They have the right mollusks, the knowledge, the tools. Meanwhile, Athens excels at pottery and olive oil. Rather than each city trying to make everything poorly, we each focus on what we do best!',
            choices: [
              DialogueChoice(
                id: 'choice_h4',
                text: 'So everyone benefits from trade?',
                nextNodeId: 'helen_benefits',
              ),
              DialogueChoice(
                id: 'choice_h5',
                text: 'But doesn\'t that make us dependent on others?',
                nextNodeId: 'helen_dependency',
              ),
            ],
          ),
          const DialogueNode(
            id: 'helen_benefits',
            speaker: 'Helen',
            text: 'Precisely! I get better dye for less cost, the Phoenicians get our superior olive oil, and both cities prosper. When people specialize in what they do best, everyone ends up with more wealth.',
            nextNodeId: 'helen_conclusion',
          ),
          const DialogueNode(
            id: 'helen_dependency',
            speaker: 'Helen',
            text: 'A fair concern! Yes, we depend on each other, but this creates bonds of mutual benefit. War becomes costly when you profit from peace. Still, wise cities maintain some production of essentials for security.',
            nextNodeId: 'helen_conclusion',
          ),
          const DialogueNode(
            id: 'helen_conclusion',
            speaker: 'Helen',
            text: 'This is why I love trade - it connects distant peoples, spreads ideas along with goods, and creates prosperity. Every trade route is a thread in the great tapestry of human cooperation.',
            nextNodeId: null,
            isEndNode: true,
          ),
        ],
        rewards: [
          const DialogueReward(
            type: RewardType.experience,
            value: 35,
            description: 'Learned about comparative advantage and international trade',
          ),
          const DialogueReward(
            type: RewardType.drachmae,
            value: 20,
            description: 'Helen pays you for helping unload her ship',
          ),
        ],
      ),
    ];
  }
}