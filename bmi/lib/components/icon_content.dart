import 'package:flutter/material.dart';
import 'package:bmi/components/constant.dart';
class IconSetter extends StatelessWidget {

  IconSetter({ this.boxIcon,this.boxText =''});

  final boxIcon;
  final String boxText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          boxIcon,
          size: 65,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          boxText,
          style: kContainerText,
        )
      ],
    );
  }
}
