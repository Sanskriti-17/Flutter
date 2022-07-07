import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        title: Text('My Heart'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/heart.png'),
        ),
      ),
    ),
  ),
  );
}

