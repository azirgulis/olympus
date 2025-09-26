import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String id,
    required String name,
    required String description,
    required LocationType type,
    @Default([]) List<String> availableActions,
    @Default({}) Map<String, dynamic> marketData,
    @Default([]) List<String> connectedLocations,
    @Default([]) List<String> availableQuests,
    @Default([]) List<String> npcs,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) => _$LocationFromJson(json);
}

enum LocationType {
  @JsonValue('city')
  city,
  @JsonValue('temple')
  temple,
  @JsonValue('port')
  port,
  @JsonValue('wilderness')
  wilderness,
  @JsonValue('mountain')
  mountain,
}

@freezed
class MarketItem with _$MarketItem {
  const factory MarketItem({
    required String itemId,
    required String name,
    required int basePrice,
    required int currentPrice,
    required int stock,
    required int demand,
    @Default(1.0) double priceMultiplier,
  }) = _MarketItem;

  factory MarketItem.fromJson(Map<String, Object?> json) => _$MarketItemFromJson(json);
}