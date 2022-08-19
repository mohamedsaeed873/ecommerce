// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerce/controllar/onbording_controllar.dart';
import 'package:ecommerce/view/widget/onbording/custombutton.dart';
import 'package:ecommerce/view/widget/onbording/customslider.dart';
import 'package:ecommerce/view/widget/onbording/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllarImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: CusomcustomsliderOnBording(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CustomDotControllerOnBording(),
                      Spacer(
                        flex: 2,
                      ),
                      CustomButtonOnBording(),
                    ],
                  ))
            ],
          ),
        ));
  }
}
