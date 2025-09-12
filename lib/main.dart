import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/Screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',

      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),

      home: HomeScreen(),
    );
  }
}

// 803 it is my phone hight
// 393 it is my phone width

double getFlexibleHeight(BuildContext context, double px) {
  double screenHight = MediaQuery.of(context).size.height;
  double verticalSize = screenHight * (px / 803);
  return verticalSize;
}

double getFlexibeWithd(BuildContext context, double px) {
  double screenWidth = MediaQuery.of(context).size.width;
  double horizontalSize = screenWidth * (px / 393);
  return horizontalSize;
}

class AppTextStyle {
  final BuildContext context;
  late double screenHight;
  AppTextStyle(this.context) {
    screenHight = MediaQuery.of(context).size.height;
  }

  TextStyle get titleMedium =>
      Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontSize: screenHight * 0.025)??
      TextStyle(fontSize: screenHight * 0.025);

  TextStyle get labelMedium =>
      Theme.of(
        context,
      ).textTheme.labelMedium?.copyWith(fontSize: screenHight * 0.02) ??
      TextStyle(fontSize: screenHight * 0.02);

  TextStyle get labelLarge =>
      Theme.of(
        context,
      ).textTheme.labelLarge?.copyWith(fontSize: screenHight * 0.018) ??
      TextStyle(fontSize: screenHight * 0.018);
}
