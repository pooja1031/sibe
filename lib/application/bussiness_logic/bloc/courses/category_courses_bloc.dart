import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses_query.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details_query_model.dart';
import 'package:study_in_banglore/domain/repositories/courses_repository/courses_repository.dart';

part 'category_courses_event.dart';
part 'category_courses_state.dart';
part 'category_courses_bloc.freezed.dart';

@injectable
class CategoryCoursesBloc
    extends Bloc<CategoryCoursesEvent, CategoryCoursesState> {
  final CoursesRepository repository;
  CategoryCoursesBloc(this.repository) : super(CategoryCoursesState.initial()) {
    on<GetCategoryCourses>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));

      final result = await repository.categoryCoursesRepository(
          queryModel: event.queryModel);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              categoryCourses: resp,
              message: resp.message)));
    });
    on<GetCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final result =
            await repository.getCourses(queryModel: event.coursesQueryModel);
        result.fold(
            (failure) => emit(state.copyWith(
                isLoading: false, message: failure.message, hasError: true)),
            (resp) => emit(state.copyWith(
                isLoading: false,
                hasError: false,
                courses: resp,
                message: resp.message)));
      },
    );
    on<SelectCourseEvent>((event, emit) {
      emit(state.copyWith(id: event.courseId, courseName: event.courseName));
    });
    on<CoursesDetails>(((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await repository.coursesDetails(queryModel: event.queryModel);
      result.fold(
          (l) => emit(state.copyWith(
              isLoading: false, hasError: true, message: l.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              message: resp.message,
              coursesDetailsModel: resp)));
    }));
  }
}
