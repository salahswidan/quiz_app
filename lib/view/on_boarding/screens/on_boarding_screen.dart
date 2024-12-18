import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_bottom_nav_bar.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/images/onboardingImage(1).svg",
          ),
        ],
      ),
    );
  }
}
