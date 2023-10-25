import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/auth/auth_failure.dart';
import 'package:just_play/data/auth/i_auth_interface.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      return e.code == 'wrong-password' || e.code == 'user-not-found'
          ? left(const AuthFailure.invalidEmailAndPasswordCombination())
          : left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
