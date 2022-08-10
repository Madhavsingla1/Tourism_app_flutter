import 'package:flutter/material.dart';
import 'package:tourism_app/Pages/mobile_home_page.dart';

ShowSnackBar(String res, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res)));
}

final PageNavigation = [
  const MobileHomePage(),
  const Text("Search"),
  const Text("Alert"),
  const Text("profile"),
];
