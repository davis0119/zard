import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:zard/ui/auth/login.dart';

class Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
    Color white =
        darkModeOn ? Colors.grey[300].withOpacity(0.95) : Colors.white;
    return Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Your Customers',
                  style: heading.copyWith(fontSize: 23, color: distinctGreen),
                  textAlign: TextAlign.left,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: distinctGreen,
                ),
                onPressed: () =>
                    Get.offAll(Login(), transition: Transition.noTransition),
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        ButtonTheme(
          minWidth: MediaQuery.of(context).size.width * (7 / 8),
          buttonColor: white,
          child: RaisedButton.icon(
            onPressed: () => {null},
            icon: Icon(
              Icons.search,
              color: distinctGreen,
            ),
            label: Text(
              "Search",
              style: heading.copyWith(fontSize: 18, color: distinctGreen),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
            child: Text(
              'Last week',
              style: heading.copyWith(fontSize: 18, color: distinctGreen),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(height: 30),
        Expanded(
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                getCustomer(
                    "Grant Eliott",
                    "Grant gave you a five star rating",
                    "Grant bought \"Grahm\'s Dairy Yogurt\"",
                    "customer1.jpg",
                    context),
                SizedBox(
                  height: 20,
                ),
                getCustomer(
                    "Jeremy Tang",
                    "Jeremy gave you a four star rating",
                    "Jeremy bought \"Grahm\'s Dairy Cheese",
                    "customer2.png",
                    context),
                SizedBox(
                  height: 20,
                ),
                getCustomer(
                    "Sheena Stein",
                    "Sheena gave you a five star rating",
                    "Jeremy bought \"Grahm\'s Dairy Butter",
                    "customer3.jpg",
                    context),
                SizedBox(
                  height: 20,
                ),
                getCustomer(
                    "David Amherst",
                    "David gave you a five star rating",
                    "David bought \"Grahm\'s Dairy Butter",
                    "customer4.jpg",
                    context),
              ],
            ),
          ),
        )
      ],
    );
  }
}
