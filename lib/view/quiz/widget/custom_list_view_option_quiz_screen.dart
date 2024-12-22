

import 'package:flutter/material.dart';

import '../../../controller/quiz/quiz_screen_controller.dart';
import 'custom_item_redio_quiz_screen.dart';

class CustomListViewOptionQuizScreen extends StatelessWidget {
  const CustomListViewOptionQuizScreen({
    super.key,
    required QuizScreenController quizScreenController, required this.itemCount,
  }) : _quizScreenController = quizScreenController;

  final QuizScreenController _quizScreenController;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            CustomItemRedioQuizScreen(),
        separatorBuilder: (context, index) => SizedBox(
              height: 25,
            ),
        itemCount:itemCount);
  }
}
