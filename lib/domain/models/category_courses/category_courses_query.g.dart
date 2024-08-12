// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_courses_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryCourseQuery _$CategoryCourseQueryFromJson(Map<String, dynamic> json) =>
    CategoryCourseQuery(
      search: json['s'] as String?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      courseMode: json['course_mode'] as String?,
      durationType: json['duration_type'] as String?,
      city: json['location'] as String?,
    );

Map<String, dynamic> _$CategoryCourseQueryToJson(
        CategoryCourseQuery instance) =>
    <String, dynamic>{
      's': instance.search,
      'page': instance.page,
      'limit': instance.limit,
      'course_mode': instance.courseMode,
      'duration_type': instance.durationType,
      'location': instance.city,
    };
