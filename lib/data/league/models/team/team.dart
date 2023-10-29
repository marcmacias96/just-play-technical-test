
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team({
        required int id,
        required String name,
        required String shortName,
        required String tla,
        required String crest,
    }) = _Team;
	
  factory Team.fromJson(Map<String, dynamic> json) =>
			_$TeamFromJson(json);
}
