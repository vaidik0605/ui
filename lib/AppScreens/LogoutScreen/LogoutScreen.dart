import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui/AppData/AppData.dart';
import 'package:ui/AppData/AppWidget.dart';
import 'package:ui/AppScreens/RegisterScreens/RegisterScreen_1.dart';

import '../LoginScreen/LoginScreen.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
          child: Column(
        children: [
          LogoutPotrait().logoutImage(),
          Container(
            height: Get.height / 7,
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                     Get.to(()=>LoginScreen());
                  },
                  child: LogoutPotrait().logIn(),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Get.to(() => registerScreen_1());
                  },
                  child: LogoutPotrait().register(),
                )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
