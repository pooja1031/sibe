import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'parttime_job_model.g.dart';

@JsonSerializable()
class ParttimeJobModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  int? total;
  List<Datum>? data;

  ParttimeJobModel({
    this.statusCode,
    this.status,
    this.message,
    this.total,
    this.data,
  });

  factory ParttimeJobModel.fromJson(Map<String, dynamic> json) {
    return _$ParttimeJobModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParttimeJobModelToJson(this);
}
