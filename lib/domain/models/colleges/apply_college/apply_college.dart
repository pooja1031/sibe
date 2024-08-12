import 'package:json_annotation/json_annotation.dart';

part 'apply_college.g.dart';

@JsonSerializable()
class ApplyCollege {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;

  ApplyCollege({this.statusCode, this.status, this.message});

  factory ApplyCollege.fromJson(Map<String, dynamic> json) {
    return _$ApplyCollegeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApplyCollegeToJson(this);
}
