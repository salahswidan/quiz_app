import 'dart:async';

import 'package:quiz_app_new/core/const_values.dart';

class QuizScreenController {
  int countQuestion = 0;
  int questionNow = 2;
  int gropeValueIndex = -1;
  late StreamController<int> streamControllerGropeValueRadio;
  late Sink<int> inputDataGropeValueRadio;
  late Stream<int> outputDataGropeValueRadio;

  late StreamController<bool> streamControllerBottonState;
  late Sink<bool> inputDataBottonState;
  late Stream<bool> isActiveOutputStream;
  bool isNextActive = false;

  late StreamController<int> streamControllerTime;
  late Sink<int> inputDataTime;
  late Stream<int> outPutStreamTime;
  int timeSecondCounterNow = 0;

  QuizScreenController() {
    countQuestion = ConstValues.questionList.length;
    streamControllerGropeValueRadio = StreamController();
    inputDataGropeValueRadio = streamControllerGropeValueRadio.sink;
    outputDataGropeValueRadio =
        streamControllerGropeValueRadio.stream.asBroadcastStream();
    inputDataGropeValueRadio.add(gropeValueIndex);
    streamControllerBottonState = StreamController();
    inputDataBottonState = streamControllerBottonState.sink;
    isActiveOutputStream =
        streamControllerBottonState.stream.asBroadcastStream();
    inputDataBottonState.add(isNextActive);

    streamControllerTime = StreamController();
    inputDataTime = streamControllerTime.sink;
    outPutStreamTime = streamControllerTime.stream.asBroadcastStream();
    inputDataTime.add(timeSecondCounterNow);
    makeCounter();
  }
  void makeCounter() {
    for (int i = 0; i < 30; i++) {
      Future.delayed(Duration(seconds: i), () {
       timeSecondCounterNow = i;
        inputDataTime.add(timeSecondCounterNow);
      });
    }
  }

  void onTapAtItemRadio(int index) {
    gropeValueIndex = index;
    inputDataGropeValueRadio.add(gropeValueIndex);
    if (gropeValueIndex != -1) {
      isNextActive = true;
    } else {
      isNextActive = false;
    }
    inputDataBottonState.add(isNextActive);
  }

  onDispose() {
    streamControllerGropeValueRadio.close();
    inputDataGropeValueRadio.close();
    streamControllerBottonState.close();
    inputDataBottonState.close();
    streamControllerTime.close();
    inputDataTime.close();
  }
}
