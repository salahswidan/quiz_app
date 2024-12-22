import 'dart:async';

class QuizScreenController {
  List<String> options = ["a", "b", "c", "d"];
  int gropeValueIndex = -1;
  late StreamController<int> streamControllerGropeValueRadio;
  late Sink<int> inputDataGropeValueRadio;
  late Stream<int>  outputDataGropeValueRadio;

    late StreamController<bool> streamControllerBottonState ;
  late Sink<bool> inputDataBottonState ;
  late Stream<bool> isActiveOutputStream ;
  bool isNextActive = false;

  QuizScreenController() {
    streamControllerGropeValueRadio = StreamController();
    inputDataGropeValueRadio = streamControllerGropeValueRadio.sink;
    outputDataGropeValueRadio = streamControllerGropeValueRadio.stream.asBroadcastStream();
    inputDataGropeValueRadio.add(gropeValueIndex);
     streamControllerBottonState = StreamController();
    inputDataBottonState = streamControllerBottonState.sink;
    isActiveOutputStream = streamControllerBottonState.stream.asBroadcastStream();
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
