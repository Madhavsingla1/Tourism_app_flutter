import 'package:flutter/material.dart';

ShowSnackBar(String res, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res)));
}
