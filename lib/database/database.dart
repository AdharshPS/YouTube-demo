import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';

class DataBase {
  static List topContainerText = [
    Icons.explore_outlined,
    "All",
    "Gaming",
    "Music",
    "Live",
    "Anime",
    "Mixes",
    "Computer programming",
    "Film criticisms",
    "Manga"
  ];
  static List<Map> iconList = [
    {
      "title": "Create a Short",
      "icon": Image.asset(
        ImageConstant.shortsWhite,
      )
    },
    {
      "title": "Upload a video",
      "icon": Icon(
        Icons.upgrade_outlined,
        color: ColorConstant.mainBlack,
      ),
    },
    {
      "title": "Go live",
      "icon": Image.asset(
        ImageConstant.liveLogo,
        color: ColorConstant.mainBlack,
      )
    },
    {
      "title": "Create a post",
      "icon": Icon(
        Icons.edit_square,
        color: ColorConstant.mainBlack,
      ),
    },
  ];
  static List<String> story = [
    "asset/images/newReleases (1).png",
    "asset/images/newReleases (2).png",
    "asset/images/newReleases (3).png",
    "asset/images/newReleases (4).png",
  ];
}
