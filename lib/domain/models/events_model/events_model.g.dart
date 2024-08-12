// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsModel _$EventsModelFromJson(Map<String, dynamic> json) => EventsModel(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventsModelToJson(EventsModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'total': instance.total,
      'data': instance.data,
    };
