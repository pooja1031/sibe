// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesDetailsModel _$CoursesDetailsModelFromJson(Map<String, dynamic> json) =>
    CoursesDetailsModel(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoursesDetailsModelToJson(
        CoursesDetailsModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
