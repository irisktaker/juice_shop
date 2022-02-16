// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  void Function() onPressed;
  Color? color;
  double? fontSize;

  CustomTextButton({
    required this.text,
    required this.onPressed,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize),
      ),
    );
  }
}
