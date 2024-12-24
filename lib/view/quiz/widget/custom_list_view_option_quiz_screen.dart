import 'package:flutter/material.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';

import '../../../controller/quiz/quiz_screen_controller.dart';
import '../../../core/const_values.dart';
import 'custom_item_redio_quiz_screen.dart';

class CustomListViewOptionQuizScreen extends StatelessWidget {
  const CustomListViewOptionQuizScreen({
    super.key,
    required QuizScreenController quizScreenController,
   
    required this.outputDataGropeValueRadio, required this.onTap, required this.outPutStreamQuestion,
  }) : _quizScreenController = quizScreenController;

  final QuizScreenController _quizScreenController;
  
  final Stream<int> outputDataGropeValueRadio;
  final Stream<int>  outPutStreamQuestion;
  final void Function(int indexValue) onTap;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2(
      streams: StreamTuple2<int, int>(outPutStreamQuestion, outputDataGropeValueRadio),
      builder: (context, snapshots) =>
       ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CustomItemRedioQuizScreen(
            onTap: () {
              onTap(index);
            },
            isSelected: snapshots.snapshot2.data == null
                ? false
                : snapshots.snapshot2.data == index
                    ? true
                    : false,
            option: ConstValues
                  .questionList[
                      snapshots.snapshot1.data == null ? 0 : snapshots.snapshot1.data!]
                  .listAnswer[index],
          ),
          separatorBuilder: (context, index) => SizedBox(
                height: 25,
              ),
          itemCount: ConstValues
                        .questionList[
                            snapshots.snapshot1.data == null ? 0 : snapshots.snapshot1.data!]
                        .listAnswer.length),
    );
  }
}
