import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: CustomText(
              text: model.titles[model.currentIndex],
              color: blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        body: HomeViewModel.widgetOptions[model.currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Camera',
          backgroundColor: purpulColor,
          onPressed: () {},
          child: Image.asset(camera, height: 26, width: 26),
        ),
        bottomNavigationBar: Container(
          height: 85.h,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),
          child: BottomNavigationBar(
            useLegacyColorScheme: false,
            enableFeedback: true,
            mouseCursor: SystemMouseCursors.click,
            currentIndex: model.currentIndex,
            onTap: (index) => model.changeIndex(index),
            selectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: primaryColor),
            unselectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: blackColor),
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
        ));
  }
}
