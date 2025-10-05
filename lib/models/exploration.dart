import 'package:freezed_annotation/freezed_annotation.dart';

part 'exploration.freezed.dart';
part 'exploration.g.dart';

/// Player's position and movement in 2D exploration
@freezed
class PlayerPosition with _$PlayerPosition {
  const factory PlayerPosition({
    required double x,
    required double y,
    @Default(Direction.down) Direction facing,
    @Default(false) bool isMoving,
    @Default(MovementSpeed.normal) MovementSpeed speed,
  }) = _PlayerPosition;

  factory PlayerPosition.fromJson(Map<String, dynamic> json) => _$PlayerPositionFromJson(json);
}

/// Explorable city map definition
@freezed
class CityMap with _$CityMap {
  const factory CityMap({
    required String cityId,
    required String name,
    required double width,
    required double height,
    required String backgroundImagePath,
    @Default([]) List<Building> buildings,
    @Default([]) List<NpcPosition> npcs,
    @Default([]) List<CollisionArea> collisionAreas,
    @Default([]) List<InteractionZone> interactionZones,
    @Default([]) List<MapTransition> transitions,
    PlayerPosition? spawnPoint,
  }) = _CityMap;

  factory CityMap.fromJson(Map<String, dynamic> json) => _$CityMapFromJson(json);
}

/// Buildings that can be entered
@freezed
class Building with _$Building {
  const factory Building({
    required String id,
    required String name,
    required BuildingType type,
    required MapRect bounds,
    required String entranceRoute, // GoRouter route to navigate to
    @Default([]) List<String> requiredItems,
    @Default(0) int minReputation,
    String? iconPath,
  }) = _Building;

  factory Building.fromJson(Map<String, dynamic> json) => _$BuildingFromJson(json);
}

/// NPC positioned on the map
@freezed
class NpcPosition with _$NpcPosition {
  const factory NpcPosition({
    required String npcId,
    required double x,
    required double y,
    @Default(Direction.down) Direction facing,
    @Default(true) bool isInteractable,
    @Default(false) bool hasQuest,
    String? spriteSheet,
  }) = _NpcPosition;

  factory NpcPosition.fromJson(Map<String, dynamic> json) => _$NpcPositionFromJson(json);
}

/// Rectangular collision area
@freezed
class CollisionArea with _$CollisionArea {
  const factory CollisionArea({
    required MapRect bounds,
    required CollisionType type,
  }) = _CollisionArea;

  factory CollisionArea.fromJson(Map<String, dynamic> json) => _$CollisionAreaFromJson(json);
}

/// Interactive zone that triggers events
@freezed
class InteractionZone with _$InteractionZone {
  const factory InteractionZone({
    required String id,
    required MapRect bounds,
    required InteractionType type,
    String? targetId, // Quest ID, dialogue ID, etc.
    @Default(false) bool requiresPlayerAction, // true = press button, false = auto-trigger
  }) = _InteractionZone;

  factory InteractionZone.fromJson(Map<String, dynamic> json) => _$InteractionZoneFromJson(json);
}

/// Transition to another map or area
@freezed
class MapTransition with _$MapTransition {
  const factory MapTransition({
    required String id,
    required MapRect triggerBounds,
    required String targetMapId, // 'world_map', 'athens_harbor', etc.
    required PlayerPosition? targetPosition,
    @Default(false) bool requiresConfirmation,
  }) = _MapTransition;

  factory MapTransition.fromJson(Map<String, dynamic> json) => _$MapTransitionFromJson(json);
}

/// Simple rectangle for collision and zones
@freezed
class MapRect with _$MapRect {
  const factory MapRect({
    required double x,
    required double y,
    required double width,
    required double height,
  }) = _MapRect;

  factory MapRect.fromJson(Map<String, dynamic> json) => _$MapRectFromJson(json);
}

/// Player movement direction
enum Direction {
  @JsonValue('up')
  up,
  @JsonValue('down')
  down,
  @JsonValue('left')
  left,
  @JsonValue('right')
  right,
}

/// Movement speed (can be upgraded)
enum MovementSpeed {
  @JsonValue('slow')
  slow,
  @JsonValue('normal')
  normal,
  @JsonValue('fast')
  fast,
}

/// Building types for icons and gameplay
enum BuildingType {
  @JsonValue('market')
  market,
  @JsonValue('harbor')
  harbor,
  @JsonValue('academy')
  academy,
  @JsonValue('temple')
  temple,
  @JsonValue('home')
  home,
  @JsonValue('shop')
  shop,
  @JsonValue('tavern')
  tavern,
  @JsonValue('barracks')
  barracks,
}

/// Collision behavior
enum CollisionType {
  @JsonValue('solid')
  solid, // Can't pass through
  @JsonValue('water')
  water, // Can't pass unless you have a boat
  @JsonValue('elevated')
  elevated, // Can't pass (walls, buildings)
}

/// Interaction zone types
enum InteractionType {
  @JsonValue('dialogue')
  dialogue,
  @JsonValue('quest_trigger')
  questTrigger,
  @JsonValue('item_pickup')
  itemPickup,
  @JsonValue('puzzle')
  puzzle,
  @JsonValue('combat')
  combat,
  @JsonValue('discovery')
  discovery,
}

/// Extension for collision detection
extension MapRectExtension on MapRect {
  bool contains(double x, double y) {
    return x >= this.x &&
           x <= this.x + width &&
           y >= this.y &&
           y <= this.y + height;
  }

  bool overlaps(MapRect other) {
    return !(x + width < other.x ||
             other.x + other.width < x ||
             y + height < other.y ||
             other.y + other.height < y);
  }
}
