import 'package:flutter/material.dart';
import 'package:store_app/Models/product.dart';
class ProductsCard extends StatelessWidget {
  const ProductsCard({super.key, required this.itemIndex, required this.product,required this.press});
  
  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 190.0,

      child: InkWell(
        onTap: (){press();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(product.image, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                // Because oure image is 200 width, then: width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(product.title,style: Theme.of(context).textTheme.titleMedium,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(product.subTitle,style: Theme.of(context).textTheme.labelMedium),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange,
                        ),
                        child: Text('price: \$${product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
