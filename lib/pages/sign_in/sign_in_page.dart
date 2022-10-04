import 'package:flutter/material.dart';

import 'components/body_sign_up.dart';


class SignInpage extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SING IN"),
        centerTitle: true,
      ),
      body : Body(),
    );
  }
}
