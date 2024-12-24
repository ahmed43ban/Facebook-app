import 'package:flutter/material.dart';

class TopIcons extends StatelessWidget {
  String path;
  double vertical;
  BoxFit fit ;
  TopIcons({required this.path,this.vertical=0,this.fit=BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6,vertical: vertical),
    child: Image.asset(
    path,
    width: 24,
    height: 24,
    ) );
  }}

