import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../models/game_map.dart';

class AnimatedTraveler extends StatefulWidget {
  final PlayerJourney journey;
  final Map<String, Offset> locationPositions;
  final Size mapSize;

  const AnimatedTraveler({
    super.key,
    required this.journey,
    required this.locationPositions,
    required this.mapSize,
  });

  @override
  State<AnimatedTraveler> createState() => _AnimatedTravelerState();
}

class _AnimatedTravelerState extends State<AnimatedTraveler>
    with TickerProviderStateMixin {
  late AnimationController _walkingController;
  late AnimationController _breathingController;
  late Animation<double> _walkAnimation;
  late Animation<double> _breathingAnimation;

  @override
  void initState() {
    super.initState();

    // Walking animation for the legs
    _walkingController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _walkAnimation = Tween<double>(
      begin: -0.3,
      end: 0.3,
    ).animate(CurvedAnimation(
      parent: _walkingController,
      curve: Curves.easeInOut,
    ));

    // Breathing/bobbing animation
    _breathingController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _breathingAnimation = Tween<double>(
      begin: -2.0,
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _breathingController,
      curve: Curves.easeInOut,
    ));

    // Start animations if traveling
    if (widget.journey.status == JourneyStatus.traveling) {
      _walkingController.repeat(reverse: true);
      _breathingController.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(AnimatedTraveler oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update animations based on journey status
    if (widget.journey.status == JourneyStatus.traveling) {
      if (!_walkingController.isAnimating) {
        _walkingController.repeat(reverse: true);
        _breathingController.repeat(reverse: true);
      }
    } else {
      _walkingController.stop();
      _breathingController.stop();
    }
  }

  @override
  void dispose() {
    _walkingController.dispose();
    _breathingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fromPos = widget.locationPositions[widget.journey.fromLocationId];
    final toPos = widget.locationPositions[widget.journey.toLocationId];

    if (fromPos == null || toPos == null) {
      return const SizedBox.shrink();
    }

    // Calculate current position based on progress
    final progress = widget.journey.progressPercent / 100.0;
    final currentX = fromPos.dx + (toPos.dx - fromPos.dx) * progress;
    final currentY = fromPos.dy + (toPos.dy - fromPos.dy) * progress;
    final currentPos = Offset(currentX, currentY);

    // Calculate direction for character facing
    final deltaX = toPos.dx - fromPos.dx;
    final deltaY = toPos.dy - fromPos.dy;
    final angle = math.atan2(deltaY, deltaX);

    return AnimatedBuilder(
      animation: Listenable.merge([_walkAnimation, _breathingAnimation]),
      builder: (context, child) {
        return Positioned(
          left: (currentPos.dx * widget.mapSize.width) - 12,
          top: (currentPos.dy * widget.mapSize.height) - 12 + _breathingAnimation.value,
          child: Transform.rotate(
            angle: angle + math.pi/2, // Character faces direction of travel
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: CustomPaint(
                painter: TravelerPainter(
                  walkOffset: _walkAnimation.value,
                  isWalking: widget.journey.status == JourneyStatus.traveling,
                  isEncountering: widget.journey.status == JourneyStatus.encountering,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TravelerPainter extends CustomPainter {
  final double walkOffset;
  final bool isWalking;
  final bool isEncountering;

  TravelerPainter({
    required this.walkOffset,
    required this.isWalking,
    required this.isEncountering,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);

    if (isEncountering) {
      // Show warning icon when encountering
      _drawWarningIcon(canvas, center, paint);
    } else {
      // Draw simple character figure
      _drawCharacter(canvas, center, paint);
    }
  }

  void _drawCharacter(Canvas canvas, Offset center, Paint paint) {
    // Character head
    canvas.drawCircle(
      Offset(center.dx, center.dy - 4),
      3,
      paint,
    );

    // Character body
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: center,
          width: 4,
          height: 8,
        ),
        const Radius.circular(2),
      ),
      paint,
    );

    if (isWalking) {
      // Animated legs when walking
      final legPaint = Paint()
        ..color = Colors.white
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;

      // Left leg
      canvas.drawLine(
        Offset(center.dx - 1, center.dy + 4),
        Offset(center.dx - 1 + walkOffset, center.dy + 8),
        legPaint,
      );

      // Right leg
      canvas.drawLine(
        Offset(center.dx + 1, center.dy + 4),
        Offset(center.dx + 1 - walkOffset, center.dy + 8),
        legPaint,
      );

      // Arms
      canvas.drawLine(
        Offset(center.dx - 2, center.dy - 1),
        Offset(center.dx - 2 - walkOffset * 0.5, center.dy + 2),
        legPaint,
      );

      canvas.drawLine(
        Offset(center.dx + 2, center.dy - 1),
        Offset(center.dx + 2 + walkOffset * 0.5, center.dy + 2),
        legPaint,
      );
    } else {
      // Static legs when not walking
      final legPaint = Paint()
        ..color = Colors.white
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;

      canvas.drawLine(
        Offset(center.dx - 1, center.dy + 4),
        Offset(center.dx - 1, center.dy + 8),
        legPaint,
      );

      canvas.drawLine(
        Offset(center.dx + 1, center.dy + 4),
        Offset(center.dx + 1, center.dy + 8),
        legPaint,
      );
    }
  }

  void _drawWarningIcon(Canvas canvas, Offset center, Paint paint) {
    paint.color = Colors.red;

    // Warning triangle
    final path = Path();
    path.moveTo(center.dx, center.dy - 6);
    path.lineTo(center.dx - 5, center.dy + 4);
    path.lineTo(center.dx + 5, center.dy + 4);
    path.close();

    canvas.drawPath(path, paint);

    // Exclamation mark
    paint.color = Colors.white;
    canvas.drawCircle(Offset(center.dx, center.dy + 2), 1, paint);

    final exclamationPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawLine(
      Offset(center.dx, center.dy - 3),
      Offset(center.dx, center.dy),
      exclamationPaint,
    );
  }

  @override
  bool shouldRepaint(covariant TravelerPainter oldDelegate) {
    return walkOffset != oldDelegate.walkOffset ||
           isWalking != oldDelegate.isWalking ||
           isEncountering != oldDelegate.isEncountering;
  }
}