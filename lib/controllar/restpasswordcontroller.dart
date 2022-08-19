import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class RestPasswordController extends GetxController {
  // ignore: non_constant_identifier_names
  RestPassword();
  goSuccessPassword();
}

class RestPasswordImp extends RestPasswordController {
  late TextEditingController password;
  late TextEditingController confirmpassword;

  @override
  void onInit() {
    password = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }

  @override
  goSuccessPassword() {
    Get.offNamed(AppRpute.successresetpassword);
  }

  @override
  // ignore: non_constant_identifier_names
  RestPassword() {}
}
