import 'package:flutter/material.dart';
import 'package:clima/constrains.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

  String CityName=' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select City'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: kMainColor,
      ),
      body: Container(
        color: kMainColor,
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: TextField(
                  decoration: kSearchBarDesign,
                  onChanged: (value){
                    CityName=value;
                  },
                ),
              ),

              TextButton(
                  onPressed: (){
                    Navigator.pop(context,CityName);
                  },
                  child: Text('Enter'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    textStyle: TextStyle(
                      fontSize: 20,
                    )
                  ),
              )
          ]
          ),
        ),
      ),
    );
  }
}
