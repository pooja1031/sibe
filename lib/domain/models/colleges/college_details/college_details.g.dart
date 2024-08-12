// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollegeDetails _$CollegeDetailsFromJson(Map<String, dynamic> json) =>
    CollegeDetails(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollegeDetailsToJson(CollegeDetails instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
