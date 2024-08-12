
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_courses_query.g.dart';

@JsonSerializable()
class CategoryCourseQuery {
  @JsonKey(name: 's')
  String? search;
  int? page;
  int? limit;
  @JsonKey(name: 'course_mode')
  String? courseMode;
  @JsonKey(name: 'duration_type')
  String? durationType;
  @JsonKey(name: 'location')
  String? city;
  CategoryCourseQuery(
      {this.search, this.page, this.limit, this.courseMode, this.durationType,this.city});

  factory CategoryCourseQuery.fromJson(Map<String, dynamic> json) =>
      _$CategoryCourseQueryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryCourseQueryToJson(this);
}
