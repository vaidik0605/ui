import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/AppScreens/ChatsScreen/ChatsScreen.dart';
import 'package:ui/AppScreens/HomeScreen/HomeScreen.dart';
import '../../AppData/AppData.dart';
import '../AccountScreen/AccountScreen.dart';

class search_Screen extends StatefulWidget {
  const search_Screen({Key? key}) : super(key: key);

  @override
  State<search_Screen> createState() => _search_ScreenState();
}

bool search = false;
TextEditingController _search = TextEditingController();

class _search_ScreenState extends State<search_Screen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return WillPopScope(
      child: GestureDetector(
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
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 16, top: 32.65),
                          child: Text(
                            "Search",
                            style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w400,
                              fontSize: 36,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 32),
                          child: TextField(
                            controller: _search,
                            onChanged: (value) {
                              String s = value;
                              if (s.isNotEmpty && s == "dogs") {
                                search = true;
                              } else {
                                search = false;
                              }
                              setState(() {});
                            },
                            cursorColor: black,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: black,
                                      width: 2,
                                      style: BorderStyle.solid)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: black,
                                      width: 2,
                                      style: BorderStyle.solid)),
                              hintText: "Search all photos",
                            ),
                          ),
                        ),
                        (search)
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16, top: 32),
                                    child: Text(
                                      "ALL RESULTS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h / 2,
                                    margin: EdgeInsets.only(
                                        left: 16, right: 16, top: 24),
                                    child: GridView.builder(
                                        physics: BouncingScrollPhysics(),
                                        itemCount: search_image.length,
                                        itemBuilder: (context, index) {
                                          return Image(
                                            image: AssetImage(
                                                "${search_image[index]['image']}"),
                                            fit: BoxFit.fill,
                                          );
                                        },
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio: 1,
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5)),
                                  ),
                                  Container(
                                    height: h / 15,
                                    width: double.infinity,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 32),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "See More",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          side:
                                              BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                ],
                              )
                            : Text(""),
                      ],
                    )),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Get.off(homeScreen());
                      },
                      icon: Icon(Icons.home_filled)),
                  IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(Icons.search)),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                      width: 70,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xffFF00D6),
                            Color(0xffFF4D00),
                          ]),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Get.off(() => chats_Screen());
                      },
                      icon: Icon(Icons.chat)),
                  IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Get.off(account_Screen());
                      },
                      icon: Icon(Icons.account_circle_rounded)),
                ],
              )),
            ],
          )),
        ),
      ),
      onWillPop: () {
        Get.off(() => homeScreen());
        return Future.value();
      },
    );
  }
}
