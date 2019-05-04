import 'package:flutter/material.dart';
import './pages/home.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
  build(context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: HomepPage()
    );
  }
}
