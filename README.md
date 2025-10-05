# Odyssey of Olympus: Economic Myths

A Flutter educational economics game set in ancient Greece where players learn economic concepts through interactive storytelling, travel, and character interactions.

## 🎮 Current Game Status (Ready to Play!)

The game has evolved significantly beyond the initial design document and now features a **fully playable educational experience** with working economic systems.

### ✅ **Implemented Core Systems**

#### **📍 Travel & Exploration**
- **6 Visitable Locations**: Athens, Thebes, Corinth, Sparta, Delphi, Marathon
- **Interactive Map**: Cropped ancient Greece map with roads connecting cities
- **Travel System**: Real-time journeys with progress tracking, costs, and encounters
- **Ancient Greek Character**: Visual indicator showing current location on map

#### **👥 NPC Interaction System** *(NEW!)*
- **3 Interactive NPCs in Athens**:
  - **Socrates** (Philosopher) - Teaches economic value theory & opportunity cost
  - **Alexios** (Merchant) - Explains supply & demand with real examples
  - **Helen** (Trader) - Discusses international trade & specialization
- **Rich Dialogue Trees**: Multiple choice conversations with educational content
- **Visual Indicators**: NPCs glow when new conversations are available
- **Reward System**: Earn drachmae, experience, and items through dialogues

#### **🏛️ Location-Specific Experiences**
- **Athens**: Main hub with marketplace, academy, harbor, quests, and NPCs
- **Thebes**: Military-themed city with training grounds and citadel
- **Corinth**: Trading city focused on commerce and engineering
- **Sparta**: Warrior culture with barracks and military training
- **Delphi**: Sacred sanctuary with oracle and religious services
- **Marathon**: Historic battlefield with memorials and museums

#### **🎓 Educational Systems**
- **Academy Lessons**: Fully functional economic courses with progression
- **Interactive Quests**: Tutorial quest with "Do" buttons for objectives
- **Market Trading**: Complete buy/sell system with inventory integration
- **Travel Economics**: Cost/benefit decisions for routes and preparations

#### **⚔️ Encounter System**
- **Random Events**: Bandits, merchants, scholars during travel
- **Choice-Based Resolution**: Multiple options with economic consequences
- **Progress Integration**: Encounters pause journey and affect resources

#### **📊 Player Management**
- **Resource Tracking**: Health, energy, drachmae with visual bars
- **Inventory System**: Item management with different types and rarities
- **Character Progression**: Experience and reputation systems
- **Save/Load**: Automatic saving with manual save/load options

#### **🚢 Harbor System**
- **Maritime Trade**: Ship-based expeditions to distant locations
- **Route Management**: Different trade routes with varying risks/rewards
- **Cargo System**: Specialized trading mechanics

### 🎯 **Key Learning Outcomes**

Players learn economics through:
- **Supply & Demand**: Market fluctuations and price discovery
- **Opportunity Cost**: Trade-offs in travel and resource decisions
- **International Trade**: Benefits of specialization and comparative advantage
- **Value Theory**: What makes things valuable (utility vs. scarcity)
- **Market Mechanics**: How prices signal information and coordinate behavior

### 🛠️ **Technical Implementation**

```yaml
Current Dependencies:
  flutter_riverpod: ^2.4.0      # State management
  go_router: ^12.0.0            # Navigation routing
  freezed_annotation: ^2.4.0     # Immutable data models
  json_annotation: ^4.8.1       # JSON serialization
  shared_preferences: ^2.2.2    # Settings persistence
```

**Architecture:**
- **Riverpod Providers**: Modular state management for all game systems
- **Freezed Models**: Type-safe, immutable data structures
- **Custom Widgets**: Reusable game UI components
- **Hot Reload**: Fast development iteration

### 🚀 **What's Next**

**Immediate Opportunities:**
1. **Settings Screen** - Game options and preferences
2. **Achievement System** - Progress tracking and rewards
3. **Location-Specific Features** - Unique mechanics for each city
4. **Advanced Market Dynamics** - Supply/demand simulation
5. **Character Specialization** - Different economic focus paths

### 🎮 **How to Play**

1. **Start in Athens** - Meet NPCs and learn basic economics
2. **Visit the Academy** - Take structured lessons on economic concepts
3. **Complete Quests** - Interactive objectives teaching practical economics
4. **Trade in Markets** - Buy/sell goods to understand market dynamics
5. **Travel to Cities** - Experience different economic systems and cultures
6. **Talk to NPCs** - Engage in educational conversations with rewards

### 📱 **Running the Game**

```bash
# Clone the repository
git clone [repository-url]
cd olympus

# Install dependencies
flutter pub get

# Generate code files
flutter packages pub run build_runner build

# Run on device/simulator
flutter run
```

**Requirements:**
- Flutter 3.24+
- Dart 3.5+
- iOS 12+ or Android API 23+

### 🎯 **Educational Philosophy**

Rather than traditional "educational games" that feel like homework, Odyssey of Olympus integrates economics learning into engaging gameplay:

- **Story-Driven Learning**: Economic concepts emerge naturally from narrative
- **Choice Consequences**: Players learn by experiencing results of decisions
- **Character Interactions**: NPCs teach through dialogue rather than lectures
- **Real-World Applications**: Ancient Greek examples that parallel modern economics

### 🌟 **Unique Features**

- **No External Dependencies**: Pure Flutter implementation
- **Offline Play**: No internet required after installation
- **Educational Integrity**: Accurate economic concepts without oversimplification
- **Cultural Integration**: Authentic ancient Greek setting and characters
- **Scalable Design**: Modular architecture for easy content expansion

---

*The game successfully bridges entertainment and education, making economics accessible and engaging through interactive storytelling in the rich setting of ancient Greece.*