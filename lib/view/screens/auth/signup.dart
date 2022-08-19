import 'package:ecommerce/controllar/signup_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/custombutton_signin.dart';
import 'package:ecommerce/view/widget/auth/customtext_body.dart';
import 'package:ecommerce/view/widget/auth/customtext_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custometextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
          title: Text('Sign Up',
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
                title: 'Welcome Backe',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBody(
                body:
                    'Sign Up With Youer Email And Password OR Continue Social Media',
              ),
              const SizedBox(
                height: 65,
              ),
              CustomTextFormAuth(
                controller: controller.username,
                hint: 'Enter Your UserName',
                iconData: Icons.person_outline,
                label: "UserName",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                controller: controller.phone,
                hint: 'Enter Your phone',
                iconData: Icons.phone_outlined,
                label: "Phone",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                controller: controller.email,
                hint: 'Enter Your Emile',
                iconData: Icons.email_outlined,
                label: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                controller: controller.password,
                hint: 'Enter Your Password',
                iconData: Icons.lock_outlined,
                label: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonSognIn(
                onPressed: () {
                  controller.signup();
                },
                textauth: 'Sign Up',
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do hare an account ? "),
                  InkWell(
                    onTap: () {
                      controller.goToSignin();
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
