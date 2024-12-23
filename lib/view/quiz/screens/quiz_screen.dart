import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app_new/controller/quiz/quiz_screen_controller.dart';
import 'package:quiz_app_new/core/const_values.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';
import 'package:quiz_app_new/core/widgets/custom_material_button.dart';

import '../widget/custom_app_bar_quiz_screen.dart';
import '../widget/custom_circular_percent_indicator_quiz_screen.dart';
import '../widget/custom_item_redio_quiz_screen.dart';
import '../widget/custom_list_view_option_quiz_screen.dart';
import '../widget/custom_question_title_quiz_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late QuizScreenController _quizScreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quizScreenController = QuizScreenController();
  }

  @override
  void dispose() {
    _quizScreenController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // String a = ModalRoute.of(context)!.settings.arguments as String;
    // print(a);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 88,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CustomQuestionTitleQuizScreen(
                        text: ConstValues
                            .questionList[_quizScreenController.questionNow]
                            .question,
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          top: -29,
                          child: CustomCircularPercentIndicator(
                              outPutStreamTime: _quizScreenController.outPutStreamTime,
                            text: "30")),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  CustomListViewOptionQuizScreen(
                    onTap: (indexValue) {
                      _quizScreenController.onTapAtItemRadio(indexValue);
                    },
                    outputDataGropeValueRadio:
                        _quizScreenController.outputDataGropeValueRadio,
                    quizScreenController: _quizScreenController,
                    itemCount: ConstValues
                        .questionList[_quizScreenController.questionNow]
                        .listAnswer
                        .length,
                    option: ConstValues
                        .questionList[_quizScreenController.questionNow]
                        .listAnswer,
                  ),
                ]),
          ),
        ),
      ),
      backgroundColor: ColorManager.kLightWightColor,
      appBar: CustomAppBarQuizScreen(
        onTap: () {
          Navigator.of(context).canPop();
        },
        text:
            "${_quizScreenController.questionNow + 1}/${_quizScreenController.countQuestion}",
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          right: 24.0,
          left: 24,
          bottom: 24,
        ),
        child: CustomMaterialBotton(
            text: "Next",
            onPressed: () {},
            isActiveOutputStream: _quizScreenController.isActiveOutputStream),
      ),
    );
  }
}
