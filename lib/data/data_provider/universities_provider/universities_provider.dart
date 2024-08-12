import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/query_search_model/query_search_model.dart';
import 'package:study_in_banglore/domain/models/universities/universities.model.dart';
import 'package:study_in_banglore/domain/repositories/universities_repository/universities_repository.dart';

@LazySingleton(as: UniversitiesRepository)
@injectable
class UniversitiesProvider implements UniversitiesRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  UniversitiesProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, Universities>> universities(
      {required QuerySearchModel queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndpoint.universitiesEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(Universities.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: Universities.fromJson(response.data).message!));
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
