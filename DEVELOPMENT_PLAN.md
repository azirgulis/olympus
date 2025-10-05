# Development Plan - Odyssey of Olympus: Economic Myths
*Revised: Wrath of the Gods-Inspired Adventure RPG*

**Target Timeline:** 8 months
**Start Date:** [Add your start date]
**Current Phase:** Phase 1 - Core Exploration & Movement
**Game Vision:** Open-world 2D exploration RPG where players learn economics through missions, trade, and puzzle-based challenges

---

## 🎮 Core Game Loop

1. **Explore** → Walk around 2D map, discover NPCs and locations
2. **Accept Missions** → Talk to NPCs, get complex multi-step quests
3. **Earn Money** → Complete missions, trade between cities, run port expeditions
4. **Buy Equipment** → Spend drachmae on gear, ships, information, consumables
5. **Progress** → Unlock new areas, advance main story, build reputation

---

## Phase 1: Core Exploration & Movement System (Months 1-2)
*Goal: Playable 2D exploration with one city (Athens) fully functional*

### 🗺️ **2D Map & Movement System** (NEW PRIORITY)
- [ ] Create 2D top-down map system (`lib/screens/exploration_map_screen.dart`)
  - [ ] Player avatar sprite with 4-directional movement
  - [ ] Arrow key controls (desktop) and touch/swipe controls (mobile)
  - [ ] Collision detection with buildings and boundaries
  - [ ] Camera system that follows player
  - [ ] Smooth movement animations
- [ ] Build Athens city map (`assets/maps/athens_map.json`)
  - [ ] Illustrated 2D backgrounds (Wrath of Gods style)
  - [ ] Buildings: Market, Harbor, Homes, Academy, Temple
  - [ ] Entrance triggers for each building
  - [ ] NPCs positioned in specific locations
  - [ ] Hidden paths and discoverable areas
- [ ] World map system for traveling between cities
  - [ ] Overworld map showing 6 cities (Athens, Thebes, Corinth, Sparta, Delphi, Marathon)
  - [ ] Travel routes connecting cities
  - [ ] Transition from city exploration to world map

### 🎯 **Player & Character System**
- [x] Player model with stats (health, energy, reputation)
- [ ] Starting conditions: Poor player with minimal drachmae
  - [ ] Begin with ~10-20 drachmae
  - [ ] Basic clothing, no equipment
  - [ ] Must earn money through initial fetch quests
- [ ] Character progression system
  - [ ] Level up through completing missions
  - [ ] Skill trees: Trading, Combat Puzzles, Exploration
  - [ ] Experience points from quest completion

### 💰 **Economy & Trading Core Systems**
- [ ] Enhanced Market System (`lib/providers/market_provider.dart`)
  - [ ] Dynamic pricing per city (supply/demand simulation)
  - [ ] Price differences enable arbitrage opportunities
  - [ ] Buy low in one city, sell high in another
  - [ ] Market events affect prices (festivals, shortages, wars)
  - [ ] Limited inventory space forces strategic decisions
- [ ] International Trade Port System (`lib/screens/port_screen.dart`)
  - [ ] Menu-based "send expedition and wait" system
  - [ ] Select destination (Egypt, Phoenicia, Troy, etc.)
  - [ ] Choose cargo to trade
  - [ ] Wait time (can do other activities while waiting)
  - [ ] Return with profit or loss based on events
  - [ ] Random events during voyage (pirates, storms, good winds)
- [ ] Shop System (`lib/screens/shop_screen.dart`)
  - [ ] Equipment shop: Better armor, weapons for puzzle-combat
  - [ ] Ship upgrades: Faster ships, larger cargo holds
  - [ ] Information broker: Buy tips about profitable trade routes
  - [ ] Consumables: Food, potions, tools for puzzles

### 🎲 **Combat & Puzzle System** (NEW CORE FEATURE)
- [ ] Economic puzzle encounters (`lib/screens/puzzles/`)
  - [ ] Resource allocation puzzles (distribute supplies optimally)
  - [ ] Supply chain optimization challenges
  - [ ] Trade route planning puzzles
  - [ ] Market prediction riddles
  - [ ] Negotiation scenarios (dialogue-based)
- [ ] Puzzle-based combat system
  - [ ] Turn-based encounters with economic strategy
  - [ ] Manage resources during battle (supplies, stamina, money)
  - [ ] Solve puzzles to weaken enemies
  - [ ] Bribe, negotiate, or outsmart opponents
- [ ] Combat puzzles frequency: Common
  - [ ] Random encounters while exploring
  - [ ] Scripted encounters in missions
  - [ ] Optional challenge areas for rewards

### 📱 **Core UI & Navigation**
- [ ] HUD overlay for exploration mode
  - [ ] Mini health/energy bars
  - [ ] Current drachmae display
  - [ ] Active quest tracker
  - [ ] Mini-map in corner
- [ ] Inventory screen with grid layout
  - [ ] Limited slots (upgradeable)
  - [ ] Item sorting and filtering
  - [ ] Equipment comparison
- [ ] Pause menu with save/load
- [ ] Dialogue system UI with character portraits

### 💾 **Data Persistence**
- [x] Save/load system basics
- [ ] Auto-save on major events (mission complete, city entry, purchase)
- [ ] Manual save option from pause menu
- [ ] Save current position on 2D map

### ✅ **Phase 1 Deliverable**
Playable demo where you can:
- Walk around Athens in 2D
- Talk to 3-5 NPCs
- Accept 1-2 starter missions
- Complete simple puzzle encounters
- Trade in Athens market
- Save/load game

---

## Phase 2: Quest System & World Expansion (Months 3-4)
*Goal: Full 6-city world with main questline and side missions*

### 🏛️ **Six Cities Implementation**
Each city has unique 2D explorable map with illustrated backgrounds:

- [ ] **Athens** - Starting Hub
  - [ ] 8-10 NPCs offering missions
  - [ ] Main market with diverse goods
  - [ ] Harbor for international trade
  - [ ] Academy for learning economic concepts (optional)
  - [ ] 5+ side quests

- [ ] **Thebes** - Military City
  - [ ] War-themed economy (weapons, armor expensive)
  - [ ] Resource allocation puzzle missions
  - [ ] Training grounds mini-area
  - [ ] Labyrinth entrance (puzzle dungeon)

- [ ] **Corinth** - Trading Hub
  - [ ] Best prices for international goods
  - [ ] Multiple ship upgrade shops
  - [ ] Information broker NPCs
  - [ ] Merchant guild missions

- [ ] **Sparta** - Warrior Culture
  - [ ] Opportunity cost missions (choose military vs. trade)
  - [ ] Combat puzzle arena
  - [ ] Spartan council quests
  - [ ] Unique weapon shops

- [ ] **Delphi** - Sacred Oracle Site
  - [ ] Prophecy system (hints about profitable trades)
  - [ ] Religious festivals affecting economy
  - [ ] Riddle-based quests from Oracle
  - [ ] Mystery investigation missions

- [ ] **Marathon** - Historic Battlefield
  - [ ] Memorials and historic sites
  - [ ] Veteran NPCs with war stories
  - [ ] Supply line management missions
  - [ ] Scarcity-themed economic lessons

### 📜 **Main Quest Line** (Linear Story with Side Quests Available)
- [ ] **Act 1: The Economic Crisis** (Athens)
  - [ ] Prologue: Player arrives in Athens poor and desperate
  - [ ] Learn about mysterious trade disruptions
  - [ ] First puzzle: Solve Athens market shortage
  - [ ] Meet mentor NPC who explains the greater threat
  - [ ] Objective: Earn 100 drachmae to fund journey

- [ ] **Act 2: The Investigation** (Thebes, Corinth)
  - [ ] Travel to Thebes to investigate rumors
  - [ ] Navigate Labyrinth with economic puzzles
  - [ ] Discover monopolistic conspiracy
  - [ ] Corinth: Track down merchant conspiracy members
  - [ ] Major puzzle: Expose the price-fixing cartel

- [ ] **Act 3: Building Power** (Sparta, Delphi)
  - [ ] Gain Spartan alliance through resource quest
  - [ ] Consult Delphi Oracle for divine guidance
  - [ ] Complex multi-step trade mission
  - [ ] Unlock advanced trading routes
  - [ ] Build reputation to challenge the conspiracy

- [ ] **Act 4: The Final Confrontation** (Marathon, Athens)
  - [ ] Marathon: Gather allies and resources
  - [ ] Return to Athens for final economic showdown
  - [ ] Master puzzle: Restore market equilibrium
  - [ ] Boss "battle": Debate with conspiracy leader (dialogue puzzle)
  - [ ] Resolution: Become hero of Greek economy

### 🎯 **Side Quest System** (Discovered by Exploration)
- [ ] NPC-driven side quests (20+ total)
  - [ ] Hunt the Nemean Lion (sustainability economics)
  - [ ] Trade with the Cyclops (negotiation & risk)
  - [ ] Aid the Muses (labor market concepts)
  - [ ] Merchant's Lost Cargo (opportunity cost)
  - [ ] The Counterfeiter (money & trust)
  - [ ] Festival Preparation (supply/demand surge)
  - [ ] Fisherman's Dilemma (tragedy of the commons)
  - [ ] Olympic Games Trading (event-based markets)

- [ ] Multi-step mission structure:
  1. Discovery: Talk to NPC, learn problem
  2. Investigation: Gather information from other NPCs/locations
  3. Resource Collection: Find/buy specific items
  4. Puzzle/Challenge: Solve economic puzzle or combat encounter
  5. Delivery/Resolution: Return to NPC, make final choice
  6. Reward: Drachmae, items, reputation, unlocks

### 🧩 **Advanced Puzzle & Challenge Content**
- [ ] 30+ unique economic puzzles
  - [ ] Supply chain optimization
  - [ ] Trade route calculations
  - [ ] Resource allocation under constraints
  - [ ] Market prediction challenges
  - [ ] Negotiation dialogue trees
  - [ ] Barter and exchange puzzles

- [ ] Puzzle difficulty scaling
  - [ ] Tutorial puzzles in Athens (easy)
  - [ ] Intermediate in Thebes/Corinth
  - [ ] Advanced in Sparta/Delphi
  - [ ] Master level in endgame

### 🔄 **Reputation & Relationship System**
- [ ] City reputation tracking (6 cities)
  - [ ] Affects shop prices (discounts at high rep)
  - [ ] Unlocks special missions
  - [ ] Changes NPC dialogue
  - [ ] Required minimums for story progression

- [ ] NPC memory system
  - [ ] Remember past conversations
  - [ ] Reference previous quest outcomes
  - [ ] React to player reputation
  - [ ] Unique dialogue for repeat visits

### 🌍 **Random Events & Encounters**
- [ ] While exploring cities (10% chance per area)
  - [ ] Street merchants with deals
  - [ ] Pickpockets (lose small amount)
  - [ ] Helpful citizens (gain info)
  - [ ] Mystery encounters (hidden quests)

- [ ] While traveling between cities
  - [ ] Bandits (puzzle-combat)
  - [ ] Fellow travelers (trade opportunities)
  - [ ] Natural obstacles (pay to bypass or solve puzzle)
  - [ ] Divine interventions (god NPCs)

### 📚 **Educational Content Integration**
- [ ] Learning through missions (primary method)
  - [ ] Supply & Demand: Market shortage quests
  - [ ] Opportunity Cost: Choice-based missions
  - [ ] Comparative Advantage: International trade
  - [ ] Market Equilibrium: Price-fixing exposure quest
  - [ ] Scarcity: Resource management puzzles

- [ ] Explicit teaching moments (optional)
  - [ ] NPCs explain concepts when asked
  - [ ] Academy lectures (can attend for bonuses)
  - [ ] In-game encyclopedia (unlocks as you learn)
  - [ ] Mentor character provides economic insights

### ✅ **Phase 2 Deliverable**
Complete game with:
- 6 fully explorable cities
- Main story questline (4 acts)
- 20+ side quests
- 30+ puzzles and challenges
- Full trading economy system
- International trade expeditions
- Reputation system

---

## Phase 3: Art, Audio & Content Polish (Months 5-6)
*Goal: Beautiful illustrated game with polished experience*

### 🎨 **Illustrated 2D Art Assets** (Wrath of Gods Style)
- [ ] Character art
  - [ ] Player character sprites (4 directions × 3 animation frames)
  - [ ] 30+ NPC character portraits for dialogue
  - [ ] Enemy/challenger illustrations for puzzles

- [ ] Environment art (illustrated backgrounds)
  - [ ] 6 city maps (Athens, Thebes, Corinth, Sparta, Delphi, Marathon)
  - [ ] Interior scenes (shops, homes, temples, harbors)
  - [ ] World map illustration with roads and landmarks
  - [ ] Special locations (Labyrinth, Oracle chamber, etc.)

- [ ] UI art
  - [ ] Greek pottery-inspired borders and frames
  - [ ] Custom buttons with ancient Greek motifs
  - [ ] Inventory item icons (50+ items)
  - [ ] Resource icons (drachmae, food, materials)
  - [ ] Dialogue box with character portrait frames

- [ ] Animation & effects
  - [ ] Character walking animations
  - [ ] Door opening/closing transitions
  - [ ] Market activity background animations
  - [ ] Weather effects (rain, sun, wind)
  - [ ] Particle effects for special events

### 🎵 **Audio Implementation**
- [ ] Music tracks
  - [ ] Main theme (menu screen)
  - [ ] Athens ambient music (lively marketplace)
  - [ ] Exploration music (adventure theme)
  - [ ] Tension music (important quests)
  - [ ] Combat puzzle music (strategic)
  - [ ] Victory/success jingles
  - [ ] Each city has unique musical flavor

- [ ] Sound effects
  - [ ] Footsteps on different surfaces
  - [ ] Door opens/closes
  - [ ] Coin sounds (buying/selling)
  - [ ] UI clicks and hovers
  - [ ] Puzzle success/failure sounds
  - [ ] Ambient city sounds (crowds, animals, workshops)
  - [ ] Ship sounds at harbor

### 🎁 **Advanced Features & Polish**
- [ ] Quest journal & tracker
  - [ ] Active quest list with objectives
  - [ ] Completed quest archive
  - [ ] Hints and clues page
  - [ ] Map markers for quest locations

- [ ] Achievement system
  - [ ] Complete first trade (Bronze Merchant)
  - [ ] Earn 1000 drachmae (Silver Baron)
  - [ ] Complete all side quests (Master of Economics)
  - [ ] Max reputation in all cities (Beloved Hero)
  - [ ] Solve all puzzles without hints (Scholar Supreme)
  - [ ] 30+ total achievements

- [ ] Dynamic difficulty
  - [ ] Puzzle difficulty adjusts to player performance
  - [ ] Optional hints for stuck players (costs drachmae)
  - [ ] Easy mode: More starting money, easier puzzles
  - [ ] Hard mode: Less money, complex puzzles, permadeath

- [ ] Accessibility features
  - [ ] Text size options
  - [ ] Colorblind modes
  - [ ] Control remapping
  - [ ] Screen reader support (basic)

### 🚀 **Performance & Optimization**
- [ ] Frame rate optimization (target 60fps)
- [ ] Asset loading optimization
  - [ ] Lazy load city maps (only load current area)
  - [ ] Compress images without quality loss
  - [ ] Audio streaming for music
- [ ] Memory management
  - [ ] Dispose unused assets
  - [ ] Efficient state management
  - [ ] Minimal widget rebuilds
- [ ] Battery optimization
  - [ ] Reduce background processing
  - [ ] Efficient rendering

### ✅ **Phase 3 Deliverable**
Polished game with:
- Beautiful illustrated art style
- Full soundtrack and SFX
- Achievement system
- Quest journal
- Optimized performance

---

## Phase 4: Testing & App Store Launch (Months 7-8)
*Goal: Bug-free, store-ready game*

### 🧪 **Testing & Quality Assurance**
- [ ] Comprehensive testing
  - [ ] Every quest completable
  - [ ] Every puzzle solvable
  - [ ] All NPCs functional
  - [ ] Trading economy balanced
  - [ ] Save/load works perfectly

- [ ] Platform testing
  - [ ] iOS devices (iPhone 8+ / iPad)
  - [ ] Android devices (API 23+)
  - [ ] Multiple screen sizes
  - [ ] Performance on older devices

- [ ] Playtesting with target audience
  - [ ] Ages 12+ students
  - [ ] Collect feedback on fun factor
  - [ ] Validate educational effectiveness
  - [ ] Adjust difficulty based on feedback

- [ ] Bug fixing
  - [ ] Critical: Game crashes, save corruption
  - [ ] Major: Quest blockers, economy exploits
  - [ ] Minor: Visual glitches, text errors
  - [ ] Polish: UI improvements, balance tweaks

### 📱 **App Store Preparation**
- [ ] Store assets
  - [ ] App icon (1024×1024 + all sizes)
  - [ ] Screenshots (5-8 per platform)
  - [ ] Preview video (15-30 seconds)
  - [ ] App description (compelling + keywords)
  - [ ] Privacy policy & terms of service

- [ ] iOS App Store
  - [ ] Apple Developer account
  - [ ] App Store Connect setup
  - [ ] Compliance review
  - [ ] Age rating (12+)
  - [ ] Submit for review

- [ ] Google Play Store
  - [ ] Google Play Console setup
  - [ ] Content rating questionnaire
  - [ ] Store listing optimization
  - [ ] Submit for review

### 🎓 **Educational Validation**
- [ ] Economics accuracy review
  - [ ] Consult economics educator
  - [ ] Verify all concepts are accurate
  - [ ] Ensure age-appropriate complexity

- [ ] Learning outcomes documentation
  - [ ] List of economic concepts taught
  - [ ] Mapping of quests to learning objectives
  - [ ] Teacher's guide (optional bonus)

### ✅ **Phase 4 Deliverable**
Published app on iOS and Android app stores!

---

## Post-Launch (Month 9+)

### 📈 **Launch & Marketing**
- [ ] Soft launch in select markets
- [ ] Gather user reviews and feedback
- [ ] Monitor analytics (playtime, completion rates)
- [ ] Social media presence
- [ ] Educational community outreach

### 🔄 **Updates & Expansions** (Future Content)
- [ ] **Update 1: New Islands** (Month 10)
  - [ ] Crete, Rhodes, Cyprus explorable
  - [ ] 10 new quests
  - [ ] New trade goods and routes

- [ ] **Update 2: Multiplayer Trading** (Month 12)
  - [ ] Asynchronous trade with other players
  - [ ] Leaderboards for richest merchants
  - [ ] Cooperative quests

- [ ] **Update 3: Advanced Economics** (Month 14)
  - [ ] Banking system (loans, interest)
  - [ ] Business creation (own shops)
  - [ ] Stock market equivalent

### 🐛 **Ongoing Support**
- [ ] Bug fixes and hotfixes
- [ ] Balance adjustments
- [ ] Community feature requests
- [ ] Performance improvements

---

## 📊 Progress Tracking

**Phase 1 Progress:** 15% (Basic systems exist, need 2D exploration)
**Phase 2 Progress:** 0% (Quest system exists but needs expansion)
**Phase 3 Progress:** 0% (Art and audio needed)
**Phase 4 Progress:** 0% (Testing and launch)

**Overall Progress:** ~10% (Core systems built, major features needed)

---

## 🎯 Key Success Metrics

- [ ] **Engagement:** Average 2+ hours playtime
- [ ] **Education:** 80%+ players can explain 3+ economic concepts
- [ ] **Completion:** 60%+ players finish main story
- [ ] **Retention:** 50%+ return after first session
- [ ] **Rating:** 4.0+ stars on app stores

---

## 📝 Design Notes & Decisions

**Date** | **Decision** | **Rationale**
---------|-------------|-------------
2025-10 | Shift to 2D exploration (Wrath of Gods style) | More immersive, better game feel than menu-based navigation
2025-10 | Player starts poor | Creates motivation to engage with economy; learn by necessity
2025-10 | Puzzle-based combat (common) | Teaches economic thinking through frequent challenges
2025-10 | Menu-based port trade | Simpler to implement, lets player multitask while waiting
2025-10 | 6 cities to start | Manageable scope, can expand post-launch
2025-10 | Illustrated 2D art style | Matches Wrath of Gods aesthetic, timeless visual appeal
2025-10 | Linear main story with side quests | Clear progression for learners, freedom for explorers
2025-10 | NPCs stay in place but remember you | Easier to find, still feels personal and reactive

---

## 🚀 Next Immediate Steps

1. **Build 2D exploration system** - Top priority for new game feel
2. **Create Athens city map** - First playable area
3. **Implement player movement & collision** - Core gameplay mechanic
4. **Design 5 starter puzzles** - Test educational + fun balance
5. **Create port trade menu system** - Primary money-earning mechanic
6. **Write first 3 main quests** - Beginning of story

*This development plan transforms Odyssey of Olympus into an engaging exploration-based economics adventure, inspired by classics like Wrath of the Gods while maintaining strong educational value.*
