// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../components/no_account_text.dart';
import '../../../components/social_cart.dart';

import '../../../size_config.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Wellcome Back ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Sign in with your email and passowrd \n or countinue with social medial",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                SocialCard(icon: "assets/icons/google-icon.svg", press: () {}),
                SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
              ]),
              SizedBox(height: getProportionateScreenHeight(20)),
              const NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}
