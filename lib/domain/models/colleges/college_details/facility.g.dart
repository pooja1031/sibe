// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facility _$FacilityFromJson(Map<String, dynamic> json) => Facility(
      id: json['id'] as int?,
      facility: json['facility'] as String?,
      collegeId: json['college_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FacilityToJson(Facility instance) => <String, dynamic>{
      'id': instance.id,
      'facility': instance.facility,
      'college_id': instance.collegeId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
