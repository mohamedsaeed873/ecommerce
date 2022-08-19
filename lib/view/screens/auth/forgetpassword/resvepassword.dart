import 'package:ecommerce/controllar/restpasswordcontroller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/custombutton_signin.dart';
import 'package:ecommerce/view/widget/auth/customtext_body.dart';
import 'package:ecommerce/view/widget/auth/customtext_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/custometextformauth.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestPasswordImp controller = Get.put(RestPasswordImp());
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
          title: Text('ResetPassword',
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
                title: 'New Password',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBody(
                body: 'Please Enter new Password',
              ),
              const SizedBox(
                height: 65,
              ),
              CustomTextFormAuth(
                controller: controller.password,
                hint: 'Enter the password',
                iconData: Icons.email_outlined,
                label: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                controller: controller.confirmpassword,
                hint: 'Confirm Password',
                iconData: Icons.email_outlined,
                label: "Confirm",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonSognIn(
                onPressed: () {
                  controller.goSuccessPassword();
                },
                textauth: 'Change',
              ),
            ],
          ),
        ));
  }
}
