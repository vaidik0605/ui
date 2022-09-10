import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/AppData/Images.dart';
import 'package:ui/AppScreens/HomeScreen/HomeScreen.dart';
import '../../AppData/AppData.dart';
import '../LogoutScreen/LogoutScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16.75, top: 10),
                child: IconButton(
                  onPressed: () {
                    Get.back(result: () => LogoutScreen());
                  },
                  icon: Image(
                    image: AssetImage(images.back_arrow),
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, top: 32.65),
                child: Text(
                  "Log In",
                  style: GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                child: TextField(
                  cursorColor: black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: black, width: 2, style: BorderStyle.solid)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: black, width: 2, style: BorderStyle.solid)),
                    hintText: "E-mail",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: black,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: black, width: 2, style: BorderStyle.solid)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: black, width: 2, style: BorderStyle.solid)),
                    hintText: "Passwoard",
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => homeScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: Get.height / 15,
                    decoration: BoxDecoration(
                      color: black,
                      border: Border.all(color: black, width: 2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
