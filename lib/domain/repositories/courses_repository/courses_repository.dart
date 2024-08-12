import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses_query.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details_query_model.dart';

abstract class CoursesRepository {
  Future<Either<ErrorMsg, CategoryCourses>> categoryCoursesRepository(
      {required CategoryCourseQuery queryModel});
  Future<Either<ErrorMsg, Courses>> getCourses(
      {required CoursesQueryModel queryModel});
  Future<Either<ErrorMsg, CoursesDetailsModel>> coursesDetails(
      {required CoursesDetailsQueryModel queryModel});
}
