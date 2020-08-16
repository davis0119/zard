import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zard/logic/user.dart';

//Data
var users = List<User>();
var brightness = SchedulerBinding.instance.window.platformBrightness;
bool darkModeOn = brightness == Brightness.dark;

//Colors
Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
Color onlyGreen = Color(0xff366860);
Color white = darkModeOn ? Colors.grey[300].withOpacity(0.95) : Colors.white;
//Dark/Light Theme

final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.teal,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      headline6: heading.copyWith(
        color: distinctGreen,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.teal));

final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff25272C),
    appBarTheme: AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
    cursorColor: Colors.white,
    buttonTheme: ButtonThemeData(buttonColor: Colors.black));

//Fonts
var heading = GoogleFonts.oswald(
    textStyle: TextStyle(
  color: distinctGreen,
  fontSize: 30,
));

//Build Widgets
Widget getOptions(String imageUrl) {
  return Flexible(
      flex: 3,
      fit: FlexFit.tight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 1.1,
            child: Container(
              width: 50,
              height: 50,
              child:
                  Image.asset('assets/images/$imageUrl', fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 20),
        ],
      ));
}

Widget getProducts(String imageUrl, String productName, BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
  return Row(
    children: [
      Container(
          width: 165,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.0),
            child: Image.asset(
              "assets/images/$imageUrl",
              fit: BoxFit.fitWidth,
            ),
          )),
      SizedBox(width: 20),
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 20,
                    child: Text(
                      productName,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    "5.0",
                    style: heading.copyWith(fontSize: 15, color: distinctGreen),
                  )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                    ],
                  )
                ],
              ),
              Container(
                height: 20,
                width: 90,
                child: FlatButton.icon(
                  label: Text("Edit", style: TextStyle(color: distinctGreen)),
                  icon: Icon(
                    Icons.edit,
                    color: distinctGreen,
                  ),
                  onPressed: () => null,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget getInventory(String imageUrl, String productName, BuildContext context,
    String itemsLeft, String id) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
  return Row(
    children: [
      Container(
          width: 165,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.0),
            child: Image.asset(
              "assets/images/$imageUrl",
              fit: BoxFit.fitWidth,
            ),
          )),
      SizedBox(width: 20),
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 20,
                    child: Text(
                      productName,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    "Product ID: $id",
                    style: heading.copyWith(fontSize: 15, color: distinctGreen),
                  )),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 90,
                child: Text(
                  "$itemsLeft left",
                  style: heading.copyWith(
                    fontSize: 15,
                    color: distinctGreen,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ],
  );
}

Widget getCustomer(String name, String first, String second, String imageUrl,
    BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
  return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Theme(
          data: ThemeData(
            accentColor: distinctGreen,
          ),
          child: ExpansionTile(
              leading: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/images/$imageUrl",
                            fit: BoxFit.cover),
                      )),
                  SizedBox(width: 20),
                  Text(
                    name,
                    style: heading.copyWith(
                      fontSize: 20,
                      color: distinctGreen,
                    ),
                  )
                ],
              ),
              trailing: Icon(
                Icons.arrow_drop_down,
                color: distinctGreen,
              ),
              title: new Text(""),
              backgroundColor: Colors.transparent,
              children: <Widget>[
                ListTile(
                  focusColor: Colors.transparent,
                  title: Text(first,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(second,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen)),
                ),
              ])));
}

Widget getGoods(String imageUrl, String productName, BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
  return Row(
    children: [
      Container(
          width: 165,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.0),
            child: Image.asset(
              "assets/images/$imageUrl",
              fit: BoxFit.fitWidth,
            ),
          )),
      SizedBox(width: 20),
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 20,
                    child: Text(
                      productName,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    "5.0",
                    style: heading.copyWith(fontSize: 15, color: distinctGreen),
                  )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                      Icon(Icons.star, color: Color(0xffFFC107)),
                    ],
                  )
                ],
              ),
              Container(
                height: 20,
                width: 90,
                child: FlatButton.icon(
                  label: Text("Buy", style: TextStyle(color: distinctGreen)),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: distinctGreen,
                  ),
                  onPressed: () => null,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget getTransactions(
    String name, String first, String imageUrl, BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  Color distinctGreen = darkModeOn ? Colors.teal : Color(0xff366860);
  return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Theme(
          data: ThemeData(
            accentColor: distinctGreen,
          ),
          child: ExpansionTile(
              leading: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/images/$imageUrl",
                            fit: BoxFit.cover),
                      )),
                  SizedBox(width: 20),
                  Text(
                    name,
                    style: heading.copyWith(
                      fontSize: 20,
                      color: distinctGreen,
                    ),
                  )
                ],
              ),
              trailing: Icon(
                Icons.arrow_drop_down,
                color: distinctGreen,
              ),
              title: new Text(""),
              backgroundColor: Colors.transparent,
              children: <Widget>[
                ListTile(
                  focusColor: Colors.transparent,
                  title: Text(first,
                      style:
                          heading.copyWith(fontSize: 15, color: distinctGreen)),
                  onTap: () {},
                ),
              ])));
}
