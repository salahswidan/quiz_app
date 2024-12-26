import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../../../core/const_values.dart';
import '../widgets/custom_info_student.dart';
import '../widgets/custom_question_number_answer_screen.dart';
import '../widgets/custom_status_answer_question.dart';

class AnswersScreen extends StatelessWidget {
  const AnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  var m = ModalRoute.of(context)!.settings.arguments ;
    //   print(m);
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomInfoStudent(
            name: "Salah Swidan",
            grade: "Grade:   3  /  5",
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomQuestionNumber(
                  order: 1,
                ),
                CustomStatusAnswerQuestion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}