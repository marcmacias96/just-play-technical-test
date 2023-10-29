import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/city/city.dart';

class SportConverter implements JsonConverter<List<Sport>, List<dynamic>> {
  const SportConverter();

  @override
  List<Sport> fromJson(List<dynamic> list) =>
      list.map((e) => Sport.fromString(e as String)).toList();

  @override
  List<String> toJson(List<Sport> list) => list.map((e) => e.value).toList();
}
