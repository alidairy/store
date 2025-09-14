import 'package:flutter/material.dart';
import 'package:store_app/Widgets/Details/details_body.dart';
import 'package:store_app/Models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1EFF1),
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: BackButton(color: Color(0xFF219ebc)),
        ),
        title: Text('رجوع'),
        centerTitle: true,
      ),

      body: DetailsBody(product: product),
    );
  }
}
