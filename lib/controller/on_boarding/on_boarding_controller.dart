import 'dart:async';

class OnBoardingController {
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outputData;

  OnBoardingController() {
    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;
    inputData.add(currentPositionPage);
  }
  int currentPositionPage = 0;
  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
        inputData.add(currentPositionPage);

  }
}
