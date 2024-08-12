import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'courses.g.dart';

@JsonSerializable()
class Courses {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  Courses({this.statusCode, this.status, this.message, this.data});

  factory Courses.fromJson(Map<String, dynamic> json) {
    return _$CoursesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoursesToJson(this);
}
