import 'package:freezed_annotation/freezed_annotation.dart';
part 'apply_resp.g.dart';

@JsonSerializable()
class ApplyResp {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;

  ApplyResp({this.statusCode, this.status, this.message});

  factory ApplyResp.fromJson(Map<String, dynamic> json) {
    return _$ApplyRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApplyRespToJson(this);
}
