import 'package:ecommerce/controllar/forgetpassword_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/custombutton_signin.dart';
import 'package:ecommerce/view/widget/auth/customtext_body.dart';
import 'package:ecommerce/view/widget/auth/customtext_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/custometextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordImp controller = Get.put(ForgetPasswordImp());
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
          title: Text('Forget Password ',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.gray)),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitle(
                title: 'Check Emil',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBody(
                body: 'Please enter your correct email to verify it',
              ),
              const SizedBox(
                height: 65,
              ),
              CustomTextFormAuth(
                controller: controller.email,
                hint: 'Enter Your Emil',
                iconData: Icons.email_outlined,
                label: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonSognIn(
                onPressed: () {
                  controller.goVerefayCode();
                },
                textauth: 'Check',
              ),
            ],
          ),
        ));
  }
}
