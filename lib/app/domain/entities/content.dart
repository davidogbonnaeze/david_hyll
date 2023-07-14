import 'package:david_hyll/app/domain/entities/content_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable(explicitToJson: true)
class Content {
  @JsonKey(name:"id")
  final String id;
  @JsonKey(name:"content_type")
  final String contentType;
  @JsonKey(name:"content_mode")
  final String contentMode;
  @JsonKey(name:"content_url")
  final String contentUrl;
  @JsonKey(name:"content_source")
  final ContentSource? contentSource;
  @JsonKey(name:"is_header_for_the_plan")
  final bool isHeaderForThePlan;
  @JsonKey(name:"is_private")
  final bool isPrivate;

  Content({
    required this.id,
    required this.contentType,
    required this.contentMode,
    required this.contentUrl,
    this.contentSource,
    required this.isHeaderForThePlan,
    required this.isPrivate,
  });

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

}
