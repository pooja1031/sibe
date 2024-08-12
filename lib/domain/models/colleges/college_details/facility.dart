import 'package:json_annotation/json_annotation.dart';

part 'facility.g.dart';

@JsonSerializable()
class Facility {
  int? id;
  String? facility;
  @JsonKey(name: 'college_id')
  int? collegeId;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Facility({
    this.id,
    this.facility,
    this.collegeId,
    this.createdAt,
    this.updatedAt,
  });

  factory Facility.fromJson(Map<String, dynamic> json) {
    return _$FacilityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FacilityToJson(this);
}
