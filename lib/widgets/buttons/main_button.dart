// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  void Function()? onPressed;
  List<Color>? colors;
  double? width;
  double? height;
  String? btnText;
  double radius;

  MainButton({
    required this.onPressed,
    this.colors = const [
      Color(0xFFF46186),
      Color(0xFFEE87D7),
    ],
    this.width = double.infinity,
    this.height = 44,
    required this.btnText,
    this.radius = 26,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors!,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: Text(
            btnText!,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
