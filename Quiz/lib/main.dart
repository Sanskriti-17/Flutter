import 'dart:ui';
import 'QuesBank.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBank quiz=QuizBank();

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
  void checkans(bool userAns){
    if(quiz.isFinished()){
      Alert(context: context, title: "Finished!", desc: "You have reached the end of quiz.").show();
      quiz.reset();// index=0;
      scoreKeeper.clear();
    }
    else {
      if (quiz.getans() == userAns) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,

        ));
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,

        ));
      }
    }
  }
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
                       quiz.getq(),
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
                    onPressed: (){
                      checkans(true);
                      setState(() {
                        quiz.nextques();
                      });
                    },

            ),

                )
            ),
            Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
              child: const Text('False',
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: (){
                  checkans(false);
                  setState(() {
                    quiz.nextques();
                  });
                },

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


