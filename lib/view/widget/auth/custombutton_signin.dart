import 'package:ecommerce/core/constant/colors.dart';

import 'package:flutter/material.dart';

class CustomButtonSognIn extends StatelessWidget {
  final String textauth;
  final void Function()? onPressed;
  const CustomButtonSognIn(
      {Key? key, required this.textauth, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(25)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          textauth,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
