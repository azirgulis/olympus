import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/player_provider.dart';
import '../../providers/market_provider.dart';
import '../../providers/game_state_provider.dart';
import '../../providers/simple_save_provider.dart';
import '../../providers/quest_provider.dart';
import '../../providers/academy_provider.dart';
import '../../providers/harbor_provider.dart';
import '../../providers/npc_provider.dart';
import '../../widgets/game_ui/resource_bar.dart';
import '../market_screen.dart';
import '../quest_screen.dart';
import '../academy_screen.dart';
import '../harbor_screen.dart';
import '../dialogs/npc_dialogue_dialog.dart';

class AthensScreen extends ConsumerStatefulWidget {
  const AthensScreen({super.key});

  @override
  ConsumerState<AthensScreen> createState() => _AthensScreenState();
}

class _AthensScreenState extends ConsumerState<AthensScreen> {
  @override
  void initState() {
    super.initState();
    // Initialize game state and market when entering Athens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(gameStateProvider.notifier).initializeGame();
      ref.read(marketProvider.notifier).initializeMarkets();

      // Auto-save when entering Athens
      SaveGameService.autoSave(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    final gameState = ref.watch(gameStateProvider);
    final availableQuests = ref.watch(availableQuestsProvider);
    final activeQuests = ref.watch(activeQuestsProvider);
    final unlockedLessons = ref.watch(unlockedLessonsProvider);
    final completedLessons = ref.watch(completedLessonsProvider);
    final unlockedRoutes = ref.watch(unlockedRoutesProvider);
    final activeExpeditions = ref.watch(activeExpeditionsProvider);
    final isFirstVisit = !(gameState.completedTutorials['athens_intro'] ?? false);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEEB), // Sky blue
              Color(0xFFE6B17A), // Sandy color
              Color(0xFF8B4513), // Ancient brown
            ],
            stops: [0.0, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with player stats
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (context.canPop()) {
                              context.pop();
                            } else {
                              context.go('/game');
                            }
                          },
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'ATHENS',
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 48), // Balance the back button
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.favorite,
                            label: 'Health',
                            value: player.health,
                            maxValue: 100,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.flash_on,
                            label: 'Energy',
                            value: player.energy,
                            maxValue: 100,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ResourceBar(
                            icon: Icons.monetization_on,
                            label: 'Drachmae',
                            value: player.drachmae,
                            maxValue: 500,
                            color: Colors.amber,
                            showAsNumber: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Main content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Welcome message for first visit
                      if (isFirstVisit) ...[
                        _buildWelcomeCard(),
                        const SizedBox(height: 20),
                      ],

                      // Athens description
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFF8B4513), width: 2),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.location_city,
                              size: 48,
                              color: const Color(0xFF8B4513),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'The Agora of Athens',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF8B4513),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Welcome to the bustling marketplace of Athens! Here, merchants from across the Mediterranean gather to trade goods, philosophers debate economic theories, and fortunes are made and lost.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Action buttons
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.0,
                        children: [
                          _buildActionCard(
                            'Explore City',
                            'Walk around Athens\nExplore the city',
                            Icons.explore,
                            () => context.push('/explore/athens'),
                          ),
                          _buildActionCard(
                            'Marketplace',
                            'Buy and sell goods\nLearn supply & demand',
                            Icons.storefront,
                            () => _navigateToMarket(),
                          ),
                          _buildAcademyActionCard(
                            unlockedLessons.length,
                            completedLessons.length,
                          ),
                          _buildHarborActionCard(
                            unlockedRoutes.length,
                            activeExpeditions.length,
                          ),
                          _buildQuestActionCard(
                            availableQuests.length,
                            activeQuests.length,
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // NPCs section
                      _buildNPCSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFFFD700).withValues(alpha: 0.9),
            const Color(0xFFFFA500).withValues(alpha: 0.9),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF8B4513), width: 3),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFD700).withValues(alpha: 0.5),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            size: 40,
            color: Color(0xFF8B4513),
          ),
          const SizedBox(height: 12),
          Text(
            'Welcome to Your Odyssey!',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF8B4513),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your journey begins in Athens, the economic heart of ancient Greece. Visit the marketplace to learn the basics of trading and economics!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF8B4513),
            ),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {
              ref.read(gameStateProvider.notifier).completeTutorial('athens_intro');
            },
            child: const Text(
              'I understand',
              style: TextStyle(
                color: Color(0xFF8B4513),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(String title, String description, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF8B4513), width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: const Color(0xFF8B4513),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8B4513),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xFF8B4513).withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestActionCard(int availableCount, int activeCount) {
    return GestureDetector(
      onTap: () => _navigateToQuests(),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF8B4513), width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.assignment,
                  size: 40,
                  color: const Color(0xFF8B4513),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Quests',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Help citizens\nEarn rewards',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF8B4513).withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
            // Notification badges
            if (availableCount > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$availableCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (activeCount > 0)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$activeCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildAcademyActionCard(int unlockedCount, int completedCount) {
    return GestureDetector(
      onTap: () => _navigateToAcademy(),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF8B4513), width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: 40,
                  color: const Color(0xFF8B4513),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Academy',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Learn from philosophers\nEconomics lessons',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF8B4513).withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
            // Notification badges
            if (unlockedCount > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$unlockedCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (completedCount > 0)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$completedCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHarborActionCard(int routesCount, int expeditionsCount) {
    return GestureDetector(
      onTap: () => _navigateToHarbor(),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF8B4513), width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.sailing,
                  size: 40,
                  color: const Color(0xFF8B4513),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Harbor',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Trade with distant lands\nInternational commerce',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF8B4513).withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
            // Notification badges
            if (routesCount > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFF2E86AB),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$routesCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (expeditionsCount > 0)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$expeditionsCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildNPCSection() {
    final npcsInAthens = ref.watch(npcsInLocationProvider('athens'));

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF8B4513), width: 2),
      ),
      child: Column(
        children: [
          const Text(
            'Notable Citizens',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8B4513),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: npcsInAthens.map((npc) => _buildNPCIcon(npc)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildNPCIcon(dynamic npcInput) {
    // Handle both old string format and new NPC object
    if (npcInput is String) {
      // Legacy support
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF8B4513),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            npcInput,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF8B4513),
            ),
          ),
        ],
      );
    }

    // New NPC object handling
    final npc = npcInput;
    final availableDialogues = ref.read(npcProvider.notifier).getAvailableDialoguesForNPC(npc.id);
    final hasNewDialogues = availableDialogues.isNotEmpty;

    return GestureDetector(
      onTap: () => _showNPCDialog(npc),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _getNPCTypeColor(npc.type),
                  shape: BoxShape.circle,
                  border: hasNewDialogues
                    ? Border.all(color: Colors.amber, width: 3)
                    : null,
                ),
                child: Icon(
                  _getNPCTypeIcon(npc.type),
                  color: Colors.white,
                  size: 24,
                ),
              ),
              if (hasNewDialogues)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${npc.name}\n${npc.title}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: hasNewDialogues ? Colors.amber.shade800 : const Color(0xFF8B4513),
              fontWeight: hasNewDialogues ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Color _getNPCTypeColor(dynamic type) {
    if (type.toString() == 'NPCType.philosopher') return Colors.purple.shade600;
    if (type.toString() == 'NPCType.merchant') return Colors.green.shade600;
    if (type.toString() == 'NPCType.trader') return Colors.blue.shade600;
    return const Color(0xFF8B4513);
  }

  IconData _getNPCTypeIcon(dynamic type) {
    if (type.toString() == 'NPCType.philosopher') return Icons.psychology;
    if (type.toString() == 'NPCType.merchant') return Icons.store;
    if (type.toString() == 'NPCType.trader') return Icons.local_shipping;
    return Icons.person;
  }

  void _showNPCDialog(dynamic npc) {
    showDialog(
      context: context,
      builder: (context) => NPCDialogueDialog(npc: npc),
    );
  }

  void _navigateToMarket() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MarketScreen(locationId: 'athens'),
      ),
    );
  }

  void _navigateToQuests() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const QuestScreen(),
      ),
    );
  }

  void _navigateToAcademy() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AcademyScreen(),
      ),
    );
  }

  void _navigateToHarbor() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HarborScreen(),
      ),
    );
  }

  void _showComingSoon(String feature) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$feature Coming Soon!'),
        content: Text('The $feature will be available in a future update.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}