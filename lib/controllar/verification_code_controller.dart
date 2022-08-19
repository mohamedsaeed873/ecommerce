import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerificationCodeController extends GetxController {
  // ignore: non_constant_identifier_names
  VerificationCode();
  goResetPassword();
}

class VerificationCodeControllerImp extends VerificationCodeController {
  late TextEditingController email;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  goResetPassword() {
    Get.offNamed(AppRpute.resetpassword);
  }

  @override
  // ignore: non_constant_identifier_names
  VerificationCode() {}
}
