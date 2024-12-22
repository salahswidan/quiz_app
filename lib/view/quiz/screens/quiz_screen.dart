import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../widget/custom_app_bar_quiz_screen.dart';

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
            Stack(
              children: [
                CircularPercentIndicator(
                  animationDuration: 30000,
                  backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
                  animation: true,
                  radius: 43.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: Text(
                    "30",
                    style: GoogleFonts.baloo2(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                  progressColor: ColorManager.kPrimaryColor,
                ),
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
