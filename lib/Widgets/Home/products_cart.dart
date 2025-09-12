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
                        padding: EdgeInsets.symmetric(horizontal: getFlexibeWithd(context, 20)),
                        child: Text(
                          product.title,
                          style: styles.titleMedium,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getFlexibeWithd(context, 20)),
                        child: Text(
                          product.subTitle,
                          style: styles.labelMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:getFlexibeWithd(context, 10)),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:getFlexibeWithd(context, 15),
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
                  width:getFlexibeWithd(context, 150),
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


/*

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              height: size.height * 0.19,
              width: size.width * 0.48,
              child: Image.asset(product.image, fit: BoxFit.scaleDown),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                // Because oure image is 200 width, then: width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 30,
                        ),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange,
                        ),

                        child: Text(
                          'price: \$${product.price}',
                          style: TextTheme.of(context).labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        */