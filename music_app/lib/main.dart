import 'package:flutter/material.dart';
import 'musicListPage.dart';

void main() {
  runApp(Music_App(appTitle: 'Trending'));
}

class Music_App extends StatelessWidget {
  // const Music_App({Key? key}) : super(key: key);
  Music_App({required this.appTitle});
  String appTitle='Trending';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text(appTitle),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        body: musicListPage(),
      ),
    );
  }
}


