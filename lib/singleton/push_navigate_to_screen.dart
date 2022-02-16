import 'package:flutter/material.dart';

class PushToScreen {

  PushToScreen();
  static final PushToScreen instance = PushToScreen();
  
  void pushNavigateToScreen(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}