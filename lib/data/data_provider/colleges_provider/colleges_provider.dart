import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/apply_college.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/data/data.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_details.dart';
import 'package:study_in_banglore/domain/models/colleges/colleges.model.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_query_model.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';
import 'package:study_in_banglore/domain/repositories/colleges_repository/colleges_repository.dart';

@LazySingleton(as: CollegesRepository)
@injectable
class CollegesProvider implements CollegesRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  CollegesProvider(this.dio, this.secureStorage);

  @override
  Future<Either<ErrorMsg, Colleges>> getCollege(
      {required QueryCollegeModel queryCollegeModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndpoint.collegesEndPoint,
          queryParameters: queryCollegeModel.toJson());
      if (response.statusCode == 200) {
        return Right(Colleges.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: Colleges.fromJson(response.data).message!));
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

  @override
  Future<Either<ErrorMsg, CollegeDetails>> getCollegesDetails(
      {required CollegeQueryModel queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndpoint.getCollegesDetailEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(CollegeDetails.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: CollegeDetails.fromJson(response.data).message!));
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

  @override
  Future<Either<ErrorMsg, ApplyCollege>> applyCollege(
      {required QueryApplyModel queryApplyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndpoint.applyCollegeEndPoint,
          data: queryApplyModel.toJson());
      if (response.statusCode == 200) {
        return Right(ApplyCollege.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: ApplyCollege.fromJson(response.data).message!));
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
