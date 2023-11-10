import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';

class VideosTabWidget extends StatelessWidget {
  VideosTabWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  String image;
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "1:54",
                    style: TextStyle(
                      color: ColorConstant.mainWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(ImageConstant.profile),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(subtitle),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          )
        ],
      ),
    );
  }
}
