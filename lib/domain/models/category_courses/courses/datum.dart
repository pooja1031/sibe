import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'university_id')
  int? universityId;
  @JsonKey(name: 'course_category_id')
  int? courseCategoryId;
  String? course;
  String? description;
  int? duration;
  @JsonKey(name: 'course_level')
  String? courseLevel;
  @JsonKey(name: 'course_type')
  String? courseType;
  @JsonKey(name: 'duration_type')
  String? durationType;
  String? logo;
  @JsonKey(name: 'colleges_count')
  int? count;

  Datum(
      {this.id,
      this.universityId,
      this.courseCategoryId,
      this.course,
      this.description,
      this.duration,
      this.courseLevel,
      this.courseType,
      this.durationType,
      this.logo,
      this.count});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
