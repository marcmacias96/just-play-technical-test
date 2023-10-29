
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/league/models/models.dart';

part 'league.freezed.dart';
part 'league.g.dart';

@freezed
class League with _$League {
  factory League({
        required Competition competition,
        required List<Standing> standings,
    }) = _League;
	
  factory League.fromJson(Map<String, dynamic> json) =>
			_$LeagueFromJson(json);
}
