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
  }
}
