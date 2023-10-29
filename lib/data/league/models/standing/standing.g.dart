// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingImpl _$$StandingImplFromJson(Map<String, dynamic> json) =>
    _$StandingImpl(
      stage: json['stage'] as String,
      type: json['type'] as String,
      table: (json['table'] as List<dynamic>)
          .map((e) => Table.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StandingImplToJson(_$StandingImpl instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'type': instance.type,
      'table': instance.table,
    };
