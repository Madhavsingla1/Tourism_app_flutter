import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> signup(
      {required String email,
      required String password,
      required String username,
      required String confirmpass}) async {
    String res = "Some error Occured";
    try {
      if (password != confirmpass) {
        res = "Confirm password and Password are not equal";
      } else if (email.isNotEmpty ||
          password.isNotEmpty ||
          confirmpass.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection("users").doc(cred.user!.uid).set({
          "username": username,
          "uid": cred.user!.uid,
          "password": password,
          "email": email,
        });
        res = "Success";
      } else {
        res = "Please Enter all the fields";
      }
    } catch (err) {
      res = err.toString();
    }

    return res;
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "Success";
      } else {
        res = "Please Enter all the fields";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
