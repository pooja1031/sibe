// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesQueryModel _$CoursesQueryModelFromJson(Map<String, dynamic> json) =>
    CoursesQueryModel(
      id: json['course_category'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      collegId: json['college'] as int?,
      search: json['s'] as String?,
      city: json['location'] as String?,
    );

Map<String, dynamic> _$CoursesQueryModelToJson(CoursesQueryModel instance) =>
    <String, dynamic>{
      'course_category': instance.id,
      'college': instance.collegId,
      'page': instance.page,
      'limit': instance.limit,
      's': instance.search,
      'location': instance.city,
    };
