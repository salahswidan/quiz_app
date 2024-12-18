import 'package:flutter/material.dart';
import 'package:quiz_app_new/view/on_boarding/screens/on_boarding_screen.dart';

import '../../view/splash/screens/splash_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.KsplashScreen : (context) => const SplashScreen(),
    RoutesName.KOnBoardingScreen : (context) => const OnBoardingScreen(),
  };

}
class RoutesName {
  static const String KsplashScreen = '/KsplashScreen';
  static const String KOnBoardingScreen = '/KOnBoardingScreen';
  
}