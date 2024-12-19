import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app_new/core/const_values.dart';
import 'package:quiz_app_new/models/on_boarding_screen/on_boarding_screen_model.dart';

import '../../../controller/on_boarding/on_boarding_controller.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/custom_items_page_view_on_boarding.dart';

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
        itemCount: ConstValues.onBoardingListConst.length,
        controller: pageController,
        itemBuilder: (context, index) => CustomItemsPageViewOnBoarding(
          onBoardingScreenModel: ConstValues.onBoardingListConst[index] ,
        ),
      ),
    );
  }
}
