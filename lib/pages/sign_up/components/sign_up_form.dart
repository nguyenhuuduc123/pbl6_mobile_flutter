import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../complete_profile/complete_profile_page.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conformPassword;
  final List<String> errors = [];
  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() => errors.add(error));
    }
  }

  void removeError(String error) {
    if (errors.contains(error)) {
      setState(() => errors.remove(error));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConformPasswordFormField(),
            FormErrors(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
                text: "countinue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, CompleteProfilePage.routeName);
                  }
                }),
          ],
        ),
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue,
      validator: (value) {
        print(value);
        print(password);
        if (value!.isEmpty) {
          return "";
        }
        if (password != value) {
          setState(() => {errors.add(kMatchPassError)});
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (password == conformPassword) {
          setState(() => {errors.remove(kMatchPassError)});
        }
        // if (value.isNotEmpty) {
        //   setState(() => {errors.remove(kPassNullError)});
        // } else if (value.isNotEmpty && password == conformPassword) {
        //   setState(() => {errors.remove(kMatchPassError)});
        // }
        // conformPassword = value;
      },
      //  onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPassNullError);
      //   } else if (value.isNotEmpty && password == conform_password) {
      //     removeError(error: kMatchPassError);
      //   }
      //   conform_password = value;
      // },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'RePassword',
          hintText: "ReEnter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newPassword) => password = newPassword,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() => {errors.add(kPassNullError)});
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() => {errors.add(kShortPassError)});
          return "";
        }
        password = value;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() => {errors.remove(kPassNullError)});
        } else if (value.length >= 8) {
          setState(() => {errors.add(kShortPassError)});
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Password',
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kInvalidEmailError);
        }
      },
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {
        email = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'email',
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }
}
