import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/city/city.dart';
import 'package:just_play/data/core/core.dart';

@LazySingleton()
class CityRepository {
  const CityRepository();
  Future<Either<CityFailure, List<City>>> getCities() async {
    try {
      final citiesMap = await parseJsonFromAssets('assets/data/cities.json');
      final cities = (citiesMap['data'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(cities);
    } catch (_) {
      return left(const CityFailure.unexpected());
    }
  }
}
