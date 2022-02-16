import 'package:flutter/material.dart';

class LoginScreenBloc {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPassHidden = true;
}
