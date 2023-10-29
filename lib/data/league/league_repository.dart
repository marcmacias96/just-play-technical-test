import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/league/league.dart';
import 'package:just_play/data/league/models/models.dart';

@LazySingleton()
class LeagueRepository {
  LeagueRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<Either<LeagueFailure, League>> getStandingsByLeague({
    required String leagueCode,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/competitions/$leagueCode/standings',
      );
      final league = response.data != null
          ? League.fromJson(response.data as Map<String, dynamic>)
          : null;
      if (response.statusCode != 200 || league == null) {
        return left(const LeagueFailure.unexpected());
      }
      return right(league);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 401) {
          return left(const LeagueFailure.unauthorized());
        }
      }
      return left(const LeagueFailure.unexpected());
    }
  }
}
