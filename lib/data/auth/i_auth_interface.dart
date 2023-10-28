import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:just_play/data/auth/auth.dart';

/// An abstract repository interface for authentication-related operations.
///
/// This interface defines the methods required for handling authentication
/// operations, such as signing in with an email and password, registering with
/// an email and password, and retrieving the authenticated user.
///
/// Example:
///
/// ```dart
/// final authRepository = AuthRepository();
/// final result = await authRepository.signInWithEmailPassword(
///   emailAddress: 'user@example.com',
///   password: 'password123',
/// );
///
/// if (result.isRight()) {
///   // Authentication was successful.
/// } else {
///   // Authentication failed. Handle the error.
/// }
/// ```
///
/// In the example above, an instance of a class implementing 
/// the [IAuthRepository]
/// interface is used to perform authentication operations. You can use this
/// interface as a contract to define authentication-related methods within your
/// application.
abstract class IAuthRepository {
  /// Sign in with an email and password.
  ///
  /// This method attempts to authenticate a user with 
  /// the provided [emailAddress]
  /// and [password]. If the authentication is successful, 
  /// it returns [Right(Unit)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword({
    required String emailAddress,
    required String password,
  });

  /// Register a new user with an email and password.
  ///
  /// This method attempts to register a new user 
  /// with the provided [emailAddress]
  /// and [password]. If the registration is successful, 
  /// it returns [Right(Unit)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  /// Get the authenticated user.
  ///
  /// This method retrieves the currently authenticated user. If no user is
  /// authenticated, it returns `null`. You can use this method to check the
  /// user's authentication status.
  Future<User?> getUser();
}
