import 'package:flutter/material.dart';
import 'package:task1app/log.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: _materialColor,
      ),
      home: Log(),      //Calling Log from log.dart
    );
  }
}

final darkRed = Color(0xffbf2634);
const MaterialColor _materialColor = MaterialColor(0xffbf2634, <int, Color>{
  50: Color(0xffbf2634),
  100: Color(0xffbf2634),
  200: Color(0xffbf2634),
  300: Color(0xffbf2634),
  400: Color(0xffbf2634),
  500: Color(0xffbf2634),
  600: Color(0xffbf2634),
  700: Color(0xffbf2634),
  800: Color(0xffbf2634),
  900: Color(0xffbf2634),
});
