import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/ui/login.dart';
import 'package:zard/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: distinctGreen,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                ),
                SizedBox(height: 20),
                Text(
                  "ZARD",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Spacer(),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white)),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => Get.to(Login()),
                  color: distinctGreen,
                ),
              ],
            ),
          ),
        ));
  }
}
