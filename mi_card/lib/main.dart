import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/my pic.jpg"),
              backgroundColor: Colors.white,
              ),
               Text(
                'Sanskriti Chauhan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript',
                ),
                  ),
               Text(
                'FLUTTER DEVELOPMENT',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.tealAccent,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                ),
               ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  thickness: 1,
                  color: Colors.teal[300],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[800],
                    ),
                    title: Text(
                      '+91 95602 50417',
                      style: TextStyle(
                          color: Colors.teal[700],
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child:ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[800],
                    ),
                    title: Text(
                      'sanskritichauhan1712@gmail.com',
                      style: TextStyle(
                          color: Colors.teal[700],
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}