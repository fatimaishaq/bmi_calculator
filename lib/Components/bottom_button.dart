import 'package:flutter/material.dart';

import '../Constants/constants.dart';


class BottomButton extends StatelessWidget {

  final String btnTitle;
  final Function() onTap;

  BottomButton({required this.btnTitle,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            btnTitle,
            style: kCalBtnTextStyle,
          ),
        ),
      ),
    );
  }
}