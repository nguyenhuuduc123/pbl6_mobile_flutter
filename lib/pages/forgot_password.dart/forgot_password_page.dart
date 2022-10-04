import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPasswordPage extends StatelessWidget {
  static String routerName = "/forgot_password";
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body : BodyForgotPassword(),
    );
  }
}
