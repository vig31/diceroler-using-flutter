import 'package:flutter/material.dart';
import 'HomePage.dart';
//TODO:add imges to the asset in pubspec.yaml

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      theme: ThemeData(
        primaryColor: Color(0xff30336b),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
