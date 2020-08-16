import 'package:flutter/material.dart';
import 'package:zard/constants/constants.dart';

class CustomerOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
        child: ListView(
          children: [
            getGoods("yogurt.jpg", "Grahm's Dairy Yogurt", context),
            SizedBox(height: 35),
            getGoods("dairy.jpg", "Grahm's Dairy Milk", context),
            SizedBox(height: 35),
            getGoods("food.jpg", "Grahm's Dairy Butter", context),
            SizedBox(height: 35),
            getGoods("food2.jpg", "Grahm's Dairy Cheese", context),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
