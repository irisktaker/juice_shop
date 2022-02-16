import 'package:flutter/material.dart';

import '/screens/button_nav_bar_tabs/tabs_screen.dart';
import '../../singleton/push_navigate_to_screen.dart';
import '../../widgets/buttons/custom_text_button.dart';
import '../../widgets/buttons/main_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/social_media_auth.dart';
import '../create_new_account/create_new_account.dart';
import '../forget_password/forget_password.dart';
import 'login_bloc.dart';

LoginScreenBloc _bloc = LoginScreenBloc();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const route = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                Text(
                  "Login",
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
                  obscureText:  _bloc.isPassHidden,
                  suffixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                          _bloc.isPassHidden = !_bloc.isPassHidden;
                       });
                      },
                      icon: _bloc.isPassHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility) ,
                    ),
                ),
                const SizedBox(height: 32),
                MainButton(
                  onPressed: () {
                    PushToScreen.instance.pushNavigateToScreen(
                            context, TabsScreen());
                  },
                  btnText: "Login",
                ),
                const SizedBox(height: 12),
                const SocialMediaAuth(),
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      text: 'Forgot Password',
                      onPressed: () {
                        PushToScreen.instance.pushNavigateToScreen(
                            context,  ForgetPasswordScreen());
                      },
                      color: Colors.grey,
                    ),
                    CustomTextButton(
                      text: 'Create new account',
                      onPressed: () {
                        PushToScreen.instance.pushNavigateToScreen(
                            context, const CreateAccountScreen());
                      },
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
