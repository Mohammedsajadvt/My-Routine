import 'package:flutter/material.dart';
import 'package:habit/utils/global_variables.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecureText;
  const CustomTextField({super.key, required this.controller, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: GlobalVariables.greyBackgroundColor)),
          focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: GlobalVariables.greyBackgroundColor)),
          fillColor: GlobalVariables.backgroundColor,
          filled: true),
    );
  }
}