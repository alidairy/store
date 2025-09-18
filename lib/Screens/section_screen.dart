import 'package:flutter/material.dart';
import 'package:store_app/Screens/home_screen.dart';
import 'package:store_app/utils/responsive.dart';
import '../Widgets/Section/section_body.dart';
import '../Widgets/Menu/menu.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({super.key, required this.sectionName});
  final String sectionName;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[250],
      appBar: homeAppBar(context, sectionName, scaffoldKey),
      body: SectionBody(sectionName: sectionName),

      endDrawer: Drawer(
        width: getFlexibleWidth(context, 300),
        child: MenuPage(),
      ),
    );
  }
}

AppBar homeAppBar(
  BuildContext context,
  String title,
  GlobalKey<ScaffoldState> scaffoldKey,
) {
  return AppBar(
    backgroundColor: Colors.grey[250],

    automaticallyImplyLeading: false,
    elevation: 0,
    title: Text(title, style: AppTextStyle(context).titleMedium),
    centerTitle: false,
    actions: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),
    ],
  );
}
