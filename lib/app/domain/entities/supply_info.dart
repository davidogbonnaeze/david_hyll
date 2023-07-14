import 'package:json_annotation/json_annotation.dart';
part 'supply_info.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyInfo {
  @JsonKey(name:"supplier_name")
  final dynamic supplierName;
  @JsonKey(name:"price_title")
  final String priceTitle;
  @JsonKey(name:"price_subtitle")
  final String priceSubtitle;
  @JsonKey(name:"button_type")
  final String buttonType;
  @JsonKey(name:"link")
  final dynamic link;

  SupplyInfo({
    this.supplierName,
    required this.priceTitle,
    required this.priceSubtitle,
    required this.buttonType,
    this.link,
  });

  factory SupplyInfo.fromJson(Map<String, dynamic> json) => _$SupplyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyInfoToJson(this);

}