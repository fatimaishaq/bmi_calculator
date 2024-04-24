import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {

  final IconData icon;
  final String iconName;
  final Color contentColor;

  IconContent({required this.icon,required this.iconName,required this.contentColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        Icon(
          icon,
          size: 50,
          color: contentColor,
        ),
        Text(
          iconName,
          style: TextStyle(
              color: contentColor,
              fontWeight: FontWeight.w800,
              fontSize: 18,
              letterSpacing: 1),
        ),
      ],
    );
  }
}