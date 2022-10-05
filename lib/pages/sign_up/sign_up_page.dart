

import 'package:booking/pages/sign_up/components/body_sign_up.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("Sign Up"),
        centerTitle: true,
      ),
      body : Body(),
    );
  }
}