import 'package:flutter/material.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
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
          SizedBox(width: 15),
        ],
      ),
      backgroundColor: Colors.amber,
    );
  }
}
