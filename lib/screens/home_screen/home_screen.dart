import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/bottom_navigation_bar.dart';

class MyBodyScreen extends StatelessWidget {
  const MyBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeScreen'),
        ),
        body: Center(
          child: Text('HomeScreen'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Camera',
          backgroundColor: purpulColor,
          onPressed: () {},
          child: Image.asset(camera, height: 26, width: 26),
        ),
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}
