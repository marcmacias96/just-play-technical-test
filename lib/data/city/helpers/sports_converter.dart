import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/city/enum/enum.dart';

class SportConverter implements JsonConverter<List<Sport>, List<String>> {
  const SportConverter();

  @override
  List<Sport> fromJson(List<String> list) =>
      list.map(Sport.fromString).toList();

  @override
  List<String> toJson(List<Sport> list) => list.map((e) => e.value).toList();
}
