import 'package:flutter/material.dart';
import '../../models/exploration.dart';

/// Player character sprite with animations
class PlayerSprite extends StatelessWidget {
  final PlayerPosition position;
  final AnimationController animationController;

  const PlayerSprite({
    super.key,
    required this.position,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 48,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return CustomPaint(
            painter: PlayerSpritePainter(
              position: position,
              animationValue: position.isMoving ? animationController.value : 0,
            ),
          );
        },
      ),
    );
  }
}

/// Custom painter for player sprite
class PlayerSpritePainter extends CustomPainter {
  final PlayerPosition position;
  final double animationValue;

  PlayerSpritePainter({
    required this.position,
    required this.animationValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xFF8B4513); // Brown

    // Body
    final bodyPaint = Paint()
      ..color = const Color(0xFF4A90E2) // Blue tunic
      ..style = PaintingStyle.fill;

    // Head (circle)
    canvas.drawCircle(
      Offset(size.width / 2, 12),
      8,
      paint..color = const Color(0xFFFFD6A5), // Skin tone
    );

    // Body (rectangle)
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 - 8, 20, 16, 20),
        const Radius.circular(4),
      ),
      bodyPaint,
    );

    // Legs (animated for walking)
    final legOffset = (animationValue * 4).toInt() % 2 == 0 ? 2.0 : -2.0;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 - 6 + legOffset, 40, 5, 8),
        const Radius.circular(2),
      ),
      paint..color = const Color(0xFF8B4513),
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 + 1 - legOffset, 40, 5, 8),
        const Radius.circular(2),
      ),
      paint..color = const Color(0xFF8B4513),
    );

    // Direction indicator (facing)
    final facePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    switch (position.facing) {
      case Direction.up:
        // Draw back of head indicator
        canvas.drawCircle(Offset(size.width / 2, 8), 2, facePaint);
        break;
      case Direction.down:
        // Draw eyes
        canvas.drawCircle(Offset(size.width / 2 - 3, 10), 1.5, facePaint..color = Colors.black);
        canvas.drawCircle(Offset(size.width / 2 + 3, 10), 1.5, facePaint..color = Colors.black);
        break;
      case Direction.left:
        // Draw side profile
        canvas.drawCircle(Offset(size.width / 2 - 3, 11), 1.5, facePaint..color = Colors.black);
        break;
      case Direction.right:
        // Draw side profile
        canvas.drawCircle(Offset(size.width / 2 + 3, 11), 1.5, facePaint..color = Colors.black);
        break;
    }

    // Shadow
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

    canvas.drawOval(
      Rect.fromLTWH(size.width / 2 - 10, 46, 20, 4),
      shadowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant PlayerSpritePainter oldDelegate) {
    return oldDelegate.position != position ||
           oldDelegate.animationValue != animationValue;
  }
}
