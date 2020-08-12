import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zard/logic/user.dart';

//Data
var users = List<User>();

//Colors
Color distinctGreen = Color(0xff366860);

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
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.teal));

final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
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
