import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constant/color.dart';
import '../../core/constant/image.dart';
import '../home_screen/home_model.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: BottomNavigationBar(
        currentIndex: model.currentIndex,
        onTap: (index) => model.changeIndex(index),
        selectedLabelStyle: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.bold, color: primaryColor),
        unselectedLabelStyle: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.bold, color: blackColor),
        elevation: .15,
        selectedItemColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(myBody, height: 26.h, width: 26.w),
              tooltip: 'My Body',
              label: 'My Body'),
          BottomNavigationBarItem(
              icon: Image.asset(uvIndex, height: 26.h, width: 26.w),
              tooltip: 'UV Index',
              label: 'UV Index'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.transparent),
              tooltip: 'Camera',
              label: 'Camera'),
          BottomNavigationBarItem(
              icon: Image.asset(message, height: 26.h, width: 26.w),
              tooltip: 'Messages',
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: Image.asset(profile, height: 26.h, width: 26.w),
              tooltip: 'Profile',
              label: 'Profile'),
        ],
      ),
    );
  }
}
