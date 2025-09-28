// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_map_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameMapStateImpl _$$GameMapStateImplFromJson(Map<String, dynamic> json) =>
    _$GameMapStateImpl(
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => GameLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentLocationId: json['currentLocationId'] as String? ?? 'athens',
      unlockedLocationIds: (json['unlockedLocationIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['athens', 'marathon', 'thebes', 'corinth', 'delphi', 'sparta'],
      isJourneyInProgress: json['isJourneyInProgress'] as bool? ?? false,
      currentJourney: json['currentJourney'] == null
          ? null
          : PlayerJourney.fromJson(
              json['currentJourney'] as Map<String, dynamic>),
      shouldNavigateToLocation: json['shouldNavigateToLocation'] as String?,
    );

Map<String, dynamic> _$$GameMapStateImplToJson(_$GameMapStateImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
      'currentLocationId': instance.currentLocationId,
      'unlockedLocationIds': instance.unlockedLocationIds,
      'isJourneyInProgress': instance.isJourneyInProgress,
      'currentJourney': instance.currentJourney,
      'shouldNavigateToLocation': instance.shouldNavigateToLocation,
    };
