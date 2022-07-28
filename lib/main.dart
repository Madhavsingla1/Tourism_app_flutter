import 'package:flutter/material.dart';
import 'package:tourism_app/Screens/login_screen.dart';
import 'package:tourism_app/Screens/hi_screen.dart';
import 'package:tourism_app/Screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HiScreen(),
    );
  }
}
