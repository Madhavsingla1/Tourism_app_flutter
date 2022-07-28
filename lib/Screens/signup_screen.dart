import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordObscured = true;
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 15, 15),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Color.fromARGB(255, 227, 233, 232),
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Center(
              child: Text(
                "Looks like you dont have an account. Let's create a new account for you ",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: 'Enter your email',
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: 'Enter Username',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: TextField(
                obscureText: password,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            password = !password;
                          });
                        },
                        icon: password == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off))),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: TextField(
                obscureText: passwordObscured,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintText: 'Confirm Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: passwordObscured == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off))),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "By selecting agree and continue below,",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              "I agree to terms of service and privacy policy.",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            )
          ]),
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Agree and continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// getBody() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       const Padding(
//         padding: EdgeInsets.only(top: 50),
//         child: Center(
//           child: Text(
//             "Sign Up",
//             style: TextStyle(
//                 color: Color.fromARGB(255, 227, 233, 232),
//                 fontSize: 40,
//                 fontWeight: FontWeight.w500),
//           ),
//         ),
//       ),
//       const SizedBox(height: 20),
//       const Padding(
//         padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//         child: Center(
//           child: Text(
//             "Looks like you dont have an account. Let's create a new account for you ",
//             style: TextStyle(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400),
//           ),
//         ),
//       ),
//       const SizedBox(height: 30),
//       Column(children:  [
//         Padding(
//           padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
//           child: TextField(
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.white,
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(30))),
//               hintText: 'Enter your email',
//             ),
//           ),
//         ),
//         SizedBox(height: 25),
//         Padding(
//           padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
//           child: TextField(
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.white,
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(30))),
//               hintText: 'Enter Username',
//             ),
//           ),
//         ),
//         SizedBox(height: 20),
//         Padding(
//           padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
//           child: TextField(
//             obscureText: true,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.white,
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(30))),
//               hintText: 'Enter Password',
//             ),
//           ),
//         ),
//         SizedBox(height: 15),
//         Padding(
//           padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
//           child: TextField(
//             obscureText: passwordObscured,
//             decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(30))),
//                 hintText: 'Confirm Password',
//                 suffixIcon: IconButton(
//                     onPressed: () {
                  
//                 },
//                     icon: Icon(Icons.visibility))),
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           "By selecting agree and continue below,",
//           style: TextStyle(
//               color: Colors.white, fontSize: 14, fontWeight: FontWeight.w100),
//         ),
//         Text(
//           "I agree to terms of service and privacy policy.",
//           style: TextStyle(
//               color: Colors.green, fontSize: 14, fontWeight: FontWeight.w100),
//         )
//       ]),
//       const SizedBox(height: 20),
//       Center(
//         child: Container(
//           height: 40,
//           width: 300,
//           decoration: BoxDecoration(
//             color: Colors.lightGreen,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: const Center(
//             child: Text(
//               "Agree and continue",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.w300),
//             ),
//           ),
//         ),
//       )
//     ],
//   );
// }
