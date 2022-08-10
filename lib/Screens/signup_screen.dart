import 'package:flutter/material.dart';
import 'package:tourism_app/resources/auth_methods.dart';
import 'package:tourism_app/utils/gloabal_used_widgets.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordContorller = TextEditingController();
  final TextEditingController _emailContorller = TextEditingController();
  final TextEditingController _confirmContorller = TextEditingController();
  final TextEditingController _usernameContorller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordContorller.dispose();
    _emailContorller.dispose();
    _confirmContorller.dispose();
    _usernameContorller.dispose();
  }

  void signUp() async {
    String res = await AuthMethod().signup(
        email: _emailContorller.text,
        password: _passwordContorller.text,
        username: _usernameContorller.text,
        confirmpass: _confirmContorller.text);
    if (res == "Success") {
      Navigator.of(context).pop();
      ShowSnackBar(res, context);
    } else {
      ShowSnackBar(res, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 15, 15),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Color.fromARGB(255, 227, 233, 232),
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Looks like you dont have an account.",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            TextFieldInput(
                ispass: false,
                hinttext: "Enter your Email",
                textEditingController: _emailContorller,
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: 25),
            TextFieldInput(
                ispass: false,
                hinttext: "Enter Username",
                textEditingController: _usernameContorller,
                textInputType: TextInputType.text),
            const SizedBox(height: 20),
            TextFieldInput(
                ispass: true,
                hinttext: 'Password',
                textEditingController: _passwordContorller,
                textInputType: TextInputType.text),
            const SizedBox(height: 15),
            TextFieldInput(
                ispass: true,
                hinttext: "Confirm Password",
                textEditingController: _confirmContorller,
                textInputType: TextInputType.text),
            const SizedBox(height: 20),
            const Text(
              "By selecting agree and continue below,",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            ),
            const Text(
              "I agree to terms of service and privacy policy.",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: signUp,
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Agree and continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
