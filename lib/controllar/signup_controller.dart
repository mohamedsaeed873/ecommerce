import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToSignin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController username;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  goToSignin() {
    Get.offNamed(AppRpute.login);
  }

  @override
  signup() {
    Get.offNamed(AppRpute.checkemail);
  }
}
