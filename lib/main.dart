import 'package:booking/pages/wellcome_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'routes.dart';
import 'splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Muli',
          primaryColor: kPrimaryColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor),
          ),
          scaffoldBackgroundColor: Colors.white),
     // home: const SplashScreen(),
       initialRoute : SplashScreen.routeName,
       routes:routes,
    );
  }
}
