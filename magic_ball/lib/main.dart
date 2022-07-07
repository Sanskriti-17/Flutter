import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: BallPage(),
),
);
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          title: Text('Ask Me Anything'),
        ),
        body: magic_Ball(),
      ),
    );
  }
}


class magic_Ball extends StatefulWidget {
  const magic_Ball({Key? key}) : super(key: key);

  @override
  State<magic_Ball> createState() => _magic_BallState();
}

class _magic_BallState extends State<magic_Ball> {
  @override
  int ballNum=1;
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(child: FlatButton(
                  onPressed: (){
                    setState(() {
                      ballNum=Random().nextInt(5)+1;
                    });
                  },
                  child: Image.asset('images/ball$ballNum.png'))),
            ],
          ),
        ),
      ),
    );
  }
}


