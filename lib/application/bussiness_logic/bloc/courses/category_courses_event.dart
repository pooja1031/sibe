part of 'category_courses_bloc.dart';

@freezed
class CategoryCoursesEvent with _$CategoryCoursesEvent {
  const factory CategoryCoursesEvent.getCategoryCourses(
      {required CategoryCourseQuery queryModel}) = GetCategoryCourses;
  const factory CategoryCoursesEvent.getCourses(
      {required CoursesQueryModel coursesQueryModel}) = GetCourse;
  const factory CategoryCoursesEvent.selectCourseEvent(
      {required int courseId, required String courseName}) = SelectCourseEvent;
  const factory CategoryCoursesEvent.coursesDetails(
      {required CoursesDetailsQueryModel queryModel}) = CoursesDetails;
}
