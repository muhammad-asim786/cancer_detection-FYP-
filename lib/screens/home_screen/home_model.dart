import 'package:flutter/material.dart';

import '../messages_screen/messages_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../uv_index_screen/uv_index_screen.dart';
import 'home_screen.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  static List<Widget> widgetOptions = <Widget>[
    MyBodyScreen(),
    UvIndexScreen(),
    MessagesScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
    return;
  }
}
