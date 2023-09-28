import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/view/Auth/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:canecer_scan/view/custom_widget/custom_text.dart';
import 'package:canecer_scan/view/custom_widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../custom_widget/custom_button.dart';
import '../../custom_widget/custom_text_account.dart';
import '../../custom_widget/cutom_facebook_google_logo.dart';
import '../signup_screen/signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Center(
              child: CustomText(
                text: 'Login to your account',
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 80.h),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 60.h),
            CustomTextField(hintText: 'Password'),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () => Get.to(() => ForgotpasswordScreen()),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CustomText(
                  color: primaryColor,
                  text: 'Forgot Password?',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 60.h),
            DefaultButton(text: 'Log in'),
            SizedBox(height: 60.h),
            CustomText(
              text: 'or login using ',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: blackColor.withOpacity(0.5),
            ),
            SizedBox(height: 50.h),
            ContainerRowWithShadowedImages(
              onFacebookTab: () {},
              onGoogleTab: () {},
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => Get.to(() => SignInUpScreen()),
                  child: CustomTextWihtAccount(
                    text: 'Don’t have an account? ',
                    text2: 'Register Now',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
