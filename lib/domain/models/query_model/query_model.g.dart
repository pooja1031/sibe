// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryModel _$QueryModelFromJson(Map<String, dynamic> json) => QueryModel(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$QueryModelToJson(QueryModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'location': instance.location,
    };
