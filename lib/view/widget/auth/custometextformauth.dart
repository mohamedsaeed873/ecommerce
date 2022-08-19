import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String label;
  final String hint;
  final IconData iconData;
  final TextEditingController controller;

  const CustomTextFormAuth(
      {Key? key,
      required this.label,
      required this.hint,
      required this.iconData,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(label)),
          suffixIcon: Icon(iconData),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 14),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
