// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyInfo _$SupplyInfoFromJson(Map<String, dynamic> json) => SupplyInfo(
      supplierName: json['supplier_name'],
      priceTitle: json['price_title'] as String,
      priceSubtitle: json['price_subtitle'] as String,
      buttonType: json['button_type'] as String,
      link: json['link'],
    );

Map<String, dynamic> _$SupplyInfoToJson(SupplyInfo instance) =>
    <String, dynamic>{
      'supplier_name': instance.supplierName,
      'price_title': instance.priceTitle,
      'price_subtitle': instance.priceSubtitle,
      'button_type': instance.buttonType,
      'link': instance.link,
    };
