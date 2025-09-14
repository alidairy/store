import 'package:flutter/material.dart';
import 'package:store_app/Widgets/Details/color_dot.dart';
import 'package:store_app/Widgets/Details/product_image.dart';
import 'package:store_app/Models/product.dart';
import 'package:store_app/main.dart';
class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Color(0xFFF1EFF1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(image: product.image),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(fillColor: Colors.blue, isSelected: false),
                    ColorDot(fillColor: Colors.red, isSelected: false),
                    ColorDot(fillColor: Color(0xFF747474), isSelected: true),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  product.title,
                  style: AppTextStyle(context).titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'السعر :\$${product.price}',
                  style: AppTextStyle(context).titleMedium.copyWith(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical:  10),
          padding: EdgeInsets.symmetric(
            horizontal:30,
            vertical: 10,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
        )
      ],
    );
  }
}
