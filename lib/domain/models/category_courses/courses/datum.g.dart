// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      universityId: json['university_id'] as int?,
      courseCategoryId: json['course_category_id'] as int?,
      course: json['course'] as String?,
      description: json['description'] as String?,
      duration: json['duration'] as int?,
      courseLevel: json['course_level'] as String?,
      courseType: json['course_type'] as String?,
      durationType: json['duration_type'] as String?,
      logo: json['logo'] as String?,
      count: json['colleges_count'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'university_id': instance.universityId,
      'course_category_id': instance.courseCategoryId,
      'course': instance.course,
      'description': instance.description,
      'duration': instance.duration,
      'course_level': instance.courseLevel,
      'course_type': instance.courseType,
      'duration_type': instance.durationType,
      'logo': instance.logo,
      'colleges_count': instance.count,
    };
