import 'package:json_annotation/json_annotation.dart';

part 'grid_info.g.dart';
@JsonSerializable(explicitToJson: true)
class GridInfo {
  @JsonKey(name:"name")
  final String name;
  @JsonKey(name:"value")
  final String value;
  @JsonKey(name:"icon_url")
  final String iconUrl;
  @JsonKey(name:"schema")
  final String? schema;
  GridInfo({
    required this.name,
    required this.value,
    required this.iconUrl,
    this.schema,
  });

  factory GridInfo.fromJson(Map<String, dynamic> json) => _$GridInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GridInfoToJson(this);

}