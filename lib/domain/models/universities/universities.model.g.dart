// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universities.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Universities _$UniversitiesFromJson(Map<String, dynamic> json) => Universities(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UniversitiesToJson(Universities instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
