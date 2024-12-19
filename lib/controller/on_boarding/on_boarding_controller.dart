import 'dart:async';

import 'package:flutter/material.dart';

class OnBoardingController {
  late StreamController<int> streamControllerDotIndicator;
  late Sink<int> inputDataDotIndicator;
  late Stream<int> outputDataDotIndicator;
  late StreamController<int> streamControllerStartText;
  late Sink<int> inputDataStartText;
  late Stream<int> outputDataStartText;
  late PageController onBoardingPageViewController;

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
    inputDataDotIndicator.add(currentPositionPage);
            inputDataStartText.add(currentPositionPage);

  }

  void onDispose() {
    streamControllerDotIndicator.close();
    inputDataDotIndicator.close();
    onBoardingPageViewController.dispose();
            inputDataStartText.close();
            streamControllerStartText.close();

  }
}
