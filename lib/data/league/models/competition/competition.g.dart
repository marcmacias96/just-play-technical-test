// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompetitionImpl _$$CompetitionImplFromJson(Map<String, dynamic> json) =>
    _$CompetitionImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      code: json['code'] as String,
      type: json['type'] as String,
      emblem: json['emblem'] as String,
    );

Map<String, dynamic> _$$CompetitionImplToJson(_$CompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'emblem': instance.emblem,
    };
