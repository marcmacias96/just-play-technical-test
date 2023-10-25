import 'package:dartz/dartz.dart';
import 'package:just_play/data/city/city.dart';
import 'package:just_play/data/city/model/model.dart';
import 'package:just_play/data/core/core.dart';

class CityRepository {
  Future<Either<CityFailure, List<City>>> getCities() async {
    try {
      final citiesMap = await parseJsonFromAssets('assets/cities.json');
      final cities = (citiesMap['data'] as List<Map<String, dynamic>>)
          .map(City.fromJson)
          .toList();
      return right(cities);
    } catch (_) {
      return left(const CityFailure.unexpected());
    }
  }
}
