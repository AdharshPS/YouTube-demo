import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/bottom_navigation_bar/widgets/bottom_sheet_card.dart';
import 'package:flutter_application_1/view/home_screen/home_screen.dart';
import 'package:flutter_application_1/view/profile_screen/profile_screen.dart';
import 'package:flutter_application_1/view/shorts_screen/shorts_screen.dart';
import 'package:flutter_application_1/view/subscriptions_screen/subscriptions_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List screenList = [
    HomeScreen(),
    ShortScreen(),
    null,
    SubscriptionsScreen(),
    ProfileSceen(),
  ];
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainWhite,

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNum,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: ColorConstant.mainWhite,
        unselectedFontSize: 8.5,
        selectedFontSize: 8.5,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: indexNum == 0
                ? Icon(
                    Icons.home_filled,
                    color: Colors.black,
                    size: 16,
                  )
                : Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.homeIcon,
                        ),
                      ),
                    ),
                  ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: indexNum == 1
                ? Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.shortsBlack,
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.shortsWhite,
                        ),
                      ),
                    ),
                  ),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 32,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              indexNum == 3
                  ? Icons.subscriptions_sharp
                  : Icons.subscriptions_outlined,
              size: 16,
            ),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.profile,
                  ),
                ),
              ),
            ),
            label: "You",
          ),
        ],
        onTap: (index) {
          setState(() {});
          index == 2
              ? showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                  fontSize: 16.71,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close),
                            ),
                          ],
                        ),
                        Column(
                          children: List.generate(
                            DataBase.iconList.length,
                            (currentindex) => BottomSheetCard(
                              title: DataBase.iconList[currentindex]["title"],
                              icon: DataBase.iconList[currentindex]["icon"],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : indexNum = index;
        },
      ),
      body: Center(
        child: screenList[indexNum],
      ),
    );
  }
}
