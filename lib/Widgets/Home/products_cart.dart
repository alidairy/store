import 'package:flutter/material.dart';
import 'package:store_app/Models/product.dart';
import 'package:store_app/utils/responsive.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final styles = AppTextStyle(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getFlexibleWidth(context, 5)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: getFlexibleWidth(context, 160),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 8,
                color: Colors.black12,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getFlexibleWidth(context, 125),
                height: getFlexibleHeight(context, 125),
                color: Colors.grey[400],
                child: CachedNetworkImage(
                  imageUrl: product.image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) {
                    return Center(
                      child: Icon(
                        Icons.broken_image,
                        size: getFlexibleWidth(context, 50),
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getFlexibleWidth(context, 5),
                  vertical: getFlexibleHeight(context, 5),
                ),
                child: Text(
                  product.title,
                  style: styles.labelLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(bottom: getFlexibleHeight(context, 5)),
                child: Text('\$${product.price}', style: styles.labelLarge),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalProductsCard extends StatelessWidget {
  const VerticalProductsCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  final Product product;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final styles = AppTextStyle(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: getFlexibleHeight(context, 15)),
      height: getFlexibleHeight(context, 150),
      child: InkWell(
        onTap: onTap,

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getFlexibleWidth(context, 5)),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: getFlexibleWidth(context, 20),
                        ),
                        child: Text(
                          product.title,
                          style: styles.titleMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getFlexibleWidth(context, 20),
                        ),
                        child: Text(
                          product.subTitle,
                          style: styles.labelMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getFlexibleWidth(context, 10),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: getFlexibleWidth(context, 15),
                            vertical: getFlexibleHeight(context, 5),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getFlexibleWidth(context, 25)),
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

                Padding(
                  padding: EdgeInsets.all(getFlexibleWidth(context, 5)),
                  child: SizedBox(
                    width: getFlexibleWidth(context, 125),
                    child: AspectRatio(
                      aspectRatio: 1/1,
                      child: CachedNetworkImage(
                        imageUrl: product.image,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) {
                          return Center(
                            child: Icon(
                              Icons.broken_image,
                              size: getFlexibleWidth(context, 50),
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
