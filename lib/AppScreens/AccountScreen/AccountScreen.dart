import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/AppData/Images.dart';
import 'package:ui/AppScreens/ChatsScreen/ChatsScreen.dart';
import 'package:ui/AppScreens/HomeScreen/HomeScreen.dart';
import 'package:ui/AppScreens/SearchScreen/SearchScreen.dart';

class account_Screen extends StatefulWidget {
  const account_Screen({Key? key}) : super(key: key);

  @override
  State<account_Screen> createState() => _account_ScreenState();
}

class _account_ScreenState extends State<account_Screen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return WillPopScope(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(images.profile_picture),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "Jane",
                          style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.w400,
                            fontSize: 36,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "SAN FRANCISCO, CA",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        height: h / 15,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 16, right: 16, top: 32, bottom: 16),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "FOLLOW JANE",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              side: BorderSide(color: Colors.black)),
                        ),
                      ),
                      Container(
                        height: h / 15,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "MESSAGE",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(color: Colors.black)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                        child: StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: const <StaggeredGridTile>[
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 3,
                                child: Image(
                                  image: AssetImage(images.account_image1),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                  image: AssetImage(images.account_image2),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                  image: AssetImage(images.account_image3),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                  image: AssetImage(images.account_image4),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                  image: AssetImage(images.account_image5),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 3,
                                child: Image(
                                  image: AssetImage(images.account_image6),
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: h / 15,
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                )),
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
                    onPressed: () {
                      Get.off(search_Screen());
                    },
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
                    onPressed: () {},
                    icon: Icon(Icons.account_circle_rounded)),
              ],
            )),
          ],
        )),
      ),
      onWillPop: () {
        Get.off(() => homeScreen());
        return Future.value();
      },
    );
  }
}
