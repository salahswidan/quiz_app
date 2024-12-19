import 'dart:async';

import 'package:flutter/material.dart';

class OnBoardingController {
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outputData;
  late PageController onBoardingPageViewController;

  OnBoardingController() {
    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;
    inputData.add(currentPositionPage);
    onBoardingPageViewController =
        PageController(initialPage: currentPositionPage);
  }
  int currentPositionPage = 0;
  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
    inputData.add(currentPositionPage);
    onBoardingPageViewController.animateToPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      currentPositionPage,
    );
  }

  void onTapNext() {
    if (currentPositionPage == 2) {
      currentPositionPage = 0;
    } else {
      currentPositionPage++;
    }
    onBoardingPageViewController.animateToPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      currentPositionPage,
    );
    inputData.add(currentPositionPage);
  }

  void onDispose() {
    streamController.close();
    inputData.close();
    onBoardingPageViewController.dispose();
  }
}
