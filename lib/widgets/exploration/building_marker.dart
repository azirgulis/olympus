import 'package:flutter/material.dart';
import '../../models/exploration.dart';

/// Building marker and entrance widget
class BuildingMarker extends StatefulWidget {
  final Building building;
  final VoidCallback onEnter;

  const BuildingMarker({
    super.key,
    required this.building,
    required this.onEnter,
  });

  @override
  State<BuildingMarker> createState() => _BuildingMarkerState();
}

class _BuildingMarkerState extends State<BuildingMarker> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onEnter,
        child: Container(
          width: widget.building.bounds.width,
          height: widget.building.bounds.height,
          decoration: BoxDecoration(
            color: _getBuildingColor().withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _isHovering ? Colors.yellow : Colors.brown,
              width: _isHovering ? 3 : 2,
            ),
            boxShadow: _isHovering
                ? [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ]
                : null,
          ),
          child: Stack(
            children: [
              // Building icon
              Center(
                child: Icon(
                  _getBuildingIcon(),
                  size: 40,
                  color: Colors.white,
                ),
              ),

              // Building name
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    widget.building.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              // Entrance indicator
              Positioned(
                bottom: -10,
                left: widget.building.bounds.width / 2 - 15,
                child: Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade800,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: const Icon(
                    Icons.door_front_door,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),

              // Hover prompt
              if (_isHovering)
                Positioned(
                  top: -30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.yellow, width: 2),
                      ),
                      child: const Text(
                        'Enter →',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getBuildingColor() {
    switch (widget.building.type) {
      case BuildingType.market:
        return Colors.green.shade700;
      case BuildingType.harbor:
        return Colors.blue.shade700;
      case BuildingType.academy:
        return Colors.purple.shade700;
      case BuildingType.temple:
        return Colors.orange.shade700;
      case BuildingType.shop:
        return Colors.teal.shade700;
      case BuildingType.tavern:
        return Colors.red.shade700;
      case BuildingType.barracks:
        return Colors.grey.shade700;
      case BuildingType.home:
        return Colors.brown.shade600;
    }
  }

  IconData _getBuildingIcon() {
    switch (widget.building.type) {
      case BuildingType.market:
        return Icons.storefront;
      case BuildingType.harbor:
        return Icons.anchor;
      case BuildingType.academy:
        return Icons.school;
      case BuildingType.temple:
        return Icons.temple_hindu;
      case BuildingType.shop:
        return Icons.shopping_bag;
      case BuildingType.tavern:
        return Icons.local_bar;
      case BuildingType.barracks:
        return Icons.shield;
      case BuildingType.home:
        return Icons.home;
    }
  }
}
