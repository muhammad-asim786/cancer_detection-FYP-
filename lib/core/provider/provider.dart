import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../view/onboarding_screen/onboarding_model.dart';
import '../../view/splash_screen.dart/splash_model.dart';

List<SingleChildWidget> providers = [
  // Add your providers here
  ChangeNotifierProvider<SplashModel>(create: (_) => SplashModel()),
  ChangeNotifierProvider<OnboardingModel>(create: (_) => OnboardingModel())
];
