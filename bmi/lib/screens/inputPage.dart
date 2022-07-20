import 'dart:ui';
import 'package:bmi/screens/Result_Page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/components/BaseCardInfo.dart';
import 'package:bmi/components/icon_content.dart';
import 'package:bmi/components/constant.dart';
import 'package:bmi/components/BottomButton.dart';
import 'package:bmi/components/BMI_brain.dart';


bool activeColor=false;

enum gender {male,female,nogender}

class InputPage extends StatefulWidget {
   const InputPage({Key? key}) : super(key: key);


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color femaleColor=kInactivecardcolour;
  Color maleColor=kInactivecardcolour;
  gender selectedGender= gender.nogender;
  int height=180;
  int weight=50;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                  child: baseCard(
                      onPress: (){
                        setState(() {
                          selectedGender=gender.male;
                        });
                      },
                      colour: selectedGender==gender.male? maleColor=kActivecardcolour : maleColor=kInactivecardcolour,
                      cardchild: IconSetter(
                    boxIcon: FontAwesomeIcons.mars,
                    boxText: "MALE",
                  )),
                ),
                Expanded(
                  child: baseCard(
                      onPress: (){
                        setState(() {
                          selectedGender=gender.female;
                        });
                      },
                      colour: selectedGender==gender.female? femaleColor=kActivecardcolour : femaleColor=kInactivecardcolour,
                      cardchild: IconSetter(
                    boxIcon: FontAwesomeIcons.venus,
                    boxText: "FEMALE",
                  )),
                ),
              ],
            )),

            //middle container
            Expanded(
              child: baseCard(
                  colour: kActivecardcolour,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 17,
                      ),
                      const Text(
                        'HEIGHT',
                        style: kContainerText,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: kContainerNumber,
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),

                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFFFFFFFF),
                          inactiveTrackColor: Color(0xFF8186A0),
                          thumbColor: Color(0xFFFE0167),
                          overlayColor: Color(0x29FE0167),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                        ),
                          child: Slider(

                          value: height.toDouble(),
                          min: 120,
                          max: 215,
                          onChanged: (double newheight){
                            setState(() {
                              height=newheight.round();
                            });
                          },
                        ),
                      ),
                    ],
                  )



              ),

            ),
            Expanded(child: Row(
              children: [
                Expanded(
                  child: baseCard(
                      colour:kActivecardcolour,
                          cardchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kContainerText,
                              ),

                              Text(
                                weight.toString(),
                                style: kContainerNumber,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                    onpressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: FontAwesomeIcons.minus,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  RoundButton(
                                    onpressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus,
                                  ),
                                ],
                              )
                            ],
                          )
                  ),
                ),
                Expanded(
                  child: baseCard(
                      colour:kActivecardcolour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kContainerText,
                          ),

                          Text(
                            age.toString(),
                            style: kContainerNumber,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                onpressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundButton(
                                onpressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  bmiCalculator bmi =bmiCalculator(height: height, weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultPage(bmiNum: bmi.bmicalculate(),bmiResult: bmi.getResult(),bmiStatement: bmi.getResultString(),);
                  }));
                });
              },
              child: BottomButton(bottomText:'CALCULATE'),
            )
          ]
        ),



      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  void Function() onpressed=(){};
  final IconData icon;
  RoundButton ({Key? key,  required this.onpressed, this.icon=FontAwesomeIcons.minus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      constraints: const BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      fillColor: const Color(0xFF212747),
      child:Icon(icon),
      shape: const CircleBorder(),
      elevation: 6,
    );
  }
}
