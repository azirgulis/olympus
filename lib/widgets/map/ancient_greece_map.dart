import 'package:flutter/material.dart';
import '../../models/game_map.dart';
import '../../data/map/locations.dart';
import '../../data/map/travel_routes.dart';
import 'animated_traveler.dart';

const Map<String, Offset> kAncientGreeceLocationAnchors = {
  'athens': Offset(0.58, 0.52),
  'sparta': Offset(0.55, 0.75),
  'corinth': Offset(0.52, 0.60),
  'delphi': Offset(0.48, 0.45),
  'olympia': Offset(0.42, 0.68),
  'thebes': Offset(0.55, 0.48),
  'marathon': Offset(0.65, 0.52),
  'aegina': Offset(0.58, 0.60),
  'rhodes': Offset(0.85, 0.88),
  'crete': Offset(0.65, 0.95),
};

Offset? ancientGreeceLocationOffset(String locationId) {
  return kAncientGreeceLocationAnchors[locationId];
}

class AncientGreeceMap extends StatefulWidget {
  final List<GameLocation> unlockedLocations;
  final String currentLocationId;
  final Function(GameLocation) onLocationTapped;
  final PlayerJourney? currentJourney;
  final Offset? travelerPositionOverride;
  final Offset? travelerStartOverride;
  final Offset? travelerDestinationOverride;

  const AncientGreeceMap({
    super.key,
    required this.unlockedLocations,
    required this.currentLocationId,
    required this.onLocationTapped,
    this.currentJourney,
    this.travelerPositionOverride,
    this.travelerStartOverride,
    this.travelerDestinationOverride,
  });

  @override
  State<AncientGreeceMap> createState() => _AncientGreeceMapState();
}

class _AncientGreeceMapState extends State<AncientGreeceMap> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Real map image as background - cropped and zoomed to central Greece
          Transform.scale(
            scale: 1.8, // Zoom in to focus on central area
            child: Transform.translate(
              offset: const Offset(-80, -60), // Shift to center on main cities
              child: Image.asset(
                'assets/images/ancient_greece_map.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay for better contrast
          Container(
            color: Colors.black.withValues(alpha: 0.1),
          ),
          // Location markers overlay
          CustomPaint(
            size: Size.infinite,
            painter: AncientGreeceMapPainter(
              unlockedLocations: widget.unlockedLocations,
              currentLocationId: widget.currentLocationId,
              onLocationTapped: widget.onLocationTapped,
              travelerPositionOverride: widget.travelerPositionOverride,
              travelerStartOverride: widget.travelerStartOverride,
              travelerDestinationOverride: widget.travelerDestinationOverride,
            ),
          ),
          // Animated traveler during journey
          if (widget.currentJourney != null)
            LayoutBuilder(
              builder: (context, constraints) {
                return AnimatedTraveler(
                  journey: widget.currentJourney!,
                  locationPositions: _getLocationPositions(),
                  mapSize: Size(constraints.maxWidth, constraints.maxHeight),
                );
              },
            ),
        ],
      ),
    );
  }

  Map<String, Offset> _getLocationPositions() {
    // Coordinates adjusted for cropped/zoomed map to match real geography
    // Based on actual geographic positions in ancient Greece
    return kAncientGreeceLocationAnchors;
  }
}

class AncientGreeceMapPainter extends CustomPainter {
  final List<GameLocation> unlockedLocations;
  final String currentLocationId;
  final Function(GameLocation) onLocationTapped;
  final Offset? travelerPositionOverride;
  final Offset? travelerStartOverride;
  final Offset? travelerDestinationOverride;

  AncientGreeceMapPainter({
    required this.unlockedLocations,
    required this.currentLocationId,
    required this.onLocationTapped,
    this.travelerPositionOverride,
    this.travelerStartOverride,
    this.travelerDestinationOverride,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw roads first (underneath everything else)
    _drawRoads(canvas, size);

    // Draw location markers
    _drawLocations(canvas, size);

    // Draw quick travel line if active
    _drawQuickTravelPath(canvas, size);

    // Draw current location character (on top)
    _drawCurrentLocationCharacter(canvas, size);
  }

  void _drawLocations(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    for (final location in LocationsData.getAllLocations()) {
      final normalized = ancientGreeceLocationOffset(location.id);
      if (normalized != null) {
        final position = Offset(width * normalized.dx, height * normalized.dy);
        _drawLocationMarker(canvas, location, position);
      }
    }
  }

  void _drawLocationMarker(
      Canvas canvas, GameLocation location, Offset position) {
    final paint = Paint()..style = PaintingStyle.fill;
    final isUnlocked = unlockedLocations.any((loc) => loc.id == location.id);
    final isCurrent = location.id == currentLocationId;
    final isVisited = location.isVisited;

    // Determine marker color and size
    Color markerColor;
    double markerSize;

    if (!isUnlocked) {
      markerColor = Colors.grey.shade400;
      markerSize = 8;
    } else if (isCurrent) {
      markerColor = Colors.blue.shade700;
      markerSize = 16;
    } else if (isVisited) {
      markerColor = Colors.green.shade600;
      markerSize = 12;
    } else {
      markerColor = _getLocationTypeColor(location.type);
      markerSize = 12;
    }

    // Draw marker circle
    paint.color = markerColor;
    canvas.drawCircle(position, markerSize, paint);

    // Draw border
    paint.style = PaintingStyle.stroke;
    paint.color = Colors.white;
    paint.strokeWidth = 2;
    canvas.drawCircle(position, markerSize, paint);

    // Draw special indicator for current location
    if (isCurrent) {
      paint.style = PaintingStyle.stroke;
      paint.color = Colors.yellow;
      paint.strokeWidth = 3;
      canvas.drawCircle(position, markerSize + 4, paint);
    }

    // Draw location icon
    if (isUnlocked) {
      _drawLocationIcon(canvas, location, position, markerSize);
    }

    // Draw location name
    if (isUnlocked) {
      _drawLocationName(canvas, location, position, markerSize);
    }
  }

  void _drawLocationIcon(Canvas canvas, GameLocation location, Offset position,
      double markerSize) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final iconSize = markerSize * 0.6;

    switch (location.type) {
      case LocationType.cityState:
        // Draw crown symbol
        _drawCrown(canvas, position, iconSize, paint);
        break;
      case LocationType.port:
        // Draw anchor symbol
        _drawAnchor(canvas, position, iconSize, paint);
        break;
      case LocationType.sanctuary:
        // Draw temple symbol
        _drawTemple(canvas, position, iconSize, paint);
        break;
      case LocationType.battlefield:
        // Draw sword symbol
        _drawSword(canvas, position, iconSize, paint);
        break;
      default:
        // Draw circle for other types
        canvas.drawCircle(position, iconSize * 0.3, paint);
        break;
    }
  }

  void _drawCrown(Canvas canvas, Offset center, double size, Paint paint) {
    final path = Path();
    path.moveTo(center.dx - size * 0.4, center.dy + size * 0.2);
    path.lineTo(center.dx - size * 0.2, center.dy - size * 0.2);
    path.lineTo(center.dx, center.dy + size * 0.1);
    path.lineTo(center.dx + size * 0.2, center.dy - size * 0.2);
    path.lineTo(center.dx + size * 0.4, center.dy + size * 0.2);
    path.lineTo(center.dx - size * 0.4, center.dy + size * 0.2);
    canvas.drawPath(path, paint);
  }

  void _drawAnchor(Canvas canvas, Offset center, double size, Paint paint) {
    // Anchor shaft
    canvas.drawLine(
      Offset(center.dx, center.dy - size * 0.3),
      Offset(center.dx, center.dy + size * 0.3),
      paint
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke,
    );

    // Anchor arms
    final path = Path();
    path.moveTo(center.dx - size * 0.3, center.dy + size * 0.1);
    path.lineTo(center.dx + size * 0.3, center.dy + size * 0.1);
    canvas.drawPath(path, paint);

    paint.style = PaintingStyle.fill;
  }

  void _drawTemple(Canvas canvas, Offset center, double size, Paint paint) {
    // Temple base
    canvas.drawRect(
      Rect.fromCenter(
          center: Offset(center.dx, center.dy + size * 0.2),
          width: size * 0.8,
          height: size * 0.2),
      paint,
    );

    // Temple columns (simplified)
    for (int i = -1; i <= 1; i++) {
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(center.dx + i * size * 0.2, center.dy),
          width: size * 0.1,
          height: size * 0.4,
        ),
        paint,
      );
    }

    // Temple roof
    final roofPath = Path();
    roofPath.moveTo(center.dx - size * 0.4, center.dy - size * 0.2);
    roofPath.lineTo(center.dx, center.dy - size * 0.4);
    roofPath.lineTo(center.dx + size * 0.4, center.dy - size * 0.2);
    roofPath.close();
    canvas.drawPath(roofPath, paint);
  }

  void _drawSword(Canvas canvas, Offset center, double size, Paint paint) {
    // Sword blade
    canvas.drawRect(
      Rect.fromCenter(
          center: Offset(center.dx, center.dy - size * 0.1),
          width: size * 0.1,
          height: size * 0.6),
      paint,
    );

    // Sword hilt
    canvas.drawRect(
      Rect.fromCenter(
          center: Offset(center.dx, center.dy + size * 0.25),
          width: size * 0.3,
          height: size * 0.1),
      paint,
    );

    // Sword pommel
    canvas.drawCircle(
        Offset(center.dx, center.dy + size * 0.35), size * 0.08, paint);
  }

  void _drawLocationName(Canvas canvas, GameLocation location, Offset position,
      double markerSize) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: location.name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              offset: const Offset(1, 1),
              blurRadius: 2,
              color: Colors.black.withValues(alpha: 0.8),
            ),
          ],
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        position.dx - textPainter.width / 2,
        position.dy + markerSize + 4,
      ),
    );
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

  void _drawRoads(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final locationPositions = {
      'athens': Offset(width * 0.58, height * 0.52),
      'sparta': Offset(width * 0.55, height * 0.75),
      'corinth': Offset(width * 0.52, height * 0.60),
      'delphi': Offset(width * 0.48, height * 0.45),
      'olympia': Offset(width * 0.42, height * 0.68),
      'thebes': Offset(width * 0.55, height * 0.48),
      'marathon': Offset(width * 0.65, height * 0.52),
      'aegina': Offset(width * 0.58, height * 0.60),
      'rhodes': Offset(width * 0.85, height * 0.88),
      'crete': Offset(width * 0.65, height * 0.95),
    };

    final routes = TravelRoutesData.getAllRoutes();

    for (final route in routes) {
      final fromPos = locationPositions[route.fromLocationId];
      final toPos = locationPositions[route.toLocationId];

      if (fromPos != null && toPos != null) {
        _drawRoad(canvas, fromPos, toPos, route.requiresShip);
      }
    }
  }

  void _drawRoad(Canvas canvas, Offset from, Offset to, bool isSeaRoute) {
    final paint = Paint()
      ..strokeWidth = isSeaRoute ? 2 : 3
      ..style = PaintingStyle.stroke;

    if (isSeaRoute) {
      // Draw sea routes as dashed blue lines
      paint.color = Colors.blue.withValues(alpha: 0.6);
      _drawDashedLine(canvas, from, to, paint, dashLength: 8, spaceLength: 4);
    } else {
      // Draw land routes as brown paths
      paint.color = Colors.brown.withValues(alpha: 0.8);
      canvas.drawLine(from, to, paint);

      // Add a lighter highlight line for depth
      final highlightPaint = Paint()
        ..color = Colors.orange.withValues(alpha: 0.4)
        ..strokeWidth = 1
        ..style = PaintingStyle.stroke;
      canvas.drawLine(from, to, highlightPaint);
    }
  }

  void _drawDashedLine(Canvas canvas, Offset from, Offset to, Paint paint,
      {double dashLength = 5, double spaceLength = 3}) {
    final distance = (to - from).distance;
    final dashCount = (distance / (dashLength + spaceLength)).floor();

    for (int i = 0; i < dashCount; i++) {
      final startRatio = (i * (dashLength + spaceLength)) / distance;
      final endRatio =
          ((i * (dashLength + spaceLength)) + dashLength) / distance;

      final dashStart = Offset.lerp(from, to, startRatio)!;
      final dashEnd = Offset.lerp(from, to, endRatio)!;

      canvas.drawLine(dashStart, dashEnd, paint);
    }
  }

  void _drawCurrentLocationCharacter(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final normalizedOverride = travelerPositionOverride ??
        ancientGreeceLocationOffset(currentLocationId);
    if (normalizedOverride != null) {
      final currentPos = Offset(
        width * normalizedOverride.dx,
        height * normalizedOverride.dy,
      );
      _drawGreekCharacter(canvas, currentPos);
    }
  }

  void _drawQuickTravelPath(Canvas canvas, Size size) {
    if (travelerStartOverride == null || travelerDestinationOverride == null) {
      return;
    }

    final start = Offset(
      size.width * travelerStartOverride!.dx,
      size.height * travelerStartOverride!.dy,
    );
    final end = Offset(
      size.width * travelerDestinationOverride!.dx,
      size.height * travelerDestinationOverride!.dy,
    );

    final paint = Paint()
      ..color = Colors.amberAccent
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    const dashLength = 16.0;
    const dashGap = 8.0;
    final totalDistance = (end - start).distance;
    double drawn = 0;

    while (drawn < totalDistance) {
      final tStart = (drawn / totalDistance).clamp(0.0, 1.0);
      final tEnd = ((drawn + dashLength) / totalDistance).clamp(0.0, 1.0);
      final dashStart = Offset.lerp(start, end, tStart)!;
      final dashEnd = Offset.lerp(start, end, tEnd)!;
      canvas.drawLine(dashStart, dashEnd, paint);
      drawn += dashLength + dashGap;
    }
  }

  void _drawGreekCharacter(Canvas canvas, Offset position) {
    final paint = Paint()..style = PaintingStyle.fill;

    // Draw character slightly above the location marker
    final characterPos = Offset(position.dx, position.dy - 35);

    // Body (tunic)
    paint.color = Colors.white;
    final tunicPath = Path();
    tunicPath.moveTo(characterPos.dx - 8, characterPos.dy + 5);
    tunicPath.lineTo(characterPos.dx + 8, characterPos.dy + 5);
    tunicPath.lineTo(characterPos.dx + 6, characterPos.dy + 20);
    tunicPath.lineTo(characterPos.dx - 6, characterPos.dy + 20);
    tunicPath.close();
    canvas.drawPath(tunicPath, paint);

    // Himation (cloak)
    paint.color = Colors.blue.shade700;
    final cloakPath = Path();
    cloakPath.moveTo(characterPos.dx - 10, characterPos.dy);
    cloakPath.quadraticBezierTo(characterPos.dx - 15, characterPos.dy + 8,
        characterPos.dx - 8, characterPos.dy + 15);
    cloakPath.lineTo(characterPos.dx - 4, characterPos.dy + 8);
    cloakPath.close();
    canvas.drawPath(cloakPath, paint);

    // Head
    paint.color = Colors.brown.shade300;
    canvas.drawCircle(Offset(characterPos.dx, characterPos.dy - 5), 6, paint);

    // Hair/beard
    paint.color = Colors.brown.shade600;
    canvas.drawCircle(Offset(characterPos.dx, characterPos.dy - 8), 7, paint);

    // Legs
    paint.color = Colors.brown.shade300;
    canvas.drawLine(
      Offset(characterPos.dx - 3, characterPos.dy + 20),
      Offset(characterPos.dx - 2, characterPos.dy + 28),
      paint..strokeWidth = 3,
    );
    canvas.drawLine(
      Offset(characterPos.dx + 3, characterPos.dy + 20),
      Offset(characterPos.dx + 2, characterPos.dy + 28),
      paint..strokeWidth = 3,
    );

    // Sandals
    paint.color = Colors.brown.shade800;
    canvas.drawCircle(
        Offset(characterPos.dx - 2, characterPos.dy + 29), 2, paint);
    canvas.drawCircle(
        Offset(characterPos.dx + 2, characterPos.dy + 29), 2, paint);

    // Staff (optional - for a traveling appearance)
    paint.color = Colors.brown.shade700;
    canvas.drawLine(
      Offset(characterPos.dx + 12, characterPos.dy - 5),
      Offset(characterPos.dx + 10, characterPos.dy + 18),
      paint..strokeWidth = 2,
    );

    // Character shadow for depth
    paint.color = Colors.black.withValues(alpha: 0.2);
    final shadowOffset = Offset(characterPos.dx + 2, characterPos.dy + 30);
    canvas.drawOval(
      Rect.fromCenter(center: shadowOffset, width: 16, height: 4),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
