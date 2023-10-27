import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/auth/auth.dart';
import 'package:just_play/features/auth_form/model/model.dart';

part 'auth_form_state.dart';
part 'auth_form_cubit.freezed.dart';

@injectable
class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit(this._authRepository) : super(AuthFormState.initial());

  final IAuthRepository _authRepository;

  void registerWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.registerWithEmailAndPassword,
      credentials: credentials,
    );
  }

  void signInWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.signInWithEmailPassword,
      credentials: credentials,
    );
  }

  Future<void> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required String emailAddress,
      required String password,
    }) forwardedCall, {
    required Credentials credentials,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
        authFailureOrSuccess: null,
      ),
    );

    final failureOrSuccess = await forwardedCall(
      emailAddress: credentials.email,
      password: credentials.password,
    );

    emit(
      state.copyWith(
        isLoading: false,
        authFailureOrSuccess: failureOrSuccess,
      ),
    );
  }
}
