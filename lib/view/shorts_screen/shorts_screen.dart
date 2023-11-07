import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';

class ShortScreen extends StatelessWidget {
  const ShortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: ColorConstant.mainBlack,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
            SizedBox(width: 20),
          ],
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children:
            // [
            //   Container(
            //     color: Colors.amber,
            //   ),
            //   Container(
            //     color: Colors.red,
            //   )
            // ]);
            List.generate(
          3,
          (index) => Container(
            // child: Image.asset(DataBase.story[index]),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  DataBase.story[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
