import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWithName extends StatelessWidget {
  final String imagePath;
  final String name;

  const AvatarWithName({Key? key, required this.imagePath, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 8),
          Text(name),
        ],
      ),
    );
  }
}