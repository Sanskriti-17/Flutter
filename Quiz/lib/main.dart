import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87 ,
          appBar: AppBar(
            title: const Text('Quiz'),
            backgroundColor: Colors.blueGrey.shade700,
          ),
          body: const SafeArea(
            child: QuizPage(),
          ),
      ) ,
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[
  ];
  List<String> question=[
    'You can lead a cow up stairs but not down stairs',
    'Approximately one quarter of human bones are in feet',
    'A slug\'s blood is green',
  ];

  List<bool> ans=[
    false,
    true,
    true,
  ]

  int qno=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                       question[qno],
                       textAlign: TextAlign.center,
                       style:const TextStyle(
                         color: Colors.white,
                         fontSize: 30,
        ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                  onPressed: (){
                    if(ans[qno]==true) {
                      print('user is right');
                    }else{
                      print("User is Wrong");
                    }
                    setState(() {
                      qno++;
                    });
                  },
                  child: const Text(
                      'True',
                    style:TextStyle(
                           fontSize: 20,
                          color: Colors.white,
                  ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),

            ),
                )
            ),
            Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
              onPressed: (){
                if(ans[qno]==false){
                  print('user is right');
                }else {
                  print('User is wrong');
                }
                setState(() {
                  qno++;
                });
              },
              child: const Text('False',
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),

              ),
            ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        )
    );
  }
}


