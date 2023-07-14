// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String,
      subtitle: json['subtitle'],
      distance: json['distance'],
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'subtitle': instance.subtitle,
      'distance': instance.distance,
      'image_url': instance.imageUrl,
    };
