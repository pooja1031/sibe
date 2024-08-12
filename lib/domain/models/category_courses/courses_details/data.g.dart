// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      course: json['course'] as String?,
      courseCategoryId: json['course_category_id'] as int?,
      duration: json['duration'] as String?,
      courseLevel: json['course_level'] as String?,
      description: json['description'] as String?,
      courseMode: json['course_mode'] as String?,
      coursesType: json['courses_type'],
      durationType: json['duration_type'] as String?,
      logo: json['logo'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      university: json['university'] as String?,
      courseCategory: json['course_category'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'course': instance.course,
      'course_category_id': instance.courseCategoryId,
      'duration': instance.duration,
      'course_level': instance.courseLevel,
      'description': instance.description,
      'course_mode': instance.courseMode,
      'courses_type': instance.coursesType,
      'duration_type': instance.durationType,
      'logo': instance.logo,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'university': instance.university,
      'course_category': instance.courseCategory,
    };
