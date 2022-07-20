import 'package:flutter/material.dart';

import 'constants.dart';
import 'musicCard.dart';

class musicListPage extends StatefulWidget {
  const musicListPage({Key? key}) : super(key: key);

  @override
  State<musicListPage> createState() => _musicListPageState();
}

class _musicListPageState extends State<musicListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context,index)=>Container(
          child: Card(
            color: Colors.white,
              elevation: 5,
              child: GestureDetector(
                  onTap: (){

                  },
                  child: music_card(songName: 'abc', songDesc: 'hello',singer: 'sans',),
              ),
          ),
        ),
      ),
    );
  }
}

