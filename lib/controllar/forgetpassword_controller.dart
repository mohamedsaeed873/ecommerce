import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goVerefayCode();
}

class ForgetPasswordImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  goVerefayCode() {
    Get.offNamed(AppRpute.veryfiyCode);
  }

  @override
  checkemail() {}
}
