import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/auth/auth.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
 AuthCubit(this._firebaseAuth) : super(const AuthState.initial());

  final FirebaseAuth _firebaseAuth;

  Stream<void> authCheck() async* {
    yield _firebaseAuth.authStateChanges().listen((user) {
      if (user == null) {
        emit(const AuthState.unauthenticated());
      } else {
        emit(const AuthState.authenticated());
      }
    });
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      emit(const AuthState.unauthenticated());
    } on FirebaseAuthException catch (_) {
      emit(const AuthState.error(AuthFailure.unexpected()));
    }
  }
}
