import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/auth/auth.dart';
import 'package:just_play/data/local/local.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._firebaseAuth, this._localRepository)
      : super(const AuthState.initial());

  final FirebaseAuth _firebaseAuth;
  final ILocalRepository _localRepository;

  Stream<void> authCheck() async* {
    yield _firebaseAuth.authStateChanges().listen((user) async {
      if (user == null) {
        emit(const AuthState.unauthenticated());
      } else {
        final userId = await _localRepository.getCachedUser();
        final isNewUser = userId.isEmpty;
        emit(
          AuthState.authenticated(
            isNewUser: isNewUser,
          ),
        );
      }
    });
  }

  Future<void> logout() async {
    try {
      await _localRepository.removeCachedUser();
      await _firebaseAuth.signOut();
      emit(const AuthState.unauthenticated());
    } on FirebaseAuthException catch (_) {
      emit(const AuthState.error(AuthFailure.unexpected()));
    }
  }
}
