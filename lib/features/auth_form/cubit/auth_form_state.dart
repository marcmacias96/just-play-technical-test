part of 'auth_form_cubit.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required bool isLoading,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _AuthFormState;

  factory AuthFormState.initial() => const AuthFormState(
        isLoading: false,
      );
}
