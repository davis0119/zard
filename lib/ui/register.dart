import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zard/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zard/logic/user.dart';
import 'home.dart';
import 'login.dart';

class Register extends StatelessWidget {
  registerUser(name, password, email, country) {
    User newUser = User(
        country: country,
        password: password,
        name: name,
        isCustomer: true,
        email: email);
    users.add(newUser);
    Get.offAll(Home(),
        arguments: users.length - 1, transition: Transition.cupertino);
  }

  @override
  Widget build(BuildContext context) {
    var countries = ["United States", "Mexico", "Canada"];
    final registerEmailController = TextEditingController();
    final registerUsernameController = TextEditingController();
    final registerPasswordCOntroller = TextEditingController();
    final _formKey = GlobalKey<FormState>();

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
                    onPressed: () => Get.offAll(Login(),
                        transition: Transition.noTransition),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)),
              ),
              Text("Register",
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 40,
                  )),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (String text) {
                              if (text.isEmpty) {
                                return "This field cannot be empty";
                              }
                              return null;
                            },
                            cursorColor: Colors.white,
                            style: GoogleFonts.oswald(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 20,
                            ),
                            controller: registerUsernameController,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: 'Full Name',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.6)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          TextFormField(
                            validator: (String text) {
                              if (text.isEmpty) {
                                return "This field cannot be empty";
                              }
                              return null;
                            },
                            cursorColor: Colors.white,
                            style: GoogleFonts.oswald(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: 'Country',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.6)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          TextFormField(
                            validator: (String text) {
                              if (text.isEmpty) {
                                return "This field cannot be empty";
                              }
                              return null;
                            },
                            cursorColor: Colors.white,
                            style: GoogleFonts.oswald(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 20,
                            ),
                            controller: registerEmailController,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.6)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          TextFormField(
                            validator: (String text) {
                              if (text.isEmpty) {
                                return "This field cannot be empty";
                              }
                              return null;
                            },
                            obscureText: true,
                            cursorColor: Colors.white,
                            style: GoogleFonts.oswald(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 20,
                            ),
                            controller: registerPasswordCOntroller,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.6)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
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
                          if (_formKey.currentState.validate()) {
                            registerUser(
                                registerUsernameController.text,
                                registerPasswordCOntroller.text,
                                registerEmailController.text,
                                "US");
                          }
                        },
                        child: Text("Continue"),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 5)
            ],
          ),
        ),
      ),
    );
  }
}
