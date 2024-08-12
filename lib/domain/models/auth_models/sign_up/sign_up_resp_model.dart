import 'package:json_annotation/json_annotation.dart';

part 'sign_up_resp_model.g.dart';

@JsonSerializable()
class SignUpRespModel {
  bool? success;
  String? message;
  dynamic data;
  @JsonKey(name: 'status_code')
  int? statusCode;

  SignUpRespModel(
    this.success,
    this.message,
    this.data,
    this.statusCode,
  );

  factory SignUpRespModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpRespModelToJson(this);
}
