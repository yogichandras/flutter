import 'package:flutter/material.dart';
import './textchanged.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practice 1"),
        ),
        body: TextChanger(
          textChange: "Yogi Chandra",
        ),
      ),
    );
  }
}
