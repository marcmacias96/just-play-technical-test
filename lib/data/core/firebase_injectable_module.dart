import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/core/core.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A module for injecting Firebase-related dependencies.
///
/// This module defines and provides access to Firebase dependencies such as
/// [FirebaseAuth] and [SharedPreferences]. It uses the `get_it` package to
/// manage and inject these dependencies as singletons or pre-resolved objects.
///
/// Example:
///
/// ```dart
/// final firebaseAuth = getIt<FirebaseAuth>();
/// final sharedPreferences = getIt<SharedPreferences>();
/// ```
///
/// In the example above, you can access Firebase-related dependencies using
/// instances of [FirebaseInjectableModule]. The [firebaseAuth] 
/// is a lazy singleton
/// providing the [FirebaseAuth] instance, and [sharedPreferences] 
/// is pre-resolved
/// to provide a [SharedPreferences] object.
@module
abstract class FirebaseInjectableModule {
  /// Provides a [FirebaseAuth] instance as a lazy singleton.
  ///
  /// The [FirebaseAuth] instance is used for handling authentication and
  /// authorization within a Firebase project.
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  /// Provides a [SharedPreferences] instance as a pre-resolved object.
  ///
  /// The [SharedPreferences] object is used for storing and retrieving
  /// key-value pairs persistently across app launches.
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  Dio get httpClient {
    final dio = Dio();
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Auth-Token': dotenv.env['API_KEY']!,
    };
    dio.options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(milliseconds: 60000),
      receiveTimeout: const Duration(milliseconds: 60000),
      headers: headers,
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
    return dio;
  }
}
