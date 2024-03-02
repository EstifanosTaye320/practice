import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/data/style_aid.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/resources/alternative_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onAnswer});

  final void Function(String ans) onAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionsIndex = 0;

  void switchQuestion(String answer) {
    setState(() {
      widget.onAnswer(answer);
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();
    QuestionModel currentQuestion = questions[currentQuestionsIndex];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          currentQuestion.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: styleAid.textColor,
            fontSize: styleAid.questionSize,
          ),
        ),
        const SizedBox(height: 20),
        ...currentQuestion.shuffledAnswers.map((alternative) {
          return AlternativeButton(
            alternative: alternative,
            onSelectAlternative: () {
              switchQuestion(alternative);
            },
          );
        })
      ],
    );
  }
}
