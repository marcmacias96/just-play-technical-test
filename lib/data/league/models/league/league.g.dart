// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueImpl _$$LeagueImplFromJson(Map<String, dynamic> json) => _$LeagueImpl(
      competition:
          Competition.fromJson(json['competition'] as Map<String, dynamic>),
      standings: (json['standings'] as List<dynamic>)
          .map((e) => Standing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeagueImplToJson(_$LeagueImpl instance) =>
    <String, dynamic>{
      'competition': instance.competition,
      'standings': instance.standings,
    };
