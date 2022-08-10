import 'package:flutter/material.dart';
import 'package:tourism_app/Screens/login_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tourism_app/Screens/signup_screen.dart';

class HiScreen extends StatefulWidget {
  HiScreen({Key? key}) : super(key: key);

  @override
  State<HiScreen> createState() => _HiScreenState();
}

class _HiScreenState extends State<HiScreen> {
  var size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/backGroundImg.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Hi!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(300, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginScreen(),
                                  type: PageTransitionType.fade));
                        },
                        child: const Text(
                          "Login In",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(300, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: SignUpScreen(),
                                  type: PageTransitionType.fade));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(300, 50)),
                          maximumSize: MaterialStateProperty.all(Size(300, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // Container(
                            //   Image.asset()
                            // ),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(300, 50)),
                          maximumSize: MaterialStateProperty.all(Size(300, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(300, 50)),
                          maximumSize: MaterialStateProperty.all(Size(300, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Continue with Apple",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 0,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Don't have an account? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Forgot Your Password?",
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
