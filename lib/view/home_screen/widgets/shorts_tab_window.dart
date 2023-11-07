import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';

class ShortsTabWindow extends StatefulWidget {
  const ShortsTabWindow({super.key});

  @override
  State<ShortsTabWindow> createState() => _ShortsTabWindowState();
}

class _ShortsTabWindowState extends State<ShortsTabWindow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(ImageConstant.shortsLogo),
              SizedBox(width: 10),
              Text(
                "Shorts",
                style: TextStyle(
                  fontSize: 16.71,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_vert,
                        color: ColorConstant.mainWhite,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
