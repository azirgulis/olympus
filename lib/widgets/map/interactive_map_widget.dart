import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../models/game_map.dart';
import '../../data/map/locations.dart';
import 'ancient_greece_map.dart';

class InteractiveMapWidget extends StatefulWidget {
  final List<GameLocation> unlockedLocations;
  final String currentLocationId;
  final Function(GameLocation) onLocationTapped;
  final PlayerJourney? currentJourney;
  final VoidCallback? onAvatarTapped;
  final Offset? travelerPositionOverride;
  final Offset? travelerStartOverride;
  final Offset? travelerDestinationOverride;

  const InteractiveMapWidget({
    super.key,
    required this.unlockedLocations,
    required this.currentLocationId,
    required this.onLocationTapped,
    this.currentJourney,
    this.onAvatarTapped,
    this.travelerPositionOverride,
    this.travelerStartOverride,
    this.travelerDestinationOverride,
  });

  @override
  State<InteractiveMapWidget> createState() => _InteractiveMapWidgetState();
}

class _InteractiveMapWidgetState extends State<InteractiveMapWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) => _handleTap(details, context),
      child: AncientGreeceMap(
        unlockedLocations: widget.unlockedLocations,
        currentLocationId: widget.currentLocationId,
        onLocationTapped: widget.onLocationTapped,
        currentJourney: widget.currentJourney,
        travelerPositionOverride: widget.travelerPositionOverride,
        travelerStartOverride: widget.travelerStartOverride,
        travelerDestinationOverride: widget.travelerDestinationOverride,
      ),
    );
  }

  void _handleTap(TapUpDetails details, BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final position = details.localPosition;

    // Convert tap position to relative coordinates (0-1 range)
    final relativeX = position.dx / size.width;
    final relativeY = position.dy / size.height;

    // Define clickable regions for each location
    final locationRegions = _getLocationRegions();

    // Check if tap was on the current avatar first
    final currentRegion = locationRegions[widget.currentLocationId];
    if (widget.onAvatarTapped != null && currentRegion != null) {
      if (_isPointInRegion(relativeX, relativeY, currentRegion)) {
        widget.onAvatarTapped!.call();
        return;
      }
    }

    // Check if tap is within any location region
    for (final entry in locationRegions.entries) {
      final locationId = entry.key;
      final region = entry.value;

      if (_isPointInRegion(relativeX, relativeY, region)) {
        final location = LocationsData.getLocationById(locationId);
        if (location != null) {
          // Only trigger if location is unlocked
          final isUnlocked =
              widget.unlockedLocations.any((loc) => loc.id == locationId);
          if (isUnlocked) {
            widget.onLocationTapped(location);
            _showLocationPreview(context, location);
          } else {
            _showLockedLocationMessage(context, location);
          }
        }
        break;
      }
    }
  }

  Map<String, LocationRegion> _getLocationRegions() {
    return {
      'athens': LocationRegion(
        center: const Offset(0.58, 0.52),
        radius: 0.04,
      ),
      'sparta': LocationRegion(
        center: const Offset(0.55, 0.75),
        radius: 0.04,
      ),
      'corinth': LocationRegion(
        center: const Offset(0.52, 0.60),
        radius: 0.03,
      ),
      'delphi': LocationRegion(
        center: const Offset(0.48, 0.45),
        radius: 0.03,
      ),
      'olympia': LocationRegion(
        center: const Offset(0.42, 0.68),
        radius: 0.03,
      ),
      'thebes': LocationRegion(
        center: const Offset(0.55, 0.48),
        radius: 0.03,
      ),
      'marathon': LocationRegion(
        center: const Offset(0.65, 0.52),
        radius: 0.03,
      ),
      'aegina': LocationRegion(
        center: const Offset(0.58, 0.60),
        radius: 0.025,
      ),
      'rhodes': LocationRegion(
        center: const Offset(0.85, 0.88),
        radius: 0.03,
      ),
      'crete': LocationRegion(
        center: const Offset(0.65, 0.95),
        radius: 0.05,
      ),
    };
  }

  bool _isPointInRegion(double x, double y, LocationRegion region) {
    final distance = math.sqrt(
      math.pow(x - region.center.dx, 2) + math.pow(y - region.center.dy, 2),
    );
    return distance <= region.radius;
  }

  void _showLocationPreview(BuildContext context, GameLocation location) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 100,
        left: 20,
        right: 20,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade50,
                  Colors.blue.shade100,
                ],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: _getLocationTypeColor(location.type),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        _getLocationIcon(location.type),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            location.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E86AB),
                            ),
                          ),
                          Text(
                            '${location.region} • ${location.type.name.replaceAll('_', ' ').toUpperCase()}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF2E86AB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => overlayEntry.remove(),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  location.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF2E86AB),
                  ),
                ),
                if (location.specialties.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    children: location.specialties
                        .take(4)
                        .map(
                          (specialty) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              specialty,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
                const SizedBox(height: 16),
                Row(
                  children: [
                    if (location.id != widget.currentLocationId) ...[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            overlayEntry.remove();
                            widget.onLocationTapped(location);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Plan Journey'),
                        ),
                      ),
                    ] else ...[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'Current Location',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Auto-remove after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      try {
        overlayEntry.remove();
      } catch (e) {
        // Overlay might already be removed
      }
    });
  }

  void _showLockedLocationMessage(BuildContext context, GameLocation location) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${location.name} is not yet accessible. Explore more to unlock!',
        ),
        backgroundColor: Colors.orange.shade600,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  IconData _getLocationIcon(LocationType type) {
    switch (type) {
      case LocationType.cityState:
        return Icons.location_city;
      case LocationType.village:
        return Icons.home;
      case LocationType.port:
        return Icons.anchor;
      case LocationType.sanctuary:
        return Icons.temple_hindu;
      case LocationType.battlefield:
        return Icons.military_tech;
      case LocationType.wilderness:
        return Icons.forest;
      case LocationType.ruin:
        return Icons.account_balance;
    }
  }

  Color _getLocationTypeColor(LocationType type) {
    switch (type) {
      case LocationType.cityState:
        return Colors.blue.shade700;
      case LocationType.village:
        return Colors.green.shade600;
      case LocationType.port:
        return Colors.cyan.shade600;
      case LocationType.sanctuary:
        return Colors.purple.shade600;
      case LocationType.battlefield:
        return Colors.red.shade600;
      case LocationType.wilderness:
        return Colors.brown.shade600;
      case LocationType.ruin:
        return Colors.grey.shade600;
    }
  }
}

class LocationRegion {
  final Offset center;
  final double radius;

  LocationRegion({
    required this.center,
    required this.radius,
  });
}
