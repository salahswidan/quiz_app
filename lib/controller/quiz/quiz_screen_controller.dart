import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/const_values.dart';

class QuizScreenController {
  int countQuestion = 0;
  int questionNow = 0;
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

  late StreamController<int> streamControllerQuestion;
  late Sink<int> inputDataQuestion;
  late Stream<int> outPutStreamQuestion;
  int timeSecondCounterNow = 0;

  late StreamController<double> streamControllerAniamtionProgress;
  late Sink<double> inputAniamtionProgress;
  late Stream<double> outPutAniamtionProgress;
  bool animationStatus = true;
  List<int> listCorrectAnswers = [];
  late AnimationController animationController;
  double animationProgressPercent = 0.0;
  Tween tween = Tween<double>(begin: 0, end: 1);

  QuizScreenController(SingleTickerProviderStateMixin vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: Duration(seconds: 30),
    );

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

    streamControllerQuestion = StreamController();
    inputDataQuestion = streamControllerQuestion.sink;
    outPutStreamQuestion = streamControllerQuestion.stream.asBroadcastStream();
    inputDataQuestion.add(questionNow);

    streamControllerAniamtionProgress = StreamController();
    inputAniamtionProgress = streamControllerAniamtionProgress.sink;
    outPutAniamtionProgress =
        streamControllerAniamtionProgress.stream.asBroadcastStream();
    inputAniamtionProgress.add(animationProgressPercent);
  }
  void forwardAnimation() {
    animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationProgressPercent = tween.evaluate(animationController) as double;
      inputDataTime.add((animationProgressPercent * 31).toInt());
      inputAniamtionProgress.add(animationProgressPercent);
    });
  }

  void restartAnimation() {
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        nextQuestion();
      }
    });
  }

  void makeCounter() {
    forwardAnimation();
    inputDataTime.add((animationProgressPercent * 30).toInt());
  }

  void nextQuestion() {
    if (questionNow == listCorrectAnswers.length) {
      listCorrectAnswers.add(gropeValueIndex);
    } else {
      listCorrectAnswers[questionNow] = gropeValueIndex;
    }
    gropeValueIndex = -1;
    inputDataGropeValueRadio.add(gropeValueIndex);
    if (questionNow >= ConstValues.questionList.length - 1) {
      inputAniamtionProgress.add(animationProgressPercent);

      print("con't next question");
    } else {
      questionNow++;
      print("increament question");
      makeCounter();
    }
    inputDataQuestion.add(questionNow);
  }

  void onTapAtItemRadio(int index) {
    gropeValueIndex = index;
    if (questionNow == listCorrectAnswers.length) {
      listCorrectAnswers.add(gropeValueIndex);
    } else {
      listCorrectAnswers[questionNow] = gropeValueIndex;
    }
    for (int i in listCorrectAnswers) {
      //   print(i);
    }
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
    streamControllerQuestion.close();
    inputDataQuestion.close();
    streamControllerAniamtionProgress.close();
    inputAniamtionProgress.close();
  }
}
