import 'package:flutter/material.dart';
import 'package:store_app/Widgets/Home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),

      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF219ebc),
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
