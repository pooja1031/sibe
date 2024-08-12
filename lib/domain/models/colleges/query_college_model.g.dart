// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_college_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryCollegeModel _$QueryCollegeModelFromJson(Map<String, dynamic> json) =>
    QueryCollegeModel(
      search: json['s'] as String?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      courseId: json['course'] as int?,
      universityId: json['university'] as int?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$QueryCollegeModelToJson(QueryCollegeModel instance) =>
    <String, dynamic>{
      's': instance.search,
      'page': instance.page,
      'limit': instance.limit,
      'course': instance.courseId,
      'university': instance.universityId,
      'location': instance.location,
    };
