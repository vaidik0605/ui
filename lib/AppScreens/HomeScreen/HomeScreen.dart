import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:ui/AppData/Images.dart';
import 'package:ui/AppScreens/ChatsScreen/ChatsScreen.dart';
import 'package:ui/AppScreens/SearchScreen/SearchScreen.dart';
import '../../AppData/AppData.dart';
import '../AccountScreen/AccountScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

List<Color> c = [Colors.yellow, Colors.green, Colors.blue];

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Text(
                        "Discover",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 32),
                      child: Text(
                        "WHAT'S NEW TODAY",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      height: h / 2.1,
                      margin: EdgeInsets.all(16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: image.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 31.8),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "${image[index]['image']}"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            leading: Image(
                                              image: AssetImage(
                                                  "${image[index]['leading']}"),
                                              fit: BoxFit.fill,
                                            ),
                                            title: Text(
                                              "${image[index]['title']}",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "${image[index]['subtitle']}",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Get.back(
                                                  result: () => homeScreen());
                                            },
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: h / 2.5,
                                    margin: (index == 3)
                                        ? EdgeInsets.only(right: 0)
                                        : EdgeInsets.only(right: 3),
                                    child: Image(
                                        image: AssetImage(
                                            "${image[index]['image']}"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: h / 1,
                                    width: w / 2,
                                    child: ListTile(
                                      leading: Image(
                                        image: AssetImage(
                                            "${image[index]['leading']}"),
                                        fit: BoxFit.fill,
                                      ),
                                      title: Text(
                                        "${image[index]['title']}",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      subtitle:
                                          Text("${image[index]['subtitle']}"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "BROWSE ALL",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w900, fontSize: 13),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                      alignment: Alignment.topCenter,
                      child: StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: const <StaggeredGridTile>[
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: Image(
                                  image: AssetImage("${images.browse_1}"),
                                  fit: BoxFit.fill,
                                )),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_2}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_3}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_4}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 3,
                                child: Image(
                                    image: AssetImage("${images.browse_5}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2.50,
                                child: Image(
                                    image: AssetImage("${images.browse_6}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_7}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_8}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 4,
                                child: Image(
                                    image: AssetImage("${images.browse_9}"),
                                    fit: BoxFit.fill)),
                            StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2.50,
                                child: Image(
                                    image: AssetImage("${images.browse_10}"),
                                    fit: BoxFit.fill)),
                          ]),
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
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {},
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
                    onPressed: () {
                      Get.off(account_Screen());
                    },
                    icon: Icon(Icons.account_circle_rounded)),
              ],
            )),
          ],
        )),
      ),
      onWillPop: () {
        SystemNavigator.pop();
        // ignore: null_argument_to_non_null_type
        return Future.value();
      },
    );
  }
}
