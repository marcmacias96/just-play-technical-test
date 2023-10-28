import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:just_play/data/auth/auth.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<User?> getUser();
}
