import 'package:flutter/material.dart';

import '../button_nav_bar_tabs/tabs_screen.dart';

import '../../widgets/buttons/main_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/social_media_auth.dart';
import 'create_new_account_bloc.dart';

CreateNewAccountBloc _bloc = CreateNewAccountBloc();

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _bloc.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(flex: 1),
                  Text(
                    "Create Account",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(flex: 1),
                  CustomTextFormField(
                    controller: _bloc.usernameController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        //allow upper and lower case alphabets and space
                        return "Enter Correct Name";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    hintText: "Username",
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _bloc.emailController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                        return "Enter Correct Email Address";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    hintText: "Email",
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _bloc.passwordController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(value)) {
                        return "Password must have at least one number and one special character";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    hintText: "Password",
                    obscureText: _bloc.isPassHidden,
                    suffixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                          _bloc.isPassHidden = !_bloc.isPassHidden;
                       });
                      },
                      icon: _bloc.isPassHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility) ,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _bloc.confirmPasswordController,
                    validator: (value) {},
                    keyboardType: TextInputType.visiblePassword,
                    hintText: "Confirm Password",
                    obscureText: _bloc.isConfirmPassHidden,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _bloc.isConfirmPassHidden =
                              !_bloc.isConfirmPassHidden;
                        });
                      },
                      icon: _bloc.isConfirmPassHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility) ,
                    ),
                  ),
                  const SizedBox(height: 32),
                  MainButton(
                    onPressed: () {
                      setState(() {
                        if (_bloc.formKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(
                              context, TabsScreen.route);
                        }
                      });
                    },
                    btnText: "Create Account",
                  ),
                  const SizedBox(height: 12),
                  const SocialMediaAuth(),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
