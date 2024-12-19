import 'package:flutter/material.dart';
import '../../../controller/on_boarding/on_boarding_controller.dart';
import '../../../core/const_values.dart';
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
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        onTapSkip: () {
          _onBoardingController.goToLoginPage(context: context);
        },
        outputDataTextStart: _onBoardingController.outputDataStartText,
        onTapNext: () {
          _onBoardingController.onTapNext(context);
        },
        outputDataDotIndicator: _onBoardingController.outputDataDotIndicator,
        onTapDotIndicator: (index) {
          _onBoardingController.isTappedDotIndicator = true;
          _onBoardingController.onTapDotIndicator(index);
        },
        dotCount: ConstValues.onBoardingListConst.length,
      ),
      body: PageView.builder(
        onPageChanged: (value) {
          if(_onBoardingController.isTappedDotIndicator == true) {
            if(_onBoardingController.onBoardingPageViewController.page!.round() == _onBoardingController.currentPositionPage ){
              _onBoardingController.isTappedDotIndicator = false;
            }

          }else {
            _onBoardingController.onTapDotIndicator(value);
          }

        },
        itemCount: ConstValues.onBoardingListConst.length,
        controller: _onBoardingController.onBoardingPageViewController,
        itemBuilder: (context, index) => CustomItemsPageViewOnBoarding(
          onBoardingScreenModel: ConstValues.onBoardingListConst[index],
        ),
      ),
    );
  }
}
