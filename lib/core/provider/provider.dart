import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../screens/onboarding_screen/onboarding_model.dart';
import '../../screens/splash_screen.dart/splash_model.dart';

List<SingleChildWidget> providers = [
  // Add your providers here
  ChangeNotifierProvider<SplashModel>(create: (_) => SplashModel()),
  ChangeNotifierProvider<OnboardingModel>(create: (_) => OnboardingModel()),
  ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
];
