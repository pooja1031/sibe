// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyResp _$ApplyRespFromJson(Map<String, dynamic> json) => ApplyResp(
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApplyRespToJson(ApplyResp instance) => <String, dynamic>{
      'status_code': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
    };
