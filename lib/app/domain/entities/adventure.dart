
import 'package:david_hyll/app/domain/entities/content.dart';
import 'package:david_hyll/app/domain/entities/grid_info.dart';
import 'package:david_hyll/app/domain/entities/location.dart';
import 'package:david_hyll/app/domain/entities/supply_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'adventure.g.dart';


@JsonSerializable(explicitToJson: true)
@JsonSerializable()
class Adventure {
  @JsonKey(name:"id")
  final int id;
  @JsonKey(name:"pk")
  final int pk;
  @JsonKey(name:"status")
  final String status;
  @JsonKey(name:"title")
  final String title;
  @JsonKey(name:"area_location")
  final Location areaLocation;
  @JsonKey(name:"starting_location")
  final Location startingLocation;
  @JsonKey(name:"tags")
  final List<String> tags;
  @JsonKey(name:"activity")
  final String activity;
  @JsonKey(name:"activity_id")
  final int activityId;
  @JsonKey(name:"primary_image")
  final String primaryImage;
  @JsonKey(name:"primary_video")
  final String primaryVideo;
  @JsonKey(name:"thumbnail")
  final String thumbnail;
  @JsonKey(name:"activity_icon")
  final String activityIcon;
  @JsonKey(name:"badges")
  final List<dynamic> badges;
  @JsonKey(name:"bucket_list_count")
  final int bucketListCount;
  @JsonKey(name:"contents")
  final List<Content> contents;
  @JsonKey(name:"supply_info")
  final SupplyInfo supplyInfo;
  @JsonKey(name:"grid_info")
  final List<GridInfo> gridInfo;
  @JsonKey(name:"ticket_optional")
  final bool ticketOptional;
  @JsonKey(name:"booked_by_following")
  final List<dynamic> bookedByFollowing;
  @JsonKey(name:"primary_description")
  final String primaryDescription;
  @JsonKey(name:"description")
  final String description;
  @JsonKey(name:"facts")
  final List<dynamic> facts;

  Adventure({
    required this.id,
    required this.pk,
    required this.status,
    required this.title,
    required this.areaLocation,
    required this.startingLocation,
    required this.tags,
    required this.activity,
    required this.activityId,
    required this.primaryImage,
    required this.primaryVideo,
    required this.thumbnail,
    required this.activityIcon,
    required this.badges,
    required this.bucketListCount,
    required this.contents,
    required this.supplyInfo,
    required this.gridInfo,
    required this.ticketOptional,
    required this.bookedByFollowing,
    required this.primaryDescription,
    required this.description,
    required this.facts,
  });

  factory Adventure.fromJson(Map<String, dynamic> json) => _$AdventureFromJson(json);

  Map<String, dynamic> toJson() => _$AdventureToJson(this);

}







