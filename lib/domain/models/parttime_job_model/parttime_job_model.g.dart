// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parttime_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParttimeJobModel _$ParttimeJobModelFromJson(Map<String, dynamic> json) =>
    ParttimeJobModel(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ParttimeJobModelToJson(ParttimeJobModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'total': instance.total,
      'data': instance.data,
    };
