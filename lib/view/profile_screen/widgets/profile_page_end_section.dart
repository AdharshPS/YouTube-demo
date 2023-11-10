import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageEndSectionWidget extends StatelessWidget {
  ProfilePageEndSectionWidget({
    super.key,
    this.visible,
    required this.title,
    required this.icon,
    required this.divide,
  });

  bool? visible;
  String title;
  FaIcon icon;
  bool divide;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    visible: visible!,
                    child: Text(
                      "20 recommendations",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Visibility(
          visible: divide,
          child: Divider(
            color: ColorConstant.mainBlack,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
