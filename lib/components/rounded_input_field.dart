import 'package:flutter/material.dart';

class RoundedInputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  
  const RoundedInputTextField({
    Key? key,
    required this.hintText,
     this.icon  = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(icon),
        border: InputBorder.none,
      ),
    );
  }
}
