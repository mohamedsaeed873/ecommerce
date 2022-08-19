// ignore_for_file: file_names

import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/custombutton_signin.dart';
import 'package:flutter/material.dart';

class SuccessPassword extends StatelessWidget {
  const SuccessPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.gray)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                  child: Icon(
                    Icons.check_circle_outline,
                    size: 100,
                    color: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  child: Text(
                    'Verified successfully',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonSognIn(
                    onPressed: () {},
                    textauth: 'Go to login',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
