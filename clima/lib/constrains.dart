import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const kMyApi='8e9cd959000d7115d71faa89657340d0';

const kMainColor=Color(0xFF6151C4);

const kTempNumStyle= TextStyle(
color: kMainColor,
fontSize: 70,
  fontWeight: FontWeight.bold,

);

const kTempBodyText=TextStyle(
  color: Colors.white,
  fontSize: 30,
);

const kSearchBarDesign=InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(FontAwesomeIcons.magnifyingGlass,
    color: Colors.white,
  ),
  hintText: 'Enter city Name',
  hintStyle: TextStyle(
    color: kMainColor,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  ),

);