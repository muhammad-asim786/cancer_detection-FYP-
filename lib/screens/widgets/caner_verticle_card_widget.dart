import 'package:canecer_scan/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color.dart';
import 'custom_text.dart';

class CancerVerticleCard extends StatelessWidget {
  const CancerVerticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(-2, -2), // Negative offset for top-left
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(2, 2), // Positive offset for bottom-right
          ),
        ],
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            height: 90.h,
            width: 70.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(skinImage, fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250.w,
                child: CustomText(
                  text: 'Basal Cell Catcinoma (BCC)',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(
                width: 260.w,
                child: CustomText(
                  maxLines: 3,
                  text:
                      'The most common form of skin cancer is basal cell carcinoma or basal cell skin ',
                  fontSize: 13.sp,
                  color: blackColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
