import 'package:flutter/material.dart';

class CreateNewAccountBloc {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPassHidden = true;
  bool isConfirmPassHidden = true;
}
