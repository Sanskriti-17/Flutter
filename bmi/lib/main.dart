import 'package:flutter/material.dart';
import 'screens/Result_Page.dart';
import 'screens/inputPage.dart';

void main() {
  runApp(const bmi());
}

class bmi extends StatelessWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF11153B)),
        scaffoldBackgroundColor: Color(0xFF0F1538),
      ),
      home: InputPage(),
    );
  }
}


