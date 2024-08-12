import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'courses_details.g.dart';

@JsonSerializable()
class CoursesDetailsModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  CoursesDetailsModel({this.statusCode, this.status, this.message, this.data});

  factory CoursesDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$CoursesDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoursesDetailsModelToJson(this);
}
