import 'package:flutter/material.dart';
import 'package:flutter_english_play/pages/home_page.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  theme: ThemeData(
    primarySwatch: Colors.yellow,
    accentTextTheme: TextTheme(
      body1: TextStyle(fontSize: 20, color: Colors.blue),
      body2: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    )
  ),
));
