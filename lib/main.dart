import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/AppScreens/LogoutScreen/LogoutScreen.dart';

void main()
{
  runApp(const GetMaterialApp(
    home: LogoutScreen(),
    debugShowCheckedModeBanner: false,
  ));
}