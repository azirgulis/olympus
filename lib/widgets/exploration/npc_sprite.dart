import 'package:flutter/material.dart';
import '../../models/exploration.dart';

/// NPC sprite widget
class NpcSprite extends StatelessWidget {
  final NpcPosition npcPosition;
  final VoidCallback? onTap;

  const NpcSprite({
    super.key,
    required this.npcPosition,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 32,
        height: 48,
        child: Stack(
          children: [
            CustomPaint(
              painter: NpcSpritePainter(
                facing: npcPosition.facing,
                hasQuest: npcPosition.hasQuest,
              ),
            ),

            // Quest indicator
            if (npcPosition.hasQuest)
              const Positioned(
                top: 0,
                right: 4,
                child: Icon(
                  Icons.help_outline,
                  color: Colors.yellow,
                  size: 16,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Custom painter for NPC sprites
class NpcSpritePainter extends CustomPainter {
  final Direction facing;
  final bool hasQuest;

  NpcSpritePainter({
    required this.facing,
    required this.hasQuest,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Different color for quest NPCs
    final tunicColor = hasQuest ? const Color(0xFFE74C3C) : const Color(0xFF27AE60);

    // Head
    canvas.drawCircle(
      Offset(size.width / 2, 12),
      8,
      Paint()..color = const Color(0xFFFFD6A5),
    );

    // Body (Greek tunic)
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 - 8, 20, 16, 20),
        const Radius.circular(4),
      ),
      Paint()..color = tunicColor,
    );

    // Legs
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 - 6, 40, 5, 8),
        const Radius.circular(2),
      ),
      Paint()..color = const Color(0xFF8B4513),
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width / 2 + 1, 40, 5, 8),
        const Radius.circular(2),
      ),
      Paint()..color = const Color(0xFF8B4513),
    );

    // Face
    final facePaint = Paint()..color = Colors.black;

    switch (facing) {
      case Direction.up:
        canvas.drawCircle(Offset(size.width / 2, 8), 2, Paint()..color = Colors.white);
        break;
      case Direction.down:
        canvas.drawCircle(Offset(size.width / 2 - 3, 10), 1.5, facePaint);
        canvas.drawCircle(Offset(size.width / 2 + 3, 10), 1.5, facePaint);
        break;
      case Direction.left:
        canvas.drawCircle(Offset(size.width / 2 - 3, 11), 1.5, facePaint);
        break;
      case Direction.right:
        canvas.drawCircle(Offset(size.width / 2 + 3, 11), 1.5, facePaint);
        break;
    }

    // Shadow
    canvas.drawOval(
      Rect.fromLTWH(size.width / 2 - 10, 46, 20, 4),
      Paint()
        ..color = Colors.black.withOpacity(0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
    );

    // Glow effect for quest NPCs
    if (hasQuest) {
      canvas.drawCircle(
        Offset(size.width / 2, size.height / 2),
        24,
        Paint()
          ..color = Colors.yellow.withOpacity(0.2)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
      );
    }
  }

  @override
  bool shouldRepaint(covariant NpcSpritePainter oldDelegate) {
    return oldDelegate.facing != facing || oldDelegate.hasQuest != hasQuest;
  }
}
