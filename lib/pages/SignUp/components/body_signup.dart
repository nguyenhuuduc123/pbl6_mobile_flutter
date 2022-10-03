// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_textfield.dart';
import '../../../components/textfield_container.dart';
import '../../../constants.dart';
import '../../Login/login_page.dart';
import 'background_signup.dart';
import 'or_divider_signup.dart';
import 'social_icon_signup.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          const Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/icons/signup.svg", height: size.height * 0.35),
          SizedBox(height: size.height * 0.03),
          TextFieldContainer(
              child: RoundedInputTextField(
                  hintText: "Your Email", onChanged: (value) {})),
          RoundedPasswordTextField(onChanged: (value) {}),
          RoundedButton(text: "SIGNUP", press: () {}),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => const LoginPage()));
              }),
          const OrDivider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SocialIcon(iconSrc: "assets/icons/facebook.svg", press: () {}),
             SocialIcon(iconSrc: "assets/icons/twitter.svg", press: () {}),
              SocialIcon(iconSrc: "assets/icons/google-plus.svg", press: () {}),
          ]),
              ],
            ),
        ));
  }
}


