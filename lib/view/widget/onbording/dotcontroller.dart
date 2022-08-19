import 'package:ecommerce/controllar/onbording_controllar.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBording extends StatelessWidget {
  const CustomDotControllerOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllarImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    OnBoardingList.length,
                    (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration: const Duration(milliseconds: 900),
                        width: controller.currentPage == index ? 20 : 5,
                        height: 6,
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10))))
              ],
            ));
  }
}
