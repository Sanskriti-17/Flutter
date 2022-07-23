import 'package:flutter/material.dart';
import 'musicListPage.dart';

void main() {
  runApp(Music_App());
}

class Music_App extends StatelessWidget {
  // const Music_App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text('Trending'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        body: musicListPage(),
      ),
    );
  }
}


