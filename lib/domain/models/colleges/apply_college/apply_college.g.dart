// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_college.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyCollege _$ApplyCollegeFromJson(Map<String, dynamic> json) => ApplyCollege(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApplyCollegeToJson(ApplyCollege instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
    };
