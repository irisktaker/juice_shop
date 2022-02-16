import 'package:flutter/material.dart';

import 'buttons/custom_text_button.dart';

class SocialMediaAuth extends StatelessWidget {
  const SocialMediaAuth({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButton(
          text: "Google",
          onPressed: () {},
          color: Colors.pink,
        ),
        spacerLine(),
        CustomTextButton(
          text: "Facebook",
          onPressed: () {},
          color: Colors.blue.shade900,
        ),
        spacerLine(),
        CustomTextButton(
          text: "Twitter",
          onPressed: () {},
          color: Colors.blue,
        ),
      ],
    );
  }

  Container spacerLine() {
    return Container(
      width: 1,
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey,
            Colors.red,
          ],
        ),
      ),
    );
  }
}