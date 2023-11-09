import 'package:flutter/material.dart';

class TaskBarWidget extends StatelessWidget {
  const TaskBarWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final dynamic icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Color(0xFFc4c4c4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              icon,
              SizedBox(width: 10),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
