import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/profile_screen/widgets/history_section.dart';
import 'package:flutter_application_1/view/profile_screen/widgets/profile_page_end_section.dart';
import 'package:flutter_application_1/view/profile_screen/widgets/profile_page_task_bar.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({
    super.key,
  });

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
      body: SingleChildScrollView(
        child: Column(
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => TaskBarWidget(
                    icon: DataBase.profileTab[index]["icon"],
                    text: DataBase.profileTab[index]["name"],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            HistorySectionWidget(
              title: "History",
              visible: true,
              mainText: "Attack on titan final episode review",
              subText: "Reeload media",
              length: DataBase.story.length,
            ),
            HistorySectionWidget(
              length: 2,
              title: "PlayLists",
              visible: false,
              mainText: "Watch lator",
              subText: "Private",
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: DataBase.profileTabEndSection.length,
              itemBuilder: (context, index) => ProfilePageEndSectionWidget(
                title: DataBase.profileTabEndSection[index]["name"],
                icon: DataBase.profileTabEndSection[index]["icon"],
                visible: index == 1 ? true : false,
                divide: index % 2 == 1 &&
                        index != DataBase.profileTabEndSection.length - 1
                    ? true
                    : false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
