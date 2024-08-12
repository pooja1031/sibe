import 'package:freezed_annotation/freezed_annotation.dart';
part 'courses_query_model.g.dart';

@JsonSerializable()
class CoursesQueryModel {
  @JsonKey(name: 'course_category')
  int? id;
  @JsonKey(name: 'college')
  int? collegId;
  int? page;
  int? limit;
  @JsonKey(name: 's')
  String? search;
  @JsonKey(name: 'location')
  String? city;
  CoursesQueryModel(
      {this.id, this.page, this.limit, this.collegId, this.search,this.city});

  factory CoursesQueryModel.fromJson(Map<String, dynamic> json) =>
      _$CoursesQueryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoursesQueryModelToJson(this);
}
