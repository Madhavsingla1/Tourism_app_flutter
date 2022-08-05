import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  final bool ispass;
  final String hinttext;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  TextFieldInput(
      {Key? key,
      required this.ispass,
      required this.hinttext,
      required this.textEditingController,
      required this.textInputType})
      : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return widget.ispass == false
        ? TextField(
            controller: widget.textEditingController,
            keyboardType: widget.textInputType,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: widget.hinttext,
            ))
        : TextField(
            obscureText: _obscure,
            controller: widget.textEditingController,
            keyboardType: widget.textInputType,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: widget.hinttext,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                    icon: _obscure == true
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off))),
          );
  }
}
