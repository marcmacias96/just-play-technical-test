
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/city/enum/enum.dart';
import 'package:just_play/data/city/helpers/helpers.dart';

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
    @SportConverter() required List<Sport> sports,
  }) = _City;
	
  factory City.fromJson(Map<String, dynamic> json) =>
			_$CityFromJson(json);
}
