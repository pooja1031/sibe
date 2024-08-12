part of 'category_courses_bloc.dart';

@freezed
class CategoryCoursesState with _$CategoryCoursesState {
  const factory CategoryCoursesState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      String? courseName,
      int? id,
      CategoryCourses? categoryCourses,
      Courses? courses,
      CoursesDetailsModel? coursesDetailsModel}) = _Initial;
  factory CategoryCoursesState.initial() =>
      const CategoryCoursesState(isLoading: false, hasError: false);
}
