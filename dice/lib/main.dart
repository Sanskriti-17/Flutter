import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int lBnum= 1 ;
  int rBnum=1;
  void change(){
    setState(() {
      lBnum=Random().nextInt(6)+1;
      rBnum=Random().nextInt(6)+1;
    });

  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children:[
            Expanded(
              child: FlatButton(
                onPressed: (){

                    change();

                  print('Left button');
                },
                child: Image.asset('images/dice$lBnum.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: (){
                      change();
                    print('Right button');//will print this is console
                  },
                  child: Image.asset('images/dice$rBnum.png')),
            ),
          ]
      ),
    );
  }
}

