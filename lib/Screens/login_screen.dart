import 'package:flutter/material.dart';
import 'package:tourism_app/resources/auth_methods.dart';
import 'package:tourism_app/utils/utils.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordContorller = TextEditingController();
  final TextEditingController _emailContorller = TextEditingController();
  var flag = true;
  @override
  void dispose() {
    super.dispose();
    _passwordContorller.dispose();
    _emailContorller.dispose();
  }

  void login() async {
    String res = await AuthMethod().login(
        email: _emailContorller.text, password: _passwordContorller.text);
    if (res == "Success") {
      ShowSnackBar(res, context);
    } else {
      ShowSnackBar(res, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        // color: Colors.grey.withOpacity(0.3),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Log In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
                ispass: false,
                hinttext: 'Enter Email Id',
                textEditingController: _emailContorller,
                textInputType: TextInputType.emailAddress),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
                ispass: true,
                hinttext: "Password",
                textEditingController: _passwordContorller,
                textInputType: TextInputType.text),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(460, 70)),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: login,
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
}
