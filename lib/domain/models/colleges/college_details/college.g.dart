// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

College _$CollegeFromJson(Map<String, dynamic> json) => College(
      id: json['id'] as int?,
      college: json['college'] as String?,
      place: json['place'] as String?,
      university: json['university'] as String?,
      established: json['established'] as String?,
      description: json['description'] as String?,
      bannerImage: json['banner_image'] as String?,
      logo: json['logo'] as String?,
      ranking: (json['ranking'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$CollegeToJson(College instance) => <String, dynamic>{
      'id': instance.id,
      'college': instance.college,
      'place': instance.place,
      'university': instance.university,
      'established': instance.established,
      'description': instance.description,
      'banner_image': instance.bannerImage,
      'logo': instance.logo,
      'ranking': instance.ranking,
      'rating': instance.rating,
    };
