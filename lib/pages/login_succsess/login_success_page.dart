

import 'package:flutter/material.dart';

import 'components/body_login_success.dart';

class LoginSuccesPage extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("Login Success"),
        centerTitle: true,
      ),
      body : BodyLoginSuccess(),
    );
  }
}