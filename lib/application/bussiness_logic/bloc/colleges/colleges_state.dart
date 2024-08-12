part of 'colleges_bloc.dart';

@freezed
class CollegesState with _$CollegesState {
  const factory CollegesState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      String?placeName,
      int?id,
      Colleges? colleges,
      CollegeDetails? collegesDetails,
      ApplyCollege? applyCollege}) = _Initial;

  factory CollegesState.initial() =>
      const CollegesState(isLoading: false, hasError: false, isDone: false);
}
