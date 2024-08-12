import 'package:json_annotation/json_annotation.dart';

part 'datum.model.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'university')
  String? name;
  String? place;
  String? logo;

  Datum({this.id, this.name, this.place, this.logo});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
