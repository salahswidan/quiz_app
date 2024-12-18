import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/images/onboardingImage(1).svg",
          )
        ],
      ),
    );
  }
}
