import 'package:flutter/material.dart';
import 'package:store_app/Widgets/Home/home_body.dart';
import 'package:store_app/main.dart';
import 'package:store_app/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF219ebc),

      appBar: homeAppBar(context, scaffoldKey),
      endDrawer: Drawer(
        width: getFlexibleWidth(context,300),
        child: MenuPage()
      ),
      
      body: HomeBody(),
    );
  }

  AppBar homeAppBar(BuildContext context , GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      backgroundColor: Color(0xFF219ebc),
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: AppTextStyle(context).titleMedium.copyWith(color: Colors.white),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
        ),
      ],
      
    );
  }
}

