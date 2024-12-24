import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  double width;
  double height;
  ProfilePhoto({required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return   Container(padding: EdgeInsets.symmetric(horizontal: 8),
      child: ClipOval(
          child: Image.asset(
            'assets/images/messi2.png',
            width: width,
            height: height,
            fit: BoxFit.cover,
          )),
    );
  }
}
