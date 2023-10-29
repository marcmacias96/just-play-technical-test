
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/league/models/models.dart';

part 'standing.freezed.dart';
part 'standing.g.dart';

@freezed
class Standing with _$Standing {
  factory Standing({
        required String stage,
        required String type,
        required List<Table> table,
    }) = _Standing;
	
  factory Standing.fromJson(Map<String, dynamic> json) =>
			_$StandingFromJson(json);
}
