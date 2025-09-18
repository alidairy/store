import 'package:flutter/material.dart';
import 'package:store_app/utils/responsive.dart';
import 'package:store_app/Screens/details_screen.dart';
import 'package:store_app/Models/product.dart';
import 'package:store_app/Screens/section_screen.dart';
import 'products_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        slivers: [
          productList(context, 'اجهزة كهربائية'),
          productList(context, 'اجهزة ذكية'),
          productList(context, 'العاب اطفال'),
          productList(context, 'اثاث منزل'),
          productList(context, 'منتجات غذائية'),
          productList(context, 'مستلزمات شخصية'),
          productList(context, 'مستلزمات رياضية'),
        ],
      ),
    );
  }
}

SliverToBoxAdapter productList(BuildContext context, String sectionName) {
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
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: getFlexibleWidth(context, 10),
        vertical: getFlexibleHeight(context, 20),
      ),
     
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(getFlexibleWidth(context, 10)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SectionScreen(sectionName: sectionName),
                  ),
                );
              },
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [

                    Text(
                      sectionName,
                      style: AppTextStyle(context).titleMedium,
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: getFlexibleWidth(context, 10)),
                      child: Icon(Icons.menu),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getFlexibleWidth(context, 5),
              vertical: getFlexibleHeight(context, 10),
            ),
            child: SizedBox(
              height: getFlexibleHeight(context, 200),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return HorizontalProductCard(
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
        ],
      ),
    ),
  );
}
