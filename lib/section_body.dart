import 'package:flutter/material.dart';
import 'package:store_app/Models/product.dart';
import 'package:store_app/Screens/details_screen.dart';
import 'package:store_app/Widgets/Home/products_cart.dart';
import 'package:store_app/utils/responsive.dart';

class SectionBody extends StatelessWidget {
  const SectionBody({super.key, required this.sectionName});
  final String sectionName;
  @override
  Widget build(BuildContext context) {
    List<Product> product;

    if (sectionName == 'اجهزة كهربائية') {
      product = electricalDevices;
    } else if (sectionName == 'اجهزة ذكية') {
      product = smartDevices;
    } else if (sectionName == 'العاب اطفال') {
      product = babyGames;
    } else if (sectionName == 'اثاث منزل') {
      product = houseDecoration;
    } else if (sectionName == 'منتجات غذائية') {
      product = foodStaff;
    } else if (sectionName == 'مستلزمات شخصية') {
      product = personalStaff;
    } else if (sectionName == 'مستلزمات رياضية') {
      product = spoortStaff;
    } else {
      product = List.empty();
    }

    return SafeArea(
      child: productList(context, sectionName, product)
    );
  }
}

Container productList(
  BuildContext context,
  String title,
  List<Product> product,
) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: getFlexibleWidth(context, 10),
      vertical: getFlexibleHeight(context, 20),
    ),

    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getFlexibleWidth(context, 5),
        vertical: getFlexibleHeight(context, 15),
      ),
      child: SizedBox(
        child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return VerticalProductsCard(
              product: product[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: product[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    ),
  );
}
