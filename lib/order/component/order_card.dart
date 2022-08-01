import 'package:actual/common/const/colors.dart';
import 'package:actual/order/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final DateTime orderDate;
  final Image image;
  final String name;
  final String productsDetail;
  final int price;

  const OrderCard({
    required this.orderDate,
    required this.image,
    required this.name,
    required this.productsDetail,
    required this.price,
    Key? key,
  }) : super(key: key);

  factory OrderCard.fromModel({
    required OrderModel model,
  }) {
    final productsDetail =
        model.products.length < 2 ?
            model.products.first.product.name :
            '${model.products.first.product.name} 외${model.products.length -1}개';

    return OrderCard(
      orderDate: model.createdAt,
      image: Image.network(
        model.restaurant.thumbUrl,
        height: 50.0,
        width: 50.0,
        fit: BoxFit.cover,
      ),
      name: model.restaurant.name,
      productsDetail: productsDetail,
      price: model.totalPrice,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
            // 2022.09.01
            // 2022.9.1
            '${orderDate.year}.${orderDate.month.toString().padLeft(2, '0')}${orderDate.day.toString().padLeft(2, '0')} 주문완료'),
        const SizedBox(height: 8.0),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: image,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '$productsDetail $price원',
                  style: TextStyle(
                    color: BODY_TEXT_COLOR,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
