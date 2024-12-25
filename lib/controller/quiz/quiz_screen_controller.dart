import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/const_values.dart';
import 'package:quiz_app_new/core/resources/route_manager.dart';

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
  List<int> listCorrectAnswers = [];
  late AnimationController animationController;
  double animationProgressPercent = 0.0;
  Tween tween = Tween<double>(begin: 0, end: 1);
  late BuildContext _context;
  late StreamController<String> streamControllerQuestionNow;
  late Sink<String> inputQuestionNow;
  late Stream<String> outPutQuestionNow;

  QuizScreenController(
      SingleTickerProviderStateMixin vsync, BuildContext context) {
    _context = context;
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

    streamControllerQuestionNow = StreamController();
    inputQuestionNow = streamControllerQuestionNow.sink;
    outPutQuestionNow = streamControllerQuestionNow.stream.asBroadcastStream();
    inputQuestionNow.add("${questionNow + 1}/${countQuestion}");
  }
  void forwardAnimation() {
    animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationProgressPercent = tween.evaluate(animationController) as double;
      inputDataTime.add((animationProgressPercent * 30).toInt());
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

  void goToAnswerScreen() {
    Navigator.pushNamedAndRemoveUntil(
        _context, RoutesName.KAnswersScreen, (predicate) => false, arguments: listCorrectAnswers);
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
      
      goToAnswerScreen();
      //inputAniamtionProgress.add(animationProgressPercent);
    } else {
      questionNow++;
      makeCounter();
    }
    inputDataQuestion.add(questionNow);
    inputQuestionNow.add("${questionNow + 1}/${countQuestion}");
  }

  void onTapAtItemRadio(int index) {
    gropeValueIndex = index;
    if (questionNow == listCorrectAnswers.length) {
      listCorrectAnswers.add(gropeValueIndex);
    } else {
      listCorrectAnswers[questionNow] = gropeValueIndex;
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
    streamControllerQuestionNow.close();
    inputQuestionNow.close();
  }
}
