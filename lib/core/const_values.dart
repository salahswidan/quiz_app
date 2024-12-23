import 'package:quiz_app_new/models/on_boarding_screen/quiz_screen/question_model.dart';

import '../models/on_boarding_screen/on_boarding_screen_model.dart';

class ConstValues {
  static List<OnBoardingScreenModel> onBoardingListConst = [
    OnBoardingScreenModel("assets/images/onboardingImage(1).svg",
        "Synonyms for quiz", "Synonyms for quiz"),
    OnBoardingScreenModel(
        "assets/images/onboardingImage(2).svg",
        "Antonyms for quiz",
        "Sunt in cuipa qui officia deserunt mollit anim id est laborum."),
    OnBoardingScreenModel("assets/images/onboardingImage(3).svg", "Cool quiz",
        "Culpa qui officia deserunt mollit anim id est laborum."),
  ];
  static List<QuestionModel> questionList = [
    QuestionModel(
        question:
            "In what year did the Egypt host the Fifa World Cup for the first time?",
        listAnswer: ["1930", "1934", "1938", "1942"],
        correctAnswer: "1930"),
    QuestionModel(
        question: "what is the capital of France?",
        listAnswer: ["Paris", "London", "Berlin", "Madrid"],
        correctAnswer: "Paris"),
    QuestionModel(
        question: "What is the capital of Germany?",
        listAnswer: ["Paris", "London", "Berlin", "Madrid"],
        correctAnswer: "Berlin"),
    QuestionModel(
        question: "What is the capital of Spain?",
        listAnswer: ["Paris", "London", "Berlin", "Madrid"],
        correctAnswer: "Madrid"),
    QuestionModel(
        question: "What is the capital of England?",
        listAnswer: ["Paris", "London", "Berlin", "Madrid"],
        correctAnswer: "London"),
  ];
}
