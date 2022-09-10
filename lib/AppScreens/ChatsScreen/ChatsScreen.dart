import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui/AppScreens/HomeScreen/HomeScreen.dart';

import '../../AppData/AppData.dart';
import '../AccountScreen/AccountScreen.dart';
import '../SearchScreen/SearchScreen.dart';

class chats_Screen extends StatefulWidget {
  const chats_Screen({Key? key}) : super(key: key);

  @override
  State<chats_Screen> createState() => _chats_ScreenState();
}

class _chats_ScreenState extends State<chats_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text("Chats",style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900
            ),),
          ),
          Container(
            height: 1,
            color: Colors.black38,
          ),
          Expanded(flex: 10,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.black,
                );
              },
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image(
                    image: AssetImage(chats[index]['leading']),
                    fit: BoxFit.fill,
                  ),
                  title: Text(
                    chats[index]['title'],
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(chats[index]['subtitle']),
                );
              },
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
                      onPressed: () {
                        Get.off(()=>homeScreen());
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
    );
  }
}
