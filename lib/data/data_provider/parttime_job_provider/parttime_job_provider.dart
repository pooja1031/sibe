import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/parttime_job_model/parttime_job_model.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';
import 'package:study_in_banglore/domain/repositories/parttime_job_repostory/parttime_job_repository.dart';

@LazySingleton(as: ParttimeJobRepository)
@injectable
class ParttimeJobProvider implements ParttimeJobRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  ParttimeJobProvider(this.dio, this.secureStorage);

  @override
  Future<Either<ErrorMsg, ParttimeJobModel>> partimeJob(
      {required QueryModel queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndpoint.parttimeJobEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(ParttimeJobModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: ParttimeJobModel.fromJson(response.data).message!));
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
