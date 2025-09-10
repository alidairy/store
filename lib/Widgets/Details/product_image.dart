import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image, required this.size});
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: size.width * 0.7,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.6,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.65,
            width: size.width * 0.65,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
