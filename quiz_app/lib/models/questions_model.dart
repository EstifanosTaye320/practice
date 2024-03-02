class QuestionModel {
  QuestionModel({required this.text, required this.answers});

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    List<String> answersClone = List.of(answers);
    answersClone.shuffle();
    return answersClone;
  }
}
