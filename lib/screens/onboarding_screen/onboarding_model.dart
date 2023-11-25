import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Auth/signin_screen/signin_screen.dart';

class OnboardingModel extends ChangeNotifier {
  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  set currentPageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  changePageController() {
    if (currentPageIndex == 2) {
      Get.offAll(() => const SignInScreen());
    } else {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    }
    notifyListeners();
  }
}
