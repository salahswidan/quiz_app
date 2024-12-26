import 'package:quiz_app_new/core/const_values.dart';

class AnswerScreenController {
  late Map studentAnswers;
  List<bool> answers = [];
  void getStudentAnswers(Map studentAnswers) {
    this.studentAnswers = studentAnswers;
    compareAnswers();
  }

  void compareAnswers() {
    answers.clear();
    for (int i = 0; i < ConstValues.questionList.length; i++) {
      bool an = studentAnswers["listCorrectAnswers"][i] ==
          ConstValues.questionList[i].correctAnswer;
      answers.add(an);
    }
    print(answers);
  }

  void printList() {
    print(studentAnswers);
  }
}
