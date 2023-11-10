import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';

class HistorySectionWidget extends StatelessWidget {
  HistorySectionWidget({
    super.key,
    required this.title,
    this.visible = false,
    required this.mainText,
    required this.subText,
    required this.length,
  });

  String title;
  bool visible;
  String mainText;
  String subText;
  int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: ColorConstant.mainBlack,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    ColorConstant.mainWhite,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                    color: ColorConstant.mainBlack,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage(
                              DataBase.story[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Visibility(
                          visible: visible,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "11:54",
                                      style: TextStyle(
                                        color: ColorConstant.mainWhite,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              LinearProgressIndicator(
                                color: ColorConstant.mainRed,
                                backgroundColor: ColorConstant.mainRed,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 130,
                            child: Text(
                              mainText,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        subText,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
