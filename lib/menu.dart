import 'package:flutter/material.dart';
import 'package:store_app/utils/responsive.dart';
import 'package:store_app/section_screen.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF1EFF1),
        title: Text('قائمة المنتجات', style: AppTextStyle(context).titleMedium),
        centerTitle: true,
      ),
      body: Container(
      
        decoration: BoxDecoration(
          color: Color(0xFFF1EFF1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getFlexibleWidth(context, 20)),
              bottomRight: Radius.circular(getFlexibleWidth(context, 20)),
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            sectionPage(context, 'اجهزة كهربائية'),
            sectionPage(context, 'اجهزة ذكية'),
            sectionPage(context, 'العاب اطفال'),
            sectionPage(context, 'اثاث منزل'),
            sectionPage(context, 'منتجات غذائية'),
            sectionPage(context, 'مستلزمات شخصية'),
            sectionPage(context, 'مستلزمات رياضية'),
          ],
        ),
      ),
    );
  }
}

Padding sectionPage(BuildContext context, String sectionName) {
  return Padding(
    padding: EdgeInsets.all(getFlexibleWidth(context, 10)),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SectionScreen(sectionName:sectionName)),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getFlexibleHeight(context, 5),
          horizontal: getFlexibleWidth(context, 15),
        ),
        width: getWithd(context),
        decoration: BoxDecoration(
          color: Color(0xFF219ebc),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(getFlexibleWidth(context, 20)),
            right: Radius.circular(getFlexibleWidth(context, 20)),
          ),
        ),
        child: Text(
          sectionName,
          style: AppTextStyle(
            context,
          ).titleMedium.copyWith(color: Colors.white),
        ),
      ),
    ),
  );
}
