import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:zard/logic/user.dart';
import 'package:zard/ui/home/customer_orders.dart';
import 'package:zard/ui/home/transactions.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome>
    with SingleTickerProviderStateMixin {
  User currentUser = users.elementAt(Get.arguments);
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
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
            text: "PURCHASE",
          ),
          Tab(
            text: "TRANSACTIONS",
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
                  children: [CustomerOrders(), Transactions()],
                ),
              ),
            ),
          ],
        ));
  }
}
