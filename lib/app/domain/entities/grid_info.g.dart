// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridInfo _$GridInfoFromJson(Map<String, dynamic> json) => GridInfo(
      name: json['name'] as String,
      value: json['value'] as String,
      iconUrl: json['icon_url'] as String,
      schema: json['schema'] as String?,
    );

Map<String, dynamic> _$GridInfoToJson(GridInfo instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'icon_url': instance.iconUrl,
      'schema': instance.schema,
    };
