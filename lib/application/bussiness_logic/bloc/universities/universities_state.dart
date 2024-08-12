part of 'universities_bloc.dart';

@freezed
class UniversitiesState with _$UniversitiesState {
  const factory UniversitiesState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      Universities? universities}) = _Initial;
  factory UniversitiesState.initial() =>
      const UniversitiesState(hasError: false, isLoading: false);
}
