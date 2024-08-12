import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'events_model.g.dart';

@JsonSerializable()
class EventsModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  int? total;
  List<Datum>? data;

  EventsModel({
    this.statusCode,
    this.status,
    this.message,
    this.total,
    this.data,
  });

  factory EventsModel.fromJson(Map<String, dynamic> json) {
    return _$EventsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EventsModelToJson(this);
}
