import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainBlack,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: ColorConstant.mainWhite,
              elevation: 0,
              title: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.youTubeLogo,
                    ),
                  ),
                ),
              ),
              actions: [
                Icon(
                  Icons.cast_sharp,
                  color: Colors.black,
                ),
                SizedBox(width: 35),
                Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                SizedBox(width: 35),
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(width: 15),
              ],
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
