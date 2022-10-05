import 'package:booking/pages/complete_profile/components/body_complete_profile.dart';
import 'package:flutter/material.dart';

class CompleteProfilePage extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("Sign Up"),
        centerTitle: true,
      ),
      body : Body(),
    );
  }
}
