import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'college_details.g.dart';

@JsonSerializable()
class CollegeDetails {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  CollegeDetails({this.statusCode, this.status, this.message, this.data});

  factory CollegeDetails.fromJson(Map<String, dynamic> json) {
    return _$CollegeDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CollegeDetailsToJson(this);
}
