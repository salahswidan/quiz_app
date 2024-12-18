import 'package:flutter/material.dart';

import '../../core/resources/route_manager.dart';
import '../../view/on_boarding/screens/on_boarding_screen.dart';

class SplashController {
  static void goToOnBoarding({required BuildContext context}) {
      Navigator.pushNamed(context, 
      RoutesName.KOnBoardingScreen);
  }
}