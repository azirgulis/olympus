// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harbor_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HarborStateImpl _$$HarborStateImplFromJson(Map<String, dynamic> json) =>
    _$HarborStateImpl(
      availableRoutes: (json['availableRoutes'] as List<dynamic>?)
              ?.map((e) => TradeRoute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      playerShips: (json['playerShips'] as List<dynamic>?)
              ?.map((e) => Ship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activeExpeditions: (json['activeExpeditions'] as List<dynamic>?)
              ?.map(
                  (e) => TradingExpedition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      availableContracts: (json['availableContracts'] as List<dynamic>?)
              ?.map((e) => TradeContract.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HarborStateImplToJson(_$HarborStateImpl instance) =>
    <String, dynamic>{
      'availableRoutes': instance.availableRoutes,
      'playerShips': instance.playerShips,
      'activeExpeditions': instance.activeExpeditions,
      'availableContracts': instance.availableContracts,
    };
