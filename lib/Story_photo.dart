import 'package:flutter/material.dart';

class StoryPhoto extends StatelessWidget {
  String pathstory;
  String? pathpro;
   StoryPhoto({required this.pathstory,this.pathpro=null});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Stack(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              pathstory,
              width: 110,
              height: 160,
              fit: BoxFit.cover,
            )),
        if(pathpro != null)
        ClipOval(
            child: Image.asset(
              pathpro!,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ))
      ]),
    );
  }
}
