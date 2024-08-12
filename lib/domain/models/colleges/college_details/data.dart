import 'package:json_annotation/json_annotation.dart';

import 'college.dart';
import 'facility.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  College? college;
  List<Facility>? facilities;

  Data({this.college, this.facilities});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
