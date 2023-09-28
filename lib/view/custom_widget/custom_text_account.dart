import 'package:canecer_scan/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWihtAccount extends StatelessWidget {
  final String text;
  final String text2;
  const CustomTextWihtAccount({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
            text: text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.sp,
                color: blackColor,
              ),
            )),
        TextSpan(
            text: text2,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.sp,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    ));
  }
}
