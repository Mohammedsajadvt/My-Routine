import 'package:flutter/material.dart';
import 'package:habit/utils/global_variables.dart';
import 'package:habit/utils/responsive_helper.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(color: GlobalVariables.secondaryTextColor,fontSize:  ResponsiveHelper.screenHeight(context) * 0.019),),
      ],
    );
  }
}