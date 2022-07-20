import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class music_card extends StatelessWidget {
 music_card({required this.songName, required this.songDesc,required this.singer});

 String songName;
 String songDesc;
 String singer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
            size: 25,
          ),

          SizedBox(
            width: 10,
          ),

          Column(
            children: [
              Text(
                  songName,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              )),
              Text(songDesc)
            ],
          ),

          SizedBox(
            width: 250,
          ),
          Text(singer),
        ],
      ),
    );
  }
}
