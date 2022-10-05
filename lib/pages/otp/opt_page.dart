import 'package:booking/pages/otp/components/body_otp.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  static String routeName = "/otp";
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP verification"),
        centerTitle: true,
      ),
      body : Body(),
    );
  }
}
