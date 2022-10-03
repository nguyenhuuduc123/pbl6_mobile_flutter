import 'package:booking/components/textfield_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordTextField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child : TextField(
        onChanged : onChanged,
        obscureText: true,
        decoration: const InputDecoration(
          hintText:"Password",
          border : InputBorder.none,
          icon : Icon(Icons.lock),
          suffixIcon : Icon(Icons.visibility,color:kPrimaryColor),
        ),
      ),
    );
  }
}