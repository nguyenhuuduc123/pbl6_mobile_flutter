import 'package:flutter/material.dart';

import '../../../components/social_cart.dart';
import '../../../constants.dart';

import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Register Account", style: headingStyle),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            const Text(
              "Complete your detail or continue \n  with social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
              SocialCard(icon: "assets/icons/google-icon.svg", press: () {}),
              SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
            ]),
            SizedBox(height: getProportionateScreenHeight(20)),
            const Text(
              "By countinue your confirm that you agree \n with our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
