
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  factory City({
    required String id,
    required String name,
    required String country,
    required String state,
    required String image,
  }) = _City;
	
  factory City.fromJson(Map<String, dynamic> json) =>
			_$CityFromJson(json);
}
