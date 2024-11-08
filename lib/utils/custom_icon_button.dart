import 'package:flutter/cupertino.dart';
import 'package:habit/utils/global_variables.dart';
import 'package:habit/utils/responsive_helper.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? onTap;
  final String image;
  const CustomIconButton({super.key, this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding:
              EdgeInsets.all(ResponsiveHelper.screenHeight(context) * 0.020),
          decoration: BoxDecoration(
              color: GlobalVariables.backgroundColor,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Image.asset(
              image,
              height:ResponsiveHelper.screenHeight(context) * 0.032,
            ),
          ),
        ));
  }
}
