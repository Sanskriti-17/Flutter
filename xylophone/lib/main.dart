import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophone_page());


class xylophone_page extends StatelessWidget {
  const xylophone_page({Key? key}) : super(key: key);
  static AudioCache player = AudioCache();

  void playSound(int Num){
    final player = AudioCache();
    player.play('note$Num.wav');
  }

  Expanded soundKey({int num=1,Color clr= Colors.red}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(num);
        },
        color: clr,
        child: Text(' '),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundKey(num:1,clr:Colors.red),
              soundKey(num:2,clr:Colors.orange),
              soundKey(num:3,clr:Colors.yellow),
              soundKey(num:4,clr:Colors.green),
              soundKey(num:5,clr:Colors.blue),
              soundKey(num:6,clr:Colors.indigo),
              soundKey(num:7,clr:Colors.purple),

            ],
          ),
        ),
      ),
    );
  }
}


