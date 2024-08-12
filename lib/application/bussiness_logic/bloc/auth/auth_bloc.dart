import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/login/login.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/sign_in.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_model.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_resp_model.dart';
import 'package:study_in_banglore/domain/repositories/auth_repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phnNumController = TextEditingController();
  AuthBloc(this.repository) : super(AuthState.initial()) {
    on<SignUP>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final result = await repository.signUp(
        SignUpModel(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          phnNum: phnNumController.text,
        ),
      );
      final newState = result.fold((failure) {
        return state.copyWith(
            isLoading: false, hasError: true, message: failure.message);
      }, (resp) {
        return state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            signUpRespModel: resp);
      });
      firstNameController.clear();
      lastNameController.clear();
      phnNumController.clear();
      emit(newState);
    });
    on<SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final result =
          await repository.signIn(Login(phnNum: phnNumController.text));
      result.fold(
          (l) => emit(state.copyWith(
              isLoading: false, hasError: true, message: l.message)),
          (r) => emit(state.copyWith(
                hasError: false,
                isLoading: false,
                message: r.message,
                signInModel: r,
              )));
    });
    // on<_Obscure>(
    //     (event, emit) => emit(state.copyWith(isObscure: !state.isObscure)));
  }
}
