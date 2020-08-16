import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:zard/logic/user.dart';
import 'package:zard/ui/home/customers.dart';
import 'package:zard/ui/home/inventory.dart';
import 'package:zard/ui/home/orders.dart';

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
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
    final tab = TabBar(
        controller: controller,
        indicatorColor: distinctGreen,
        labelColor: distinctGreen,
        labelStyle: heading.copyWith(fontSize: 15),
        unselectedLabelColor: distinctGreen,
        tabs: <Tab>[
          Tab(
            text: "INVENTORY",
          ),
          Tab(
            text: "ORDERS",
          ),
          Tab(
            text: "CUSTOMERS",
          ),
        ]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: onlyGreen,
          toolbarHeight: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PreferredSize(
              preferredSize: tab.preferredSize,
              child: Container(
                height: 60,
                child: Card(
                  elevation: 30,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  shadowColor: Colors.black.withOpacity(0.1),
                  color:
                      darkModeOn ? Colors.black.withOpacity(0.1) : Colors.white,
                  child: tab,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height * (8.4 / 10),
                child: TabBarView(
                  controller: controller,
                  children: [Inventory(), Orders(), Customers()],
                ),
              ),
            ),
          ],
        ));
  }
}
