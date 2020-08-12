import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'login.dart';
import 'package:zard/logic/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  User currentUser = users.elementAt(Get.arguments);
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(icon: Icon(Icons.access_time)),
            Tab(icon: Icon(Icons.access_time)),
            Tab(icon: Icon(Icons.access_time))
          ],
        ),
        actions: [
          RaisedButton(
            onPressed: () =>
                Get.offAll(Login(), transition: Transition.leftToRightWithFade),
            child: Text(
              "Log Out",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text(currentUser.name),
            Text(currentUser.email),
            Text(currentUser.isCustomer.toString())
          ],
        ),
      ),
    );
  }
}
