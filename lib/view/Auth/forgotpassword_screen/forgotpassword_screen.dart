import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/view/Auth/signup_screen/signup_screen.dart';
import 'package:canecer_scan/view/custom_widget/custom_text.dart';
import 'package:canecer_scan/view/custom_widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../custom_widget/custom_button.dart';
import '../../custom_widget/custom_text_account.dart';

class ForgotpasswordScreen extends StatelessWidget {
  const ForgotpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Center(
                  child:
                      Image.asset(forgotPassword, height: 315.h, width: 315.w)),
              SizedBox(height: 80.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  color: primaryColor,
                  text: 'Forgot Password?',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  maxLines: 2,
                  text:
                      'Dont worry! It occurs. Please enter the email address linked with your account.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: blackColor.withOpacity(0.4),
                ),
              ),
              SizedBox(height: 60.h),
              CustomTextField(hintText: 'Enter Email'),
              SizedBox(height: 60.h),
              DefaultButton(text: 'Send Code'),
              SizedBox(height: 60.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => Get.to(() => SignInUpScreen()),
                  child: CustomTextWihtAccount(
                    text: 'Don’t have an account? ',
                    text2: 'Register Now',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
