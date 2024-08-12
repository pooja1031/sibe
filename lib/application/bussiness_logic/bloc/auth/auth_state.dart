part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool hasError,
    required bool isObscure,
    String? message,
    SignUpRespModel? signUpRespModel,
    SignInModel? signInModel,
  }) = _Initial;
  factory AuthState.initial() =>
      const AuthState(hasError: false, isLoading: false, isObscure: true);
}
