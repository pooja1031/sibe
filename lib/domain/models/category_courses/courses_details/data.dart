import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  String? course;
  @JsonKey(name: 'course_category_id')
  int? courseCategoryId;
  String? duration;
  @JsonKey(name: 'course_level')
  String? courseLevel;
  String? description;
  @JsonKey(name: 'course_mode')
  String? courseMode;
  @JsonKey(name: 'courses_type')
  dynamic coursesType;
  @JsonKey(name: 'duration_type')
  String? durationType;
  String? logo;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  String? university;
  @JsonKey(name: 'course_category')
  String? courseCategory;

  Data({
    this.id,
    this.course,
    this.courseCategoryId,
    this.duration,
    this.courseLevel,
    this.description,
    this.courseMode,
    this.coursesType,
    this.durationType,
    this.logo,
    this.createdAt,
    this.updatedAt,
    this.university,
    this.courseCategory,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
