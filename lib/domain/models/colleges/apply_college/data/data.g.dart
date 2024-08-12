// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryApplyModel _$QueryApplyModelFromJson(Map<String, dynamic> json) =>
    QueryApplyModel(
      collegeId: json['college_id'] as int?,
      userId: json['user_id'] as int?,
      courseId: json['course_id'] as int?,
    );

Map<String, dynamic> _$QueryApplyModelToJson(QueryApplyModel instance) =>
    <String, dynamic>{
      'college_id': instance.collegeId,
      'user_id': instance.userId,
      'course_id': instance.courseId,
    };
