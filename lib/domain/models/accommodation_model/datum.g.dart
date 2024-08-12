// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      logo: json['logo'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'logo': instance.logo,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
    };
