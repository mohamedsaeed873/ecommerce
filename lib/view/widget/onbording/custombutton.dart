import 'package:ecommerce/controllar/onbording_controllar.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBording extends GetView<OnBordingControllarImp> {
  const CustomButtonOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          child: const Text("Continue"),
        ));
  }
}
