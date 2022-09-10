import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/AppData/Images.dart';
import 'AppData.dart';

class LogoutPotrait {
  Widget logoutImage() {
    return Expanded(
      child: Container(
        height: Get.height / 1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(images.logoutImage), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Center(
              child: Image(
                image: AssetImage(images.centerImage),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logIn() {
    return Container(
      height: Get.height / 15,
      width: Get.width / 15,
      margin: const EdgeInsets.only(left: 16, top: 20, bottom: 33, right: 9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 2, style: BorderStyle.solid, color: black)),
      alignment: Alignment.center,
      child: const Text(
        "LOG IN",
        style: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 13, letterSpacing: 0.04),
      ),
    );
  }

  Widget register() {
    return Container(
      height: Get.height / 15,
      width: Get.width / 15,
      margin: const EdgeInsets.only(top: 20, bottom: 33, right: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: black,
          border: Border.all(width: 2, style: BorderStyle.solid, color: black)),
      child: Text(
        "REGISTER",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 13,
            color: white,
            letterSpacing: 0.04),
      ),
    );
  }
}
class RegisterPotrait {
  Widget regiterText() {
    return Text(
      "Register",
      style: GoogleFonts.comfortaa(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        letterSpacing: 1.5,
      ),
    );
  }
}
