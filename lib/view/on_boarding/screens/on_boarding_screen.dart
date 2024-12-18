import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../controller/on_boarding/on_boarding_controller.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingController _onBoardingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onBoardingController = OnBoardingController();
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        outputDataDotIndicator: _onBoardingController.outputData,
        onTap: (index) {
          _onBoardingController.onTapDotIndicator(index);
        },
        dotCount: 3,
      //  currentPositionPage: _onBoardingController.currentPositionPage,
      ),
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
