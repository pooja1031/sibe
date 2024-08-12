part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUP() = SignUP;
  const factory AuthEvent.signIn() = SignIn;
  const factory AuthEvent.signOut() = _SignOut;
  // const factory AuthEvent.obscure() = _Obscure;
}
