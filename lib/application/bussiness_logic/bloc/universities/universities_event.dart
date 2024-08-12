part of 'universities_bloc.dart';

@freezed
class UniversitiesEvent with _$UniversitiesEvent {
  const factory UniversitiesEvent.getUniversities(
      {required QuerySearchModel queryModel}) = GetUniversities;
}
