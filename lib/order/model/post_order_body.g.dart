// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_order_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostOrderBody _$PostOrderBodyFromJson(Map<String, dynamic> json) =>
    PostOrderBody(
      id: json['id'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => PostOrderBodyProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['totalPrice'] as int,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$PostOrderBodyToJson(PostOrderBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'totalPrice': instance.totalPrice,
      'createdAt': instance.createdAt,
    };

PostOrderBodyProduct _$PostOrderBodyProductFromJson(
        Map<String, dynamic> json) =>
    PostOrderBodyProduct(
      productId: json['productId'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$PostOrderBodyProductToJson(
        PostOrderBodyProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'count': instance.count,
    };
