import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
     this.login = true,
     this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
      Text(
         login ? "Don't have an Acount ? " : "Already have an Acount",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap:press,
          child:  Text(
          login?  "Sign up": "Sign in",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}