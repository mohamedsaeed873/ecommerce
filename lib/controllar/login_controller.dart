import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignup() {
    Get.offNamed(AppRpute.signup);
  }

  @override
  login() {}

  @override
  goToForgetPassword() {
    Get.offNamed(AppRpute.forgetpassword);
  }
}
