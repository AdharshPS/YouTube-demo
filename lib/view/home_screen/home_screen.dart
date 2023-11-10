import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/home_screen/widgets/shorts_tab_window.dart';
import 'package:flutter_application_1/view/home_screen/widgets/top_container_widget.dart';
import 'package:flutter_application_1/view/home_screen/widgets/videos_tab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      // appBar: AppBar(
      //   backgroundColor: ColorConstant.mainWhite,
      //   elevation: 0,
      //   title: Container(
      //     height: 30,
      //     width: 100,
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage(
      //           ImageConstant.youTubeLogo,
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.cast_sharp,
      //       color: Colors.black,
      //     ),
      //     SizedBox(width: 35),
      //     Icon(
      //       Icons.notifications_none,
      //       color: Colors.black,
      //     ),
      //     SizedBox(width: 35),
      //     Icon(
      //       Icons.search,
      //       color: Colors.black,
      //     ),
      //     SizedBox(width: 15),
      //   ],
      // ),

      // body
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              // top containers
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DataBase.topContainerText.length,
                    (index) => TopContainerWidget(
                      index: index,
                      title: DataBase.topContainerText[index],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Shorts tab
              ShortsTabWindow(),

              // videos tab
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DataBase.videoTabMap.length,
                itemBuilder: (context, index) => VideosTabWidget(
                  title: DataBase.videoTabMap[index]["description"],
                  subtitle: DataBase.videoTabMap[index]["account"],
                  image: DataBase.videoTabMap[index]["image"],
                ),
              ),
              ShortsTabWindow(),
            ],
          ),
        ),
      ),
    );
  }
}
