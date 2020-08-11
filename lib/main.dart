import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:zard/ui/splashscreen.dart';
import 'package:get/get.dart';
import 'constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: darkTheme,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
