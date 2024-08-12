// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_accommodation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryAccommodation _$QueryAccommodationFromJson(Map<String, dynamic> json) =>
    QueryAccommodation(
      latitude: (json['latitude'] as num?)?.toDouble(),
      limit: json['limit'] as int?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      page: json['page'] as int?,
      radius: json['radius'] as int?,
      city: json['location'] as String?,
    );

Map<String, dynamic> _$QueryAccommodationToJson(QueryAccommodation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radius': instance.radius,
      'page': instance.page,
      'limit': instance.limit,
      'location': instance.city,
    };
