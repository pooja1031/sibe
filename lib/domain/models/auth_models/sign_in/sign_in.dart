import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_in.g.dart';

@JsonSerializable()
class SignInModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  bool? success;
  String? message;
  Data? data;

  SignInModel({this.statusCode, this.success, this.message, this.data});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return _$SignInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}
