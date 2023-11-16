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
              // expandedHeight: 150,
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
                Center(
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: ColorConstant.mainRed,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 35),
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(width: 15),
              ],
            ),
            SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              child: Row(
                children: List.generate(
                  8,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: ColorConstant.mainRed,
                    ),
                  ),
                ),
              ),
            ))
          ];
        },
        body: Container(),
      ),
    );
  }
}
