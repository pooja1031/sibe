import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/login/login.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/sign_in.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_model.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_resp_model.dart';

abstract class AuthRepository {
  Future<Either<ErrorMsg, SignUpRespModel>> signUp(SignUpModel signUpModel);
  Future<Either<ErrorMsg, SignInModel>> signIn(Login login);
}
