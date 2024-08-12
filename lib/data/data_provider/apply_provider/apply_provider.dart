import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_model.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_resp.dart';
import 'package:study_in_banglore/domain/repositories/apply_repository/apply_repository.dart';

@LazySingleton(as: ApplyRepository)
@injectable
class ApplyProvider implements ApplyRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  ApplyProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, ApplyResp>> apply(
      {required ApplyModel applyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response =
          await dio.post(ApiEndpoint.applyEndPoint, data: applyModel.toJson());
      if (response.statusCode == 200) {
        return Right(ApplyResp.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: ApplyResp.fromJson(response.data).message!));
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
}
