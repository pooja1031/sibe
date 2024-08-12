import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'accommodation_model.g.dart';

@JsonSerializable()
class AccommodationModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? status;
  String? message;
  int? total;
  List<Datum>? data;

  AccommodationModel({
    this.statusCode,
    this.status,
    this.message,
    this.total,
    this.data,
  });

  factory AccommodationModel.fromJson(Map<String, dynamic> json) {
    return _$AccommodationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccommodationModelToJson(this);
}
