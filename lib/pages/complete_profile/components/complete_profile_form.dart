import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otp/opt_page.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
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
      child: Column(
        children: [
          buildFirstNameForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: "Countinue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, OTPPage.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kAddressNullError);
        }
      },
      onSaved: (newValue) {
        address = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Address',
          hintText: "Enter your Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPhoneNumberNullError);
        }
      },
      onSaved: (newValue) {
        phoneNumber = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Phone number',
          hintText: "Enter Phone number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Phone.svg")),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kNamelNullError);
        }
      },
      onSaved: (newValue) {
        lastName = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'LastName',
          hintText: "Enter your LastName",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

  TextFormField buildFirstNameForm() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kNamelNullError);
        }
      },
      onSaved: (newValue) {
        firstName = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'FirstName',
          hintText: "Enter your FirstName",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }
}
