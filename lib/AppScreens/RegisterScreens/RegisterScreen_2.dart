import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/AppData/Images.dart';
import 'package:ui/AppData/AppData.dart';
import 'package:ui/AppScreens/HomeScreen/HomeScreen.dart';
import 'package:ui/AppScreens/RegisterScreens/RegisterScreen_1.dart';

import '../../AppData/AppWidget.dart';

class registerScreen_2 extends StatefulWidget {
  const registerScreen_2({Key? key}) : super(key: key);

  @override
  State<registerScreen_2> createState() => _registerScreen_2State();
}

class _registerScreen_2State extends State<registerScreen_2> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
                  padding: EdgeInsets.only(left: 16.75,top: 10),
                  child: IconButton(
                    onPressed: () {
                      Get.back(result: () => registerScreen_1());
                    },
                    icon: Image(image: AssetImage(images.back_arrow),height: 30,width: 30,),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, top: 32.65),
                  child: RegisterPotrait().regiterText(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 32),
                  child: TextField(
                    cursorColor: black,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: black,width: 2,style: BorderStyle.solid)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: black,width: 2,style: BorderStyle.solid)
                      ),
                      hintText:"User_name",
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  Get.to(()=>homeScreen());
                },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: Get.height / 15,
                      decoration: BoxDecoration(
                        color: black,
                        border: Border.all(color: black,width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child: Text("SIGN UP",style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w900,color: white,
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text("${privacy}",style: TextStyle(
                        fontSize: 13,
                        color: black,
                      ),
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
