import 'package:flutter/material.dart';
import 'package:store_app/main.dart';
class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getFlexibleHeight(context, 20)),
      height:getFlexibleHeight(context, 250),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: getFlexibleWidth(context, 200),
            width: getFlexibleWidth(context, 200),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: getFlexibleWidth(context,200),
            width:getFlexibleWidth(context, 200),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
