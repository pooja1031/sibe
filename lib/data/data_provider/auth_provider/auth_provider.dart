import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/login/login.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_in/sign_in.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_model.dart';
import 'package:study_in_banglore/domain/models/auth_models/sign_up/sign_up_resp_model.dart';
import 'package:study_in_banglore/domain/repositories/auth_repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthProvider implements AuthRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  AuthProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, SignUpRespModel>> signUp(
      SignUpModel signUpModel) async {
    try {
      final response = await dio.post(ApiEndpoint.signUpApiEndPoint,
          data: signUpModel.toJson(),
          options: Options(
            headers: {
              "Accept": "application/json",
            },
          ));
      if (response.statusCode == 200) {
        return Right(SignUpRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SignUpRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
  // @override
  // Future<void> logout() async {
  //   try {
  //     final token = await secureStorage.read(key: 'token');
  //     await secureStorage.delete(key: 'token');
  //     dio.options.headers["Authorization"] = 'Bearer $token';
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  @override
  Future<Either<ErrorMsg, SignInModel>> signIn(Login login) async {
    try {
      final response = await dio.post(ApiEndpoint.signInApiEndPoint,
          data: login.toJson(),
          options: Options(
            headers: {
              "Accept": "application/json",
            },
          ));
      if (response.statusCode == 200) {
        final token = response.data['data']['token'];
        await secureStorage.write(key: 'token', value: token);
        return Right(SignInModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: SignInModel.fromJson(response.data).message!));
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return e.response?.data['message'];
      } else {
        return Left(ErrorMsg(message: 'Something Wrong'));
      }
    } catch (e) {
      return Left(ErrorMsg(message: 'Something Wrong'));
    }
  }
}
