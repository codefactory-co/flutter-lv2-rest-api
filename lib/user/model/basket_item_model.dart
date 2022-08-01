import 'package:actual/product/model/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_item_model.g.dart';

@JsonSerializable()
class BasketItemModel {
  final ProductModel product;
  final int count;

  BasketItemModel({
    required this.product,
    required this.count,
  });

  BasketItemModel copyWith({
    ProductModel? product,
    int? count,
  }) {
    return BasketItemModel(
      product: product ?? this.product,
      count: count ?? this.count,
    );
  }

  factory BasketItemModel.fromJson(Map<String, dynamic> json) =>
      _$BasketItemModelFromJson(json);
}
