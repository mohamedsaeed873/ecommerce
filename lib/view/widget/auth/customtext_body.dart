import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  final String body;
  const CustomTextBody({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      textAlign: TextAlign.center,
      style:
          Theme.of(context).textTheme.bodyText2!.copyWith(color: AppColor.gray),
    );
  }
}
