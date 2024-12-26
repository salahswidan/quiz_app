import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../../../controller/answer/answer_screen_controller.dart';
import '../../../core/const_values.dart';
import '../widgets/custom_info_student.dart';
import '../widgets/custom_question_number_answer_screen.dart';
import '../widgets/custom_status_answer_question.dart';

class AnswersScreen extends StatefulWidget {
  const AnswersScreen({super.key});

  @override
  State<AnswersScreen> createState() => _AnswersScreenState();
}

class _AnswersScreenState extends State<AnswersScreen> {
  late AnswerScreenController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnswerScreenController();
  }
  @override
  Widget build(BuildContext context) {
     Map studentAnswers = ModalRoute.of(context)!.settings.arguments as Map;
     controller.getStudentAnswers(studentAnswers);
    
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
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
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
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
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
              itemCount: 6,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
