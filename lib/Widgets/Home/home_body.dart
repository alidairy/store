import 'package:flutter/material.dart';
import 'package:store_app/Screens/details_screen.dart';
import 'package:store_app/Models/product.dart';
import 'products_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1EFF1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),

                ListView.builder(
                  itemCount: products.length,

                  itemBuilder: (context, index) => ProductsCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            DetailsScreen(product: products[index]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
