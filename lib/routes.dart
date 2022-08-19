import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/view/screens/auth/Checkemail.dart';
import 'package:ecommerce/view/screens/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screens/auth/login.dart';
import 'package:ecommerce/view/screens/auth/forgetpassword/resvepassword.dart';
import 'package:ecommerce/view/screens/auth/signup.dart';
import 'package:ecommerce/view/screens/auth/success_signup.dart';
import 'package:ecommerce/view/screens/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'view/screens/auth/forgetpassword/success_restPassword.dart';
import 'view/screens/auth/forgetpassword/verifiycode.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRpute.login: (context) => const Login(),
  AppRpute.signup: (context) => const SignUp(),
  AppRpute.forgetpassword: (context) => const ForgetPassword(),
  AppRpute.resetpassword: (context) => const RestPassword(),
  AppRpute.veryfiyCode: (context) => const VerifiyCode(),
  AppRpute.successresetpassword: (context) => const SuccessPassword(),
  AppRpute.successsignup: (context) => const SuccessSignUp(),
  AppRpute.checkemail: (context) => const CheckEmail(),
//OnBoarding
  AppRpute.onboarding: (context) => const OnBoarding(),
};
