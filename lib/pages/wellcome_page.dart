import 'package:flutter/material.dart';

import 'components/body.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : const Body(),
    );
  }
}