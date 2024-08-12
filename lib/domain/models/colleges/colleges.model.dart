import 'package:json_annotation/json_annotation.dart';

import 'datum.model.dart';

part 'colleges.model.g.dart';

@JsonSerializable()
class Colleges {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  Colleges({this.statusCode, this.status, this.message, this.data});

  factory Colleges.fromJson(Map<String, dynamic> json) {
    return _$CollegesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CollegesToJson(this);
}
