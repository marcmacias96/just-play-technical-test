import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_failure.freezed.dart';

@freezed
class CityFailure with _$CityFailure {
  const factory CityFailure.unauthorized() = Unauthorized;
  const factory CityFailure.unexpected() = Unexpected;
}
