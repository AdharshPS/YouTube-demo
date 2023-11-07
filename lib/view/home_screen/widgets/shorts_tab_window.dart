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
              separatorBuilder: (context, index) => SizedBox(width: 15),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) => Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_vert,
                        color: ColorConstant.mainWhite,
                        size: 18,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text("Fish cooked in volcano"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 15,
                            left: 15,
                            right: 15,
                          ),
                          child: Text("8.1 lakh views"),
                        )
                      ],
                    )
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
