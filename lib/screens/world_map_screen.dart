import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/world_map.dart';
import '../providers/player_provider.dart';

class WorldMapScreen extends ConsumerStatefulWidget {
  const WorldMapScreen({super.key});

  @override
  ConsumerState<WorldMapScreen> createState() => _WorldMapScreenState();
}

class _WorldMapScreenState extends ConsumerState<WorldMapScreen> with SingleTickerProviderStateMixin {
  String? selectedCityId;
  String currentLocation = 'athens'; // Player's current location
  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    // Auto-select current location so user sees the panel
    selectedCityId = 'athens';
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  // City locations on the map (x, y from 0-1000)
  final List<CityLocation> cities = [
    const CityLocation(
      cityId: 'athens',
      name: 'Athens',
      description: 'The cultural and economic heart of Greece. Home to philosophers, merchants, and the Academy.',
      x: 620,
      y: 580,
      iconPath: 'assets/icons/city_athens.png',
      isUnlocked: true,
      connectedCities: ['thebes', 'corinth', 'marathon'],
      travelCostDrachmae: 0,
      specialFeature: 'Academy of Learning',
    ),
    const CityLocation(
      cityId: 'thebes',
      name: 'Thebes',
      description: 'A powerful military city known for its fierce warriors and strategic importance.',
      x: 550,
      y: 480,
      iconPath: 'assets/icons/city_thebes.png',
      isUnlocked: true,
      connectedCities: ['athens', 'delphi'],
      travelCostDrachmae: 25,
      travelTimeMinutes: 30,
      specialFeature: 'Military Training',
    ),
    const CityLocation(
      cityId: 'corinth',
      name: 'Corinth',
      description: 'A wealthy trading hub connecting the Aegean and Ionian seas. Rich merchants and luxury goods abound.',
      x: 450,
      y: 650,
      iconPath: 'assets/icons/city_corinth.png',
      isUnlocked: true,
      connectedCities: ['athens', 'sparta'],
      travelCostDrachmae: 30,
      travelTimeMinutes: 35,
      specialFeature: 'Banking District',
    ),
    const CityLocation(
      cityId: 'sparta',
      name: 'Sparta',
      description: 'A disciplined military society with austere values. Strength and honor above all else.',
      x: 380,
      y: 780,
      iconPath: 'assets/icons/city_sparta.png',
      isUnlocked: true,
      connectedCities: ['corinth'],
      travelCostDrachmae: 35,
      travelTimeMinutes: 45,
      specialFeature: 'Warrior Culture',
    ),
    const CityLocation(
      cityId: 'delphi',
      name: 'Delphi',
      description: 'Sacred site of the Oracle. Pilgrims journey here seeking divine wisdom and prophecy.',
      x: 420,
      y: 380,
      iconPath: 'assets/icons/city_delphi.png',
      isUnlocked: true,
      connectedCities: ['thebes'],
      travelCostDrachmae: 40,
      travelTimeMinutes: 50,
      specialFeature: 'Oracle of Delphi',
    ),
    const CityLocation(
      cityId: 'marathon',
      name: 'Marathon',
      description: 'Coastal town famous for athletic competitions and the historic battle against Persia.',
      x: 720,
      y: 520,
      iconPath: 'assets/icons/city_marathon.png',
      isUnlocked: true,
      connectedCities: ['athens'],
      travelCostDrachmae: 20,
      travelTimeMinutes: 25,
      specialFeature: 'Athletic Games',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
    currentLocation = player.currentLocation ?? 'athens';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map of Greece'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.monetization_on, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text('${player.drachmae}', style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Map background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade100,
                  Colors.green.shade50,
                  Colors.amber.shade50,
                ],
              ),
            ),
          ),

          // Map content
          LayoutBuilder(
            builder: (context, constraints) {
              final mapWidth = constraints.maxWidth;
              final mapHeight = constraints.maxHeight;

              return Stack(
                children: [
                  // Draw routes between connected cities
                  CustomPaint(
                    size: Size(mapWidth, mapHeight),
                    painter: RoutesPainter(
                      cities: cities,
                      currentLocation: currentLocation,
                      selectedCity: selectedCityId,
                      mapWidth: mapWidth,
                      mapHeight: mapHeight,
                    ),
                  ),

                  // City markers
                  ...cities.map((city) {
                    final left = (city.x / 1000) * mapWidth - 30;
                    final top = (city.y / 1000) * mapHeight - 30;
                    final isCurrent = city.cityId == currentLocation;
                    final isSelected = city.cityId == selectedCityId;

                    return Positioned(
                      left: left,
                      top: top,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCityId = city.cityId;
                          });
                        },
                        child: _buildCityMarker(city, isCurrent, isSelected),
                      ),
                    );
                  }),

                  // Instructions banner
                  Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    child: _buildInstructionsBanner(),
                  ),

                  // Legend
                  Positioned(
                    top: 80,
                    left: 16,
                    child: _buildLegend(),
                  ),
                ],
              );
            },
          ),

          // Selected city info panel
          if (selectedCityId != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildCityInfoPanel(
                cities.firstWhere((c) => c.cityId == selectedCityId),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInstructionsBanner() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.info_outline, color: Colors.white, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Tap any city to view details and travel',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCityMarker(CityLocation city, bool isCurrent, bool isSelected) {
    return AnimatedBuilder(
      animation: _pulseController,
      builder: (context, child) {
        final pulseScale = isCurrent ? 1.0 : (1.0 + (_pulseController.value * 0.1));

        return Transform.scale(
          scale: pulseScale,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCurrent
                      ? Colors.green.shade600
                      : (isSelected ? Colors.blue.shade600 : Colors.indigo.shade700),
                  border: Border.all(
                    color: isSelected ? Colors.amber : Colors.white,
                    width: isSelected ? 4 : 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    isCurrent ? Icons.person_pin_circle : Icons.location_city,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Text(
                  city.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (isCurrent)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    'YOU ARE HERE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLegend() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade600,
                ),
              ),
              const SizedBox(width: 8),
              const Text('Your Location', style: TextStyle(fontSize: 12)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo.shade700,
                ),
              ),
              const SizedBox(width: 8),
              const Text('Other Cities', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCityInfoPanel(CityLocation city) {
    final player = ref.watch(playerProvider);
    final isCurrent = city.cityId == currentLocation;
    final canTravel = !isCurrent &&
        city.isUnlocked &&
        player.drachmae >= (city.travelCostDrachmae ?? 0);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isCurrent ? Icons.my_location : Icons.location_on,
                  color: isCurrent ? Colors.green : Colors.blue,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (city.specialFeature != null)
                        Text(
                          city.specialFeature!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              city.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.4,
              ),
            ),
            if (!isCurrent) ...[
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.monetization_on, size: 18, color: Colors.amber.shade700),
                  const SizedBox(width: 6),
                  Text(
                    'Travel Cost: ${city.travelCostDrachmae ?? 0} drachmae',
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.access_time, size: 18, color: Colors.blue.shade700),
                  const SizedBox(width: 6),
                  Text(
                    'Duration: ${city.travelTimeMinutes ?? 0} min',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: canTravel ? () => _travelToCity(city) : null,
                  icon: const Icon(Icons.directions_walk),
                  label: Text(canTravel ? 'Travel to ${city.name}' : 'Cannot Travel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    disabledBackgroundColor: Colors.grey.shade300,
                  ),
                ),
              ),
              if (!canTravel && player.drachmae < (city.travelCostDrachmae ?? 0))
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Not enough drachmae',
                    style: TextStyle(
                      color: Colors.red.shade700,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
            if (isCurrent) ...[
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.push('/explore/${city.cityId}');
                  },
                  icon: const Icon(Icons.explore),
                  label: const Text('Explore City'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _travelToCity(CityLocation city) {
    final player = ref.read(playerProvider);

    // Check if player can afford travel
    if (player.drachmae < (city.travelCostDrachmae ?? 0)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Not enough drachmae for travel'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Deduct travel cost
    ref.read(playerProvider.notifier).addDrachmae(-(city.travelCostDrachmae ?? 0));

    // Update current location
    ref.read(playerProvider.notifier).updateLocation(city.cityId);

    // Show travel message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Traveled to ${city.name} (-${city.travelCostDrachmae} �)'),
        backgroundColor: Colors.green,
      ),
    );

    // Navigate to city exploration
    context.push('/explore/${city.cityId}');
  }
}

/// Painter for routes between cities
class RoutesPainter extends CustomPainter {
  final List<CityLocation> cities;
  final String currentLocation;
  final String? selectedCity;
  final double mapWidth;
  final double mapHeight;

  RoutesPainter({
    required this.cities,
    required this.currentLocation,
    this.selectedCity,
    required this.mapWidth,
    required this.mapHeight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final highlightPaint = Paint()
      ..color = Colors.blue.shade600
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    // Draw routes
    for (final city in cities) {
      final startX = (city.x / 1000) * mapWidth;
      final startY = (city.y / 1000) * mapHeight;

      for (final connectedId in city.connectedCities) {
        final connectedCity = cities.firstWhere((c) => c.cityId == connectedId);
        final endX = (connectedCity.x / 1000) * mapWidth;
        final endY = (connectedCity.y / 1000) * mapHeight;

        // Highlight route if either city is selected or current
        final shouldHighlight = city.cityId == selectedCity ||
            connectedId == selectedCity ||
            city.cityId == currentLocation ||
            connectedId == currentLocation;

        canvas.drawLine(
          Offset(startX, startY),
          Offset(endX, endY),
          shouldHighlight ? highlightPaint : paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(RoutesPainter oldDelegate) {
    return oldDelegate.selectedCity != selectedCity ||
        oldDelegate.currentLocation != currentLocation;
  }
}
