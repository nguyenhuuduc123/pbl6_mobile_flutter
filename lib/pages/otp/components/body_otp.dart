import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("OTP verification", style: headingStyle),
              const Text("we sent your code to +1 898 860 123"),
              buildTime(),
               SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap : (){
                      // resend your otp
                },
                child: Text("resend otp code",
                    style: TextStyle(decoration: TextDecoration.underline)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("this code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (content, value, child) => Text("00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor)),
          onEnd: () {},
        ),
      ],
    );
  }
}

