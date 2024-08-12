// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryCourses _$CategoryCoursesFromJson(Map<String, dynamic> json) =>
    CategoryCourses(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryCoursesToJson(CategoryCourses instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
