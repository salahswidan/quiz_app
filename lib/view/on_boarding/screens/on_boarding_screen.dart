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
  void dispose() {
    _onBoardingController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          onTapNext: () {
            _onBoardingController.onTapNext();
          },
          outputDataDotIndicator: _onBoardingController.outputData,
          onTapDotIndicator: (index) {
            _onBoardingController.onTapDotIndicator(index);
          },
          dotCount: 3,
        ),
        body: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) => Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/onboardingImage(3).svg",
                          height: 400,
                        ),
                        SizedBox(
                          height: 108,
                        ),
                        Text(
                          "Synonyms for quiz",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Synonyms for quiz",
                          style: TextStyle(fontSize: 21),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          itemCount: 3,
        ));
  }
}
