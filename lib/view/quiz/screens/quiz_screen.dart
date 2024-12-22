import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../widget/custom_app_bar_quiz_screen.dart';
import '../widget/custom_circular_percent_indicator_quiz_screen.dart';
import '../widget/custom_question_title_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String a = ModalRoute.of(context)!.settings.arguments as String;
    // print(a);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 88,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomQuestionTitleQuizScreen(
                  text:  "In what year did the United States host the Fifa World Cup for the first time?",
                ),
                Positioned(
                    right: 0,
                    left: 0,
                    top: -29,
                    child: CustomCircularPercentIndicator(text: "30")),
              ],
            ),
          ]),
        ),
      ),
      backgroundColor: ColorManager.kLightWightColor,
      appBar: CustomAppBarQuizScreen(
        onTap: () {
          Navigator.of(context).canPop();
        },
        text: "7/10",
      ),
    );
  }
}
