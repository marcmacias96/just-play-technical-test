import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/league/models/models.dart';

part 'table.freezed.dart';
part 'table.g.dart';

@freezed
class Table with _$Table {
  factory Table({
    required int position,
    required Team team,
    required int playedGames,
    required int won,
    required int draw,
    required int lost,
    required int points,
    required int goalsFor,
    required int goalsAgainst,
    required int goalDifference,
    String? form,
  }) = _Table;

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);
}
