import 'package:flutter/material.dart';
import 'package:store_app/Models/product.dart';
import 'package:store_app/main.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key,
    required this.itemIndex,
    required this.product,
    required this.press, 
  });

  final int itemIndex;
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
  final styles = AppTextStyle(context);
    
    return Container(
      margin: EdgeInsets.symmetric(vertical:getFlexibleHeight(context,15)),
      height: getFlexibleHeight(context, 150),
      child: InkWell(
        onTap: press,

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getFlexibleWidth(context, 20)),
                        child: Text(
                          product.title,
                          style: styles.titleMedium,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getFlexibleWidth(context, 20)),
                        child: Text(
                          product.subTitle,
                          style: styles.labelMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:getFlexibleWidth(context, 10)),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:getFlexibleWidth(context, 15),
                            vertical: getFlexibleHeight(context, 5),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.orange,
                          ),

                          child: Text(
                            'price: \$${product.price}',
                            style: styles.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width:getFlexibleWidth(context, 150),
                  child: Image.asset(product.image, fit: BoxFit.contain),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

