import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class BodyLoginSuccess extends StatelessWidget {
  const BodyLoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: SizeConfig.screenHeight * 0.04),
      Image.asset("assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4),
      SizedBox(height: SizeConfig.screenHeight * 0.08),
      Text("Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
          )),
      Spacer(),
      SizedBox(
        width: SizeConfig.screenWidth * 0.6,
        child: DefaultButton(
          text: " Back to Home",
          press: () {},
        ),
      ),
      Spacer(),
    ]);
  }
}
