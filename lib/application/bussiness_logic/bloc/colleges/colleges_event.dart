part of 'colleges_bloc.dart';

@freezed
class CollegesEvent with _$CollegesEvent {
  const factory CollegesEvent.getColleges(
      {required QueryCollegeModel queryCollegeModel}) = GetColleges;
  const factory CollegesEvent.collegesDetails(
      {required CollegeQueryModel queryModel}) = CollegesDetailsEvent;
  const factory CollegesEvent.applyCollege(
      {required QueryApplyModel queryApplyModel}) = ApplyCollegeEvent;
  const factory CollegesEvent.placesCollege(
     {required String place}) = PlaceCollege;
}
