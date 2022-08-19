import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckemailController extends GetxController {
  checkemail();
  goSuccess();
}

class CheckemailImp extends CheckemailController {
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
  goSuccess() {
    Get.offNamed(AppRpute.checkemail);
  }

  @override
  checkemail() {}
}
