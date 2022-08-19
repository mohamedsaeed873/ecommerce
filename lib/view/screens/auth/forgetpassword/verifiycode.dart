import 'package:ecommerce/controllar/verification_code_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/customtext_body.dart';
import 'package:ecommerce/view/widget/auth/customtext_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifiyCode extends StatelessWidget {
  const VerifiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerificationCodeControllerImp controller =
        Get.put(VerificationCodeControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColor.gray,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(' Verification ',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.gray)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitle(
                title: 'Verification Code',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBody(
                body: 'Enter the code sent to \n Email',
              ),
              const SizedBox(
                height: 65,
              ),
              OtpTextField(
                numberOfFields: 5,
                fieldWidth: 50,
                borderColor: AppColor.primaryColor,

                showFieldAsBox: true,

                onCodeChanged: (String code) {},

                onSubmit: (String verificationCode) {
                  controller.goResetPassword();
                }, // end onSubmit
              )
            ]),
      ),
    );
  }
}
