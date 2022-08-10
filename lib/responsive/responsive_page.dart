import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  final mobilelayoutpage;
  final weblayoutpage;
  const ResponsivePage(
      {Key? key, required this.mobilelayoutpage, required this.weblayoutpage})
      : super(key: key);

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          //web Screen
          return widget.weblayoutpage;
        } else {
          //mobile Screen
          return widget.mobilelayoutpage;
        }
      },
    );
  }
}
