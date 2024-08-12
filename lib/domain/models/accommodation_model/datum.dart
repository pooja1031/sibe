import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  String? title;
  String? price;
  String? logo;
  String? latitude;
  String? longitude;
  double? distance;

  Datum({
    this.id,
    this.title,
    this.price,
    this.logo,
    this.latitude,
    this.longitude,
    this.distance,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
