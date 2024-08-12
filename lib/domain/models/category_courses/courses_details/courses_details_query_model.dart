import 'package:freezed_annotation/freezed_annotation.dart';
part 'courses_details_query_model.g.dart';

@JsonSerializable()
class CoursesDetailsQueryModel {
  @JsonKey(name: 'course_id')
  int? id;
  CoursesDetailsQueryModel({
    this.id,
  });

  factory CoursesDetailsQueryModel.fromJson(Map<String, dynamic> json) =>
      _$CoursesDetailsQueryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoursesDetailsQueryModelToJson(this);
}
