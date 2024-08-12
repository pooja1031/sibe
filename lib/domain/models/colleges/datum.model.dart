import 'package:json_annotation/json_annotation.dart';

part 'datum.model.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  String? college;
  String? place;
  String? logo;
  @JsonKey(name: 'average_ranking')
  double? ranking;
  @JsonKey(name: 'established')
  String? establish;
  int? rating;

  Datum(
      {this.id,
      this.college,
      this.place,
      this.logo,
      this.ranking,
      this.rating,
      this.establish});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
