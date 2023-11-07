import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: ColorConstant.mainWhite,
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
            SizedBox(width: 35),
            Icon(
              Icons.settings,
              color: ColorConstant.mainBlack,
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    ImageConstant.profile,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "emalano",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "@emalano6068",
                        style: TextStyle(
                          fontSize: 10.31,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "View channel >",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ColorConstant.mainBlack),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFc4c4c4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
