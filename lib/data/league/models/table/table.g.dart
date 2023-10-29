// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableImpl _$$TableImplFromJson(Map<String, dynamic> json) => _$TableImpl(
      position: json['position'] as int,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      playedGames: json['playedGames'] as int,
      won: json['won'] as int,
      draw: json['draw'] as int,
      lost: json['lost'] as int,
      points: json['points'] as int,
      goalsFor: json['goalsFor'] as int,
      goalsAgainst: json['goalsAgainst'] as int,
      goalDifference: json['goalDifference'] as int,
      form: json['form'] as String?,
    );

Map<String, dynamic> _$$TableImplToJson(_$TableImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'team': instance.team,
      'playedGames': instance.playedGames,
      'won': instance.won,
      'draw': instance.draw,
      'lost': instance.lost,
      'points': instance.points,
      'goalsFor': instance.goalsFor,
      'goalsAgainst': instance.goalsAgainst,
      'goalDifference': instance.goalDifference,
      'form': instance.form,
    };
