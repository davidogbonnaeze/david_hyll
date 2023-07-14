import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  @JsonKey(name:"name")
  final String name;
  @JsonKey(name:"subtitle")
  final dynamic subtitle;
  @JsonKey(name:"distance")
  final dynamic distance;
  @JsonKey(name:"image_url")
  final String? imageUrl;

  Location({
    required this.name,
    this.subtitle,
    this.distance,
    this.imageUrl,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

}