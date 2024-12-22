import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../widget/custom_app_bar_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String a = ModalRoute.of(context)!.settings.arguments as String;
    // print(a);
    return Scaffold(
      backgroundColor: ColorManager.kLightWightColor,
      appBar: CustomAppBarQuizScreen(
        onTap:  () {
              Navigator.of(context).canPop();
            },
        text: "7/10",
      ),
    );
  }
}
