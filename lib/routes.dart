import 'package:booking/pages/otp/opt_page.dart';
import 'package:booking/pages/sign_up/sign_up_page.dart';
import 'package:booking/pages/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'pages/complete_profile/complete_profile_page.dart';
import 'pages/forgot_password.dart/forgot_password_page.dart';
import 'pages/login_succsess/login_success_page.dart';
import 'pages/sign_in/sign_in_page.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInpage.routeName : (context) => const SignInpage(),
  ForgotPasswordPage.routerName : (context) => const ForgotPasswordPage(),
  LoginSuccesPage.routeName : (context) => const LoginSuccesPage(),
  SignUpPage.routeName : (context) => const SignUpPage(),
  CompleteProfilePage.routeName : (context) => const CompleteProfilePage(),
  OTPPage.routeName : (context) => const OTPPage(),
};
