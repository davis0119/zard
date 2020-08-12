import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zard/logic/controller.dart';
import 'package:zard/ui/home.dart';
import 'package:zard/ui/setup.dart';
import 'register.dart';

class Login extends StatelessWidget {
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();
  final ErrorController errorController = Get.put(ErrorController());

  void loginUser(username, password) {
    var hasUser = false;
    if (users.isNotEmpty) {
      for (int i = 0; i < users.length; i++) {
        if (users.elementAt(i).email == username &&
            users.elementAt(i).password == password) {
          Get.offAll(Home(), transition: Transition.fade, arguments: i);
          hasUser = true;
          errorController.hideError();
          break;
        }
      }
    }
    if (!hasUser) {
      errorController.showError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: distinctGreen,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                    onPressed: () => Get.back(),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)),
              ),
              Text("Sign In",
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 40,
                  )),
              Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextField(
                      controller: loginEmailController,
                      cursorColor: Colors.white,
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Colors.white.withOpacity(0.6)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    TextField(
                      controller: loginPasswordController,
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.white.withOpacity(0.6)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Colors.white,
                        onPressed: () {
                          loginUser(loginEmailController.text,
                              loginPasswordController.text);
                        },
                        child: Text("Continue"),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                  child: Text("REGISTER",
                      style: GoogleFonts.oswald(
                          textStyle: TextStyle(color: Colors.white))),
                  onPressed: () => Get.to(Register())),
              GetBuilder<ErrorController>(
                builder: (_) {
                  return Text(_.errorText,
                      style: TextStyle(color: Colors.redAccent, fontSize: 18));
                },
              ),
              Spacer(flex: 5)
            ],
          ),
        ),
      ),
    );
  }
}
