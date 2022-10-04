import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => fromErrorText(errors[index]),
      ),
    );
  }

  Row fromErrorText(String errorText) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/Error.svg",
            height: getProportionateScreenHeight(14),
            width: getProportionateScreenWidth(14)),
        SizedBox(width: getProportionateScreenWidth(20)),
        Text(errorText),
      ],
    );
  }
}