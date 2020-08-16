import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:zard/logic/user.dart';
import 'package:zard/ui/home/customer_home.dart';
import '../home/home.dart';

class SetUp extends StatefulWidget {
  @override
  _SetUpState createState() => _SetUpState();
}

class _SetUpState extends State<SetUp> {
  var selectedColor = distinctGreen;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  bool industrySelected1 = false;
  bool industrySelected2 = false;
  bool industrySelected3 = false;

  User currentUser = users.elementAt(Get.arguments);
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
    Color white =
        darkModeOn ? Colors.grey[300].withOpacity(0.95) : Colors.white;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 2,
        backgroundColor: distinctGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Let's get you set up!",
              style: heading.copyWith(fontSize: 23, color: distinctGreen),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tell us who you are",
              style: heading.copyWith(fontSize: 15, color: distinctGreen),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Row(
                children: [
                  getOptions("manufacture.png"),
                  getOptions("shopping-cart.png"),
                  getOptions("bag.png"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      child: Text(
                        "Manufacturer",
                        style: heading.copyWith(
                            fontSize: 13,
                            color: selected1 ? Colors.white : distinctGreen),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: distinctGreen)),
                      color: selected1 ? distinctGreen : white,
                      onPressed: () {
                        setState(() {
                          selected1 = !selected1;
                          selected2 = false;
                          selected3 = false;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 33),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      child: Text(
                        "Seller",
                        style: heading.copyWith(
                            fontSize: 13,
                            color: selected2 ? Colors.white : distinctGreen),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: distinctGreen)),
                      color: selected2 ? distinctGreen : white,
                      onPressed: () {
                        setState(() {
                          selected2 = !selected2;
                          selected1 = false;
                          selected3 = false;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 33),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                      child: Text(
                        "Shopper",
                        style: heading.copyWith(
                            fontSize: 13,
                            color: selected3 ? Colors.white : distinctGreen),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: distinctGreen)),
                      color: selected3 ? distinctGreen : white,
                      onPressed: () {
                        setState(() {
                          selected3 = !selected3;
                          selected1 = false;
                          selected2 = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AnimatedOpacity(
              opacity: !selected3 ? 1.0 : 0.0,
              duration: Duration(milliseconds: 300),
              child: Visibility(
                visible: selected2 || selected1,
                child: Column(
                  children: [
                    Text(
                      "Which industry do you belong to?",
                      style: heading.copyWith(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Row(
                        children: [
                          getOptions("idea(1).png"),
                          getOptions("fast-food.png"),
                          getOptions("clothes.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: RaisedButton(
                              child: Text(
                                "Technology",
                                style: heading.copyWith(
                                    fontSize: 13,
                                    color: industrySelected1
                                        ? Colors.white
                                        : distinctGreen),
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: distinctGreen)),
                              color: industrySelected1 ? distinctGreen : white,
                              onPressed: () {
                                setState(() {
                                  industrySelected1 = !industrySelected1;
                                  industrySelected2 = false;
                                  industrySelected3 = false;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 33),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: RaisedButton(
                              child: Text(
                                "Food",
                                style: heading.copyWith(
                                    fontSize: 13,
                                    color: industrySelected2
                                        ? Colors.white
                                        : distinctGreen),
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: distinctGreen)),
                              color: industrySelected2 ? distinctGreen : white,
                              onPressed: () {
                                setState(() {
                                  industrySelected2 = !industrySelected2;
                                  industrySelected1 = false;
                                  industrySelected3 = false;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 33),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: RaisedButton(
                              child: Text(
                                "Clothing",
                                style: heading.copyWith(
                                    fontSize: 13,
                                    color: industrySelected3
                                        ? Colors.white
                                        : distinctGreen),
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: distinctGreen)),
                              color: industrySelected3 ? distinctGreen : white,
                              onPressed: () {
                                setState(() {
                                  industrySelected3 = !industrySelected3;
                                  industrySelected1 = false;
                                  industrySelected2 = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      child: Text(
                        "Other",
                        style: heading.copyWith(
                            fontSize: 13,
                            color: selected1 ? Colors.white : distinctGreen),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: distinctGreen)),
                      color: selected1 ? distinctGreen : white,
                      onPressed: () {
                        setState(() {
                          selected1 = !selected1;
                          selected2 = false;
                          selected3 = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 20,
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * (5 / 6),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: distinctGreen,
                    onPressed: () {
                      if (selected1 == true || selected2 == true) {
                        currentUser.isCustomer = false;
                      } else {
                        currentUser.isCustomer = true;
                      }
                      if (!currentUser.isCustomer) {
                        Get.offAll(Home(), arguments: Get.arguments);
                      } else {
                        Get.offAll(CustomerHome(), arguments: Get.arguments);
                      }
                    },
                    child: Text(
                      "Continue",
                      style:
                          heading.copyWith(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
