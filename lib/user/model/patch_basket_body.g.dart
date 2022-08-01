// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_basket_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchBasketBody _$PatchBasketBodyFromJson(Map<String, dynamic> json) =>
    PatchBasketBody(
      basket: (json['basket'] as List<dynamic>)
          .map((e) => PatchBasketBodyBasket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PatchBasketBodyToJson(PatchBasketBody instance) =>
    <String, dynamic>{
      'basket': instance.basket,
    };

PatchBasketBodyBasket _$PatchBasketBodyBasketFromJson(
        Map<String, dynamic> json) =>
    PatchBasketBodyBasket(
      productId: json['productId'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$PatchBasketBodyBasketToJson(
        PatchBasketBodyBasket instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'count': instance.count,
    };
