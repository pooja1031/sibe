import 'package:json_annotation/json_annotation.dart';

import 'datum.model.dart';

part 'universities.model.g.dart';

@JsonSerializable()
class Universities {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  Universities({this.statusCode, this.status, this.message, this.data});

  factory Universities.fromJson(Map<String, dynamic> json) {
    return _$UniversitiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UniversitiesToJson(this);
}
