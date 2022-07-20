import 'package:flutter/material.dart';
import 'package:bmi/components/constant.dart';
class BottomButton extends StatelessWidget {
 BottomButton({this.bottomText='CALCULATE'});

 String bottomText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      color: kBottomContainerColor,
      height: 80,
      padding: EdgeInsets.all(27),
      child: Text(
        bottomText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}