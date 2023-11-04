import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.vertical_distribute_outlined,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20),
              Text("Create a ShortCut"),
            ],
          ),
        ),
      ),
    );
  }
}
