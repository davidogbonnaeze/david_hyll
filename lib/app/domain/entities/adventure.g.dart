// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adventure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adventure _$AdventureFromJson(Map<String, dynamic> json) => Adventure(
      id: json['id'] as int,
      pk: json['pk'] as int,
      status: json['status'] as String,
      title: json['title'] as String,
      areaLocation:
          Location.fromJson(json['area_location'] as Map<String, dynamic>),
      startingLocation:
          Location.fromJson(json['starting_location'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      activity: json['activity'] as String,
      activityId: json['activity_id'] as int,
      primaryImage: json['primary_image'] as String,
      primaryVideo: json['primary_video'] as String,
      thumbnail: json['thumbnail'] as String,
      activityIcon: json['activity_icon'] as String,
      badges: json['badges'] as List<dynamic>,
      bucketListCount: json['bucket_list_count'] as int,
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplyInfo:
          SupplyInfo.fromJson(json['supply_info'] as Map<String, dynamic>),
      gridInfo: (json['grid_info'] as List<dynamic>)
          .map((e) => GridInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketOptional: json['ticket_optional'] as bool,
      bookedByFollowing: json['booked_by_following'] as List<dynamic>,
      primaryDescription: json['primary_description'] as String,
      description: json['description'] as String,
      facts: json['facts'] as List<dynamic>,
    );

Map<String, dynamic> _$AdventureToJson(Adventure instance) => <String, dynamic>{
      'id': instance.id,
      'pk': instance.pk,
      'status': instance.status,
      'title': instance.title,
      'area_location': instance.areaLocation.toJson(),
      'starting_location': instance.startingLocation.toJson(),
      'tags': instance.tags,
      'activity': instance.activity,
      'activity_id': instance.activityId,
      'primary_image': instance.primaryImage,
      'primary_video': instance.primaryVideo,
      'thumbnail': instance.thumbnail,
      'activity_icon': instance.activityIcon,
      'badges': instance.badges,
      'bucket_list_count': instance.bucketListCount,
      'contents': instance.contents.map((e) => e.toJson()).toList(),
      'supply_info': instance.supplyInfo.toJson(),
      'grid_info': instance.gridInfo.map((e) => e.toJson()).toList(),
      'ticket_optional': instance.ticketOptional,
      'booked_by_following': instance.bookedByFollowing,
      'primary_description': instance.primaryDescription,
      'description': instance.description,
      'facts': instance.facts,
    };
