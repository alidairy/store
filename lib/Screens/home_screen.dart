import 'package:flutter/material.dart';
import 'package:store_app/Widgets/Home/home_body.dart';
import 'package:store_app/utils/responsive.dart';
import 'package:store_app/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[250],
      appBar: homeAppBar(context, scaffoldKey),
      body: HomeBody(),
    
      endDrawer: Drawer(
        width: getFlexibleWidth(context, 300),
        child: MenuPage(),
      ),
    );
  }

  AppBar homeAppBar(
    BuildContext context,
    GlobalKey<ScaffoldState> scaffoldKey,
  ) {
    return AppBar(
      backgroundColor: Colors.grey[250],

      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: AppTextStyle(context).titleMedium,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
        ),
      ],
    );
  }
}
