class QuestionModel {
   String? _question;
   List<dynamic>? _listAnswer;
   dynamic _correctAnswer;

  QuestionModel({
    required String question,
    required List<dynamic> listAnswer,
    required dynamic correctAnswer,
  }) {
    _question = question;
    _listAnswer = listAnswer;
    _correctAnswer = correctAnswer;
  }
  dynamic get correctAnswer => _correctAnswer;
  set correctAnswer(dynamic value) => _correctAnswer = value;

  List<dynamic> get listAnswer => _listAnswer!;
  set listAnswer(List<dynamic> value) => _listAnswer = value;

  String get question => _question!;  
  set question(String value) => _question = value;
      

}