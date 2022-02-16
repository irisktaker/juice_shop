// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool obscureText;
  String? hintText;
  Widget? suffixIcon;

  CustomTextFormField({
    required this.controller,
    required this.validator,
    required this.keyboardType,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(),
        enabledBorder: const UnderlineInputBorder(),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
