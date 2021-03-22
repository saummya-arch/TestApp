import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/views/first_page.dart';
import 'package:TestApp/views/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
      ),
      home: FirstPage(),
    );
  }
}
