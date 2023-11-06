import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color_constant/color_constant.dart';

class TopContainerWidget extends StatefulWidget {
  TopContainerWidget({
    super.key,
    required this.title,
    required this.index,
  });

  final dynamic title;
  final int index;

  @override
  State<TopContainerWidget> createState() => _TopContainerWidgetState();
}

class _TopContainerWidgetState extends State<TopContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print("object");
        },
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConstant.containerGrey,
            borderRadius: BorderRadius.circular(5),
          ),
          child: widget.index == 0
              ? Icon(
                  widget.title,
                  size: 17,
                )
              : Text(widget.title),
        ),
      ),
    );
  }
}
