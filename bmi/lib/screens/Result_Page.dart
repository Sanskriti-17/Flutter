import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bmi/components/BottomButton.dart';
import 'package:bmi/components/BaseCardInfo.dart';
import 'package:bmi/components//constant.dart';
import 'package:bmi/components/BMI_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiNum,required this.bmiResult,required this.bmiStatement});
  String bmiNum='';
  String bmiResult='';
  String bmiStatement='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('BMI CALCULATOR'),
      ),

      body : SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                    'Your Result',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                )),

                Expanded(
                  child: baseCard(
                    colour: kActivecardcolour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            bmiResult,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF57C294),
                        ),
                        ),

                        Text(
                          bmiNum,
                          style: kBMInumber,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            bmiStatement,
                            textAlign: TextAlign.center,
                            style: kBMItext,
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Expanded(
                    child: BottomButton(bottomText:'RE-CALCULATE' ,),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
