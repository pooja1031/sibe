import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class QueryApplyModel {
  @JsonKey(name: 'college_id')
  int? collegeId;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'course_id')
  int? courseId;

  QueryApplyModel({this.collegeId, this.userId, this.courseId});

  factory QueryApplyModel.fromJson(Map<String, dynamic> json) =>
      _$QueryApplyModelFromJson(json);

  Map<String, dynamic> toJson() => _$QueryApplyModelToJson(this);
}
