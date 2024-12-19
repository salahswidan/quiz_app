import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/const_values.dart';
import 'package:quiz_app_new/core/resources/route_manager.dart';

class OnBoardingController {
  late StreamController<int> streamControllerDotIndicator;
  late Sink<int> inputDataDotIndicator;
  late Stream<int> outputDataDotIndicator;
  late StreamController<int> streamControllerStartText;
  late Sink<int> inputDataStartText;
  late Stream<int> outputDataStartText;
  late PageController onBoardingPageViewController;
  bool isTappedDotIndicator = false;

  OnBoardingController() {
    streamControllerDotIndicator = StreamController();
    inputDataDotIndicator = streamControllerDotIndicator.sink;
    outputDataDotIndicator = streamControllerDotIndicator.stream;
    inputDataDotIndicator.add(currentPositionPage);

    streamControllerStartText = StreamController();
    inputDataStartText = streamControllerStartText.sink;
    outputDataStartText = streamControllerStartText.stream;
    inputDataStartText.add(currentPositionPage);

    onBoardingPageViewController =
        PageController(initialPage: currentPositionPage);
  }
  int currentPositionPage = 0;
  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
    inputDataDotIndicator.add(currentPositionPage);
    onBoardingPageViewController.animateToPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      currentPositionPage,
    );
    inputDataStartText.add(currentPositionPage);
  }

  void onTapNext(BuildContext context) {
    if (currentPositionPage == ConstValues.onBoardingListConst.length - 1) {
      goToLoginPage(context: context);
    } else {
      currentPositionPage++;
    }
    onBoardingPageViewController.animateToPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      currentPositionPage,
    );
    inputDataDotIndicator.add(currentPositionPage);
    inputDataStartText.add(currentPositionPage);
  }

  void goToLoginPage({required BuildContext context}) {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.KLoginScreen, (route) => false);
  }

  void onDispose() {
    streamControllerDotIndicator.close();
    inputDataDotIndicator.close();
    onBoardingPageViewController.dispose();
    inputDataStartText.close();
    streamControllerStartText.close();
  }
}
