import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/ui/auth/login.dart';
import 'package:zard/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: onlyGreen,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset("assets/images/ZARD.png"),
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
                  color: onlyGreen,
                ),
              ],
            ),
          ),
        ));
  }
}
