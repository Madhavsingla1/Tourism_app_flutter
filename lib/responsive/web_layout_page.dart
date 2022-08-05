import 'package:flutter/material.dart';

class WebLayoutPage extends StatefulWidget {
  WebLayoutPage({Key? key}) : super(key: key);

  @override
  State<WebLayoutPage> createState() => _WebLayoutPageState();
}

class _WebLayoutPageState extends State<WebLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Web"),
      ),
    );
  }
}
