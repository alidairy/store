import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app/utils/responsive.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getFlexibleHeight(context, 20)),
      height: getFlexibleHeight(context, 250),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          SizedBox(
            width: getFlexibleWidth(context, 200),
            child: AspectRatio(
              aspectRatio: 1/1,
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
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
        ],
      ),
    );
  }
}
