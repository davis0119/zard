import 'package:flutter/material.dart';
import 'package:zard/constants/constants.dart';

class Inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 5, 0),
        child: ListView(
          children: [
            getInventory(
                "yogurt.jpg", "Grahm's Dairy Yogurt", context, "100", "#31242"),
            SizedBox(height: 35),
            getInventory(
                "dairy.jpg", "Grahm's Dairy Milk   ", context, "93", "#24354"),
            SizedBox(height: 35),
            getInventory(
                "food.jpg", "Grahm's Dairy Butter", context, "42", "#12312"),
            SizedBox(height: 35),
            getInventory(
                "food2.jpg", "Grahm's Dairy Cheese", context, "38", "#23122"),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 60, 0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * (6 / 10),
                height: 50,
                child: RaisedButton.icon(
                  label: Text(
                    "Add Inventory",
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
