import 'package:flutter/material.dart';
import 'package:zard/constants/constants.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);

    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
        child: ListView(
          children: [
            getProducts("yogurt.jpg", "Grahm's Dairy Yogurt", context),
            SizedBox(height: 35),
            getProducts("dairy.jpg", "Grahm's Dairy Milk", context),
            SizedBox(height: 35),
            getProducts("food.jpg", "Grahm's Dairy Butter", context),
            SizedBox(height: 35),
            getProducts("food2.jpg", "Grahm's Dairy Cheese", context),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 60, 0),
              child: ButtonTheme(
                hoverColor: distinctGreen,
                buttonColor: distinctGreen,
                minWidth: MediaQuery.of(context).size.width * (6 / 10),
                height: 50,
                child: RaisedButton.icon(
                  label: Text(
                    "Add Product",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: distinctGreen,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
