import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  static List<Map> videoTabMap = [
    {
      "description": "Create a Short",
      "account": "Create a Short",
      "image": "asset/images/youtube_video_01.jpg",
    },
    {
      "description": "Create a Short",
      "account": "Create a Short",
      "image": "asset/images/youtube_video_02.jpg",
    },
    {
      "description": "Create a Short",
      "account": "Create a Short",
      "image": "asset/images/youtube_video_03.jpg",
    },
    {
      "description": "Create a Short",
      "account": "Create a Short",
      "image": "asset/images/youtube_video_04.jpg",
    },
    {
      "description": "Create a Short",
      "account": "Create a Short",
      "image": "asset/images/youtube_video_05.jpg",
    },
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

  static List<Map> profileTab = [
    {
      "name": "Switch account",
      "icon": FaIcon(
        FontAwesomeIcons.doorOpen,
        size: 14,
      )
    },
    {
      "name": "Google Account",
      "icon": FaIcon(
        FontAwesomeIcons.google,
        size: 14,
      )
    },
    {
      "name": "Turn on Incognito",
      "icon": Image.asset(ImageConstant.incognito),
    },
  ];
  static List<Map> profileTabEndSection = [
    {
      "name": "Your Videos",
      "icon": FaIcon(
        Icons.slideshow,
        size: 14,
      ),
    },
    {
      "name": "Downloads",
      "icon": FaIcon(
        Icons.download,
        size: 14,
      )
    },
    {
      "name": "Your movies",
      "icon": FaIcon(
        Icons.movie_creation_outlined,
        size: 14,
      )
    },
    {
      "name": "Get Youtube premium",
      "icon": FaIcon(
        FontAwesomeIcons.youtube,
        size: 14,
      )
    },
    {
      "name": "Time watched",
      "icon": FaIcon(
        Icons.insert_chart_outlined_outlined,
        size: 14,
      )
    },
    {
      "name": "Help and feedback",
      "icon": FaIcon(
        Icons.help_outline,
        size: 14,
      )
    },
  ];
}
