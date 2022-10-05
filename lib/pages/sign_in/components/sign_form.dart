import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forgot_password.dart/forgot_password_page.dart';
import '../../login_succsess/login_success_page.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];


  void addError(String error){
    if(!errors.contains(error)){
      setState(()=>
      errors.add(error) );
    }
  }
  void removeError(String error){
    if(errors.contains(error)){
      setState(()=>
      errors.remove(error) );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFromField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFromField(),
          SizedBox(height: getProportionateScreenHeight(20)),

          Row(children: [
            Checkbox(
                activeColor: kPrimaryColor,
                value: remember,
                onChanged: (value) {
                  setState(() => remember = value!);
                }),
            const Text("Rememberme"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(
                    context, ForgotPasswordPage.routerName);
              },
              child: const Text(
                "Forgot password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ]),
          //  SizedBox(height: getProportionateScreenHeight(20)),
          FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Countine",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // neu tat ca validator dung
                Navigator.pushNamed(context, LoginSuccesPage.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

// password
  TextFormField buildPasswordFromField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newPassword) => password = newPassword,
      validator: (value) {
        if (value!.isEmpty ) {
          setState(() => {errors.add(kPassNullError)});
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() => {errors.add(kShortPassError)});
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() => {errors.remove(kPassNullError)});
        } else if (value.length >= 8 ) {
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

  // email
  TextFormField buildEmailFromField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty ) {
         removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
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
