import 'package:flutter/material.dart';

import '../../widgets/buttons/main_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  final TextEditingController _forgetPasswordController =
      TextEditingController();

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                Text(
                  "Forgot Password",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(flex: 1),
                CustomTextFormField(
                  controller: _forgetPasswordController,
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
                  hintText: "Enter Email ID / Phone Number",
                ),
                const SizedBox(height: 32),
                MainButton(
                  onPressed: () {},
                  btnText: "Submit",
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
