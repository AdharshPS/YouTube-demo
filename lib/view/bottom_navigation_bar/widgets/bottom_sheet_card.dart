import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard({super.key, required this.title, required this.icon});

  final String title;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          SizedBox(width: 20),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: icon,
          ),
          SizedBox(width: 20),
          Text(title),
        ],
      ),
    );
  }
}
