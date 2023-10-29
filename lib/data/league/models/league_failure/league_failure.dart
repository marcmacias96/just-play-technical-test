import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_failure.freezed.dart';
part 'league_failure.g.dart';

@freezed
class LeagueFailure with _$LeagueFailure {
  const factory LeagueFailure.unauthorized() = _Unauthorized;
  const factory LeagueFailure.unexpected() = _Unexpected;

  factory LeagueFailure.fromJson(Map<String, dynamic> json) =>
      _$LeagueFailureFromJson(json);
}
