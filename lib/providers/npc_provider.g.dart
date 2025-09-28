// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'npc_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NPCStateImpl _$$NPCStateImplFromJson(Map<String, dynamic> json) =>
    _$NPCStateImpl(
      npcs: (json['npcs'] as List<dynamic>?)
              ?.map((e) => NPC.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      availableDialogues: (json['availableDialogues'] as List<dynamic>?)
              ?.map((e) => NPCDialogue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentDialogue: json['currentDialogue'] == null
          ? null
          : NPCDialogue.fromJson(
              json['currentDialogue'] as Map<String, dynamic>),
      currentNodeId: json['currentNodeId'] as String?,
      isInDialogue: json['isInDialogue'] as bool? ?? false,
    );

Map<String, dynamic> _$$NPCStateImplToJson(_$NPCStateImpl instance) =>
    <String, dynamic>{
      'npcs': instance.npcs,
      'availableDialogues': instance.availableDialogues,
      'currentDialogue': instance.currentDialogue,
      'currentNodeId': instance.currentNodeId,
      'isInDialogue': instance.isInDialogue,
    };
