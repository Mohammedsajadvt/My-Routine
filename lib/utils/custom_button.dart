import 'package:flutter/material.dart';
import 'package:habit/utils/global_variables.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const CustomButton({super.key,required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,child: Container(padding: const EdgeInsets.all(25),margin: const EdgeInsets.symmetric(horizontal: 25),decoration: BoxDecoration(color: GlobalVariables.primaryColor,borderRadius: BorderRadius.circular(8)),child:  Center(child: Text(text,style: const TextStyle(color: GlobalVariables.backgroundColor,fontWeight: FontWeight.bold,fontSize: 16),),),));
  }
}