// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketItemModel _$BasketItemModelFromJson(Map<String, dynamic> json) =>
    BasketItemModel(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      count: json['count'] as int,
    );

Map<String, dynamic> _$BasketItemModelToJson(BasketItemModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'count': instance.count,
    };
