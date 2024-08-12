// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      name: json['university'] as String?,
      place: json['place'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'university': instance.name,
      'place': instance.place,
      'logo': instance.logo,
    };
