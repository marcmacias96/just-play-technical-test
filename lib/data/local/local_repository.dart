import 'package:injectable/injectable.dart';
import 'package:just_play/data/local/local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILocalRepository)
class LocalRepository implements ILocalRepository {
  LocalRepository({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;
  @override
  Future<void> cacheUserId(String userId) async {
    await _sharedPreferences.setString('userId', userId);
  }

  @override
  Future<String> getCachedUser() async {
    return _sharedPreferences.getString('userId') ?? '';
  }

  @override
  Future<void> removeCachedUser() async{
    await _sharedPreferences.remove('userId');
  }
}
