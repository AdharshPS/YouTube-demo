import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/bottom_navigation_bar/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationBarScreen(),
        ),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.mainWhite,
      child: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.youTubeIcon),
              // fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
