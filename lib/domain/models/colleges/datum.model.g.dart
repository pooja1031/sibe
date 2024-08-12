// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      college: json['college'] as String?,
      place: json['place'] as String?,
      logo: json['logo'] as String?,
      ranking: (json['average_ranking'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      establish: json['established'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'college': instance.college,
      'place': instance.place,
      'logo': instance.logo,
      'average_ranking': instance.ranking,
      'established': instance.establish,
      'rating': instance.rating,
    };
