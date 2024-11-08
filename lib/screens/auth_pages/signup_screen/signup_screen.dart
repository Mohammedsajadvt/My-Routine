import 'package:flutter/material.dart';
import 'package:habit/utils/asset_images.dart';
import 'package:habit/utils/custom_button.dart';
import 'package:habit/utils/custom_icon_button.dart';
import 'package:habit/utils/custom_text_field.dart';
import 'package:habit/utils/custom_title.dart';
import 'package:habit/utils/global_variables.dart';
import 'package:habit/utils/responsive_helper.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundColor,
        body: Padding(
          padding:
              EdgeInsets.all(ResponsiveHelper.screenHeight(context) * 0.030),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize:
                              ResponsiveHelper.screenHeight(context) * 0.070,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.blackTextColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: ResponsiveHelper.screenHeight(context) * 0.035),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'Log In',
                              style: TextStyle(
                                  color: GlobalVariables.primaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize:
                                      ResponsiveHelper.screenHeight(context) *
                                          0.019),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: GlobalVariables.primaryColor,
                              size:
                                  ResponsiveHelper.screenHeight(context) * 0.019,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                const CustomTitle(title: 'Name'),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.010,
                ),
                CustomTextField(controller: nameController, obsecureText: false),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(title: 'Email'),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.010,
                ),
                CustomTextField(controller: emailController, obsecureText: false),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(title: 'Password'),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.010,
                ),
                CustomTextField(controller: passwordController, obsecureText: true),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(title: 'Password Confirmation'),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.010,
                ),
                CustomTextField(controller: confirmPasswordController, obsecureText: true),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.050,
                ),
                CustomButton(onTap: (){}, text: 'Sign Up'),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.080,
                ),
                Text('Or sign up with:',style: TextStyle(color: GlobalVariables.secondaryTextColor,fontSize:  ResponsiveHelper.screenHeight(context) * 0.019),),
                  SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.025,
                ),
                CustomIconButton(image: AssetImages().google)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
