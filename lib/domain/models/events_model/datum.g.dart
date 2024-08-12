// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      title: json['title'] as String?,
      logo: json['logo'] as String?,
      place: json['place'] as String?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'logo': instance.logo,
      'place': instance.place,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
