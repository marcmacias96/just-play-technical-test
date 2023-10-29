
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
  factory Season({
        required int id,
        required DateTime startDate,
        required DateTime endDate,
        required int currentMatchday,
        required List<String> stages,
    }) = _Season;
	
  factory Season.fromJson(Map<String, dynamic> json) =>
			_$SeasonFromJson(json);
}
