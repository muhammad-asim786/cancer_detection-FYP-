import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.fontsize,
    this.fontWeight,
  }) : super(key: key);

  final String? text;
  final Function? onPressed;
  final double? fontsize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256.w,
      height: 70.h,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.r),
              topRight: Radius.circular(100.r),
              bottomLeft: Radius.circular(100.r),
            ),
          ),
          padding: EdgeInsets.zero, // Remove padding to fill the entire button
        ),
        onPressed: onPressed as void Function()?,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [buttonColorTop, buttonColormiddle, buttonColorbottom],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.r),
              topRight: Radius.circular(100.r),
              bottomLeft: Radius.circular(100.r),
            ),
          ),
          child: Center(
            child: Text(
              text!.tr,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
