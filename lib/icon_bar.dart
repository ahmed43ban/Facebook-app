import 'package:flutter/material.dart';

class IconsBar extends StatelessWidget {
  String path ;
  double width;
  Color bottomcolor;
  IconsBar({required this.path,this.width=0,this.bottomcolor= Colors.transparent});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 48,
        height: 39,
        decoration:  BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border(
                bottom: BorderSide(
                  color: bottomcolor,
                  width: width,
                ))),
        child: Image.asset(
          path,
          width: 28,
          height: 28,
        ));
  }
}
