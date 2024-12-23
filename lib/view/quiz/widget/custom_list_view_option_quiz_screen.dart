import 'package:flutter/material.dart';

import '../../../controller/quiz/quiz_screen_controller.dart';
import 'custom_item_redio_quiz_screen.dart';

class CustomListViewOptionQuizScreen extends StatelessWidget {
  const CustomListViewOptionQuizScreen({
    super.key,
    required QuizScreenController quizScreenController,
    required this.itemCount,
    required this.option,
    required this.outputDataGropeValueRadio, required this.onTap,
  }) : _quizScreenController = quizScreenController;

  final QuizScreenController _quizScreenController;
  final int itemCount;
  final List<dynamic> option;
  final Stream<int> outputDataGropeValueRadio;
  final void Function(int indexValue) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => StreamBuilder(
              stream: outputDataGropeValueRadio,
              builder: (context, snapshot) => CustomItemRedioQuizScreen(
                onTap: () {
                  onTap(index);
                },
                isSelected: snapshot.data == null
                    ? false
                    : snapshot.data == index
                        ? true
                        : false,
                option: option[index],
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 25,
            ),
        itemCount: itemCount);
  }
}
