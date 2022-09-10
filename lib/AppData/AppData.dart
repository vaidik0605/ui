import 'package:flutter/material.dart';
import 'package:ui/AppData/Images.dart';

  dynamic white = Color(0xfffffcfc);
  dynamic black = Colors.black;

//register_screen privacy string
   const String privacy = """By signing up, you agree to Photo’s Terms of Service and Privacy Policy.""";

   //home Discover image List
List<Map<String, dynamic>> image = [
  {
    'image': '${images.Image1}',
    'leading': '${images.leading1}',
    'title': 'Ridhwan Nordin',
    'subtitle': '@ridzjcob',
  },
  {
    'image': '${images.Image2}',
    'leading': '${images.leading2}',
    'title': 'Clem Onojeghuo',
    'subtitle': '@clemono2',
  },
  {
    'image': '${images.Image3}',
    'leading': '${images.leading3}',
    'title': 'Jon Tyson',
    'subtitle': '@jontyson',
  },
  {
    'image': '${images.Image4}',
    'leading': '${images.leading4}',
    'title': 'Simon Zhu',
    'subtitle': '@smnzhu',
  }
];

//search image list

List<Map<String, dynamic>> search_image = [
  {
    'image': '${images.search_1}',
  },
  {
    'image': '${images.search_2}',
  },
  {
    'image': '${images.search_3}',
  },
  {
    'image': '${images.search_4}',
  },
  {
    'image': '${images.search_5}',
  },
  {
    'image': '${images.search_6}',
  },
  {
    'image': '${images.search_7}',
  },
  {
    'image': '${images.search_8}',
  },
  {
    'image': '${images.search_9}',
  },
  {
    'image': '${images.search_10}',
  },
  {
    'image': '${images.search_11}',
  },
  {
    'image': '${images.search_12}',
  },
  {
    'image': '${images.search_13}',
  },
  {
    'image': '${images.search_14}',
  },
  {
    'image': '${images.search_15}',
  },
];

//chats data

List<Map<String,dynamic>> chats = [
  {
    'leading': images.chat_image1,
    'title' : 'James',
    'subtitle' : 'Thank you! That was very helpful!',
  },
  {
    'leading': images.chat_image2,
    'title' : 'Will Kenny',
    'subtitle' : 'I know... I’m trying to get the funds.',
  },
  {
    'leading': images.chat_image3,
    'title' : 'Beth Williams',
    'subtitle' : 'I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...',
  },
  {
    'leading': images.chat_image4,
    'title' : 'Rev Shawn',
    'subtitle' : 'Wanted to ask if you’re available for a portrait shoot next week.',
  },
];