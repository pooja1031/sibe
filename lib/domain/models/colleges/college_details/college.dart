import 'package:json_annotation/json_annotation.dart';

part 'college.g.dart';

@JsonSerializable()
class College {
  int? id;
  String? college;
  String? place;
  String? university;
  String? established;
  String? description;
  @JsonKey(name: 'banner_image')
  String? bannerImage;
  String? logo;
  double? ranking;
  int? rating;

  College({
    this.id,
    this.college,
    this.place,
    this.university,
    this.established,
    this.description,
    this.bannerImage,
    this.logo,
    this.ranking,
    this.rating,
  });

  factory College.fromJson(Map<String, dynamic> json) {
    return _$CollegeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CollegeToJson(this);
}
