import 'package:flutter/material.dart';
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
      backgroundColor: Colors.blueGrey,

      // appbar
      appBar: AppBar(
        elevation: 0,
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

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNum,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        unselectedFontSize: 8.5,
        selectedFontSize: 8.5,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: indexNum == 1
                ? Icon(Icons.play_arrow)
                : Icon(Icons.play_arrow_outlined),
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
            icon: Icon(indexNum == 3
                ? Icons.subscriptions_sharp
                : Icons.subscriptions_outlined),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: "Shorts",
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
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Create",
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close),
                                ),
                              ],
                            ),
                          ),
                          BottomSheetCard(),
                        ],
                      )),
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
