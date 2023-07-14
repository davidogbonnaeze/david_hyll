// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentSource _$ContentSourceFromJson(Map<String, dynamic> json) =>
    ContentSource(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String?,
      name: json['name'] as String?,
      icon: json['icon'],
      url: json['url'],
      creator: json['creator'],
    );

Map<String, dynamic> _$ContentSourceToJson(ContentSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'name': instance.name,
      'icon': instance.icon,
      'url': instance.url,
      'creator': instance.creator,
    };
