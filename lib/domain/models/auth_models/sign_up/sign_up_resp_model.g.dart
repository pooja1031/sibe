// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRespModel _$SignUpRespModelFromJson(Map<String, dynamic> json) =>
    SignUpRespModel(
      json['success'] as bool?,
      json['message'] as String?,
      json['data'],
      json['status_code'] as int?,
    );

Map<String, dynamic> _$SignUpRespModelToJson(SignUpRespModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'status_code': instance.statusCode,
    };
