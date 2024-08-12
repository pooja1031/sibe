import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'category_courses.g.dart';

@JsonSerializable()
class CategoryCourses {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  CategoryCourses({this.statusCode, this.status, this.message, this.data});

  factory CategoryCourses.fromJson(Map<String, dynamic> json) {
    return _$CategoryCoursesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryCoursesToJson(this);
}
