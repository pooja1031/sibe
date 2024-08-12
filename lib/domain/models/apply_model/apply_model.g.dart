// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyModel _$ApplyModelFromJson(Map<String, dynamic> json) => ApplyModel(
      userId: json['user_id'] as int?,
      applyType: json['apply_type'] as String?,
    );

Map<String, dynamic> _$ApplyModelToJson(ApplyModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'apply_type': instance.applyType,
    };
