import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  bool? success;
  String? message;
  Data? data;

  ProfileModel({this.statusCode, this.success, this.message, this.data});

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return _$ProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
