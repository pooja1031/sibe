import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses_query.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details_query_model.dart';
import 'package:study_in_banglore/domain/repositories/courses_repository/courses_repository.dart';

@LazySingleton(as: CoursesRepository)
@injectable
class CategoryCoursesProvider implements CoursesRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  CategoryCoursesProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, CategoryCourses>> categoryCoursesRepository(
      {required CategoryCourseQuery queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndpoint.categoryCoursesEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(CategoryCourses.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: CategoryCourses.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, Courses>> getCourses(
      {required CoursesQueryModel queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndpoint.coursesEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(Courses.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: Courses.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, CoursesDetailsModel>> coursesDetails(
      {required CoursesDetailsQueryModel queryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndpoint.coursesDetailsEndPoint,
          queryParameters: queryModel.toJson());
      if (response.statusCode == 200) {
        return Right(CoursesDetailsModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: Courses.fromJson(response.data).message!));
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
