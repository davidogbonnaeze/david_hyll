import 'package:json_annotation/json_annotation.dart';
part 'content_source.g.dart';
@JsonSerializable(explicitToJson: true)
class ContentSource {
  @JsonKey(name:"id")
  final String id;
  @JsonKey(name:"title")
  final String title;
  @JsonKey(name:"author")
  final String? author;
  @JsonKey(name:"name")
  final String? name;
  @JsonKey(name:"icon")
  final dynamic icon;
  @JsonKey(name:"url")
  final dynamic url;
  @JsonKey(name:"creator")
  final dynamic creator;

  ContentSource({
    required this.id,
    required this.title,
    this.author,
    this.name,
    this.icon,
    this.url,
    this.creator,
  });
  
  factory ContentSource.fromJson(Map<String, dynamic> json) => _$ContentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$ContentSourceToJson(this);

}
