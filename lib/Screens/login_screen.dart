import 'package:flutter/material.dart';
// import 'package:passwordfield/passwordfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }
}

getAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
  );
}

getBody() {
  var flag = true;
  return Padding(
    padding: const EdgeInsets.fromLTRB(30.0, 150.0, 30.0, 200.0),
    child: Container(
      // color: Colors.grey.withOpacity(0.3),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 0.0, 20),
            child: Text(
              "Log In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.6),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: 'Enter Email Id',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              obscureText: flag,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.6),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(460, 70)),
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: const Text(
                "Continue",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Forgot your password?",
              style: TextStyle(
                color: Colors.green,
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
