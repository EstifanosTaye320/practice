import 'package:flutter/material.dart';
import 'package:quiz_app/data/style_aid.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/resources/results.dart';
import 'package:quiz_app/resources/title_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answers,
    required this.onActivate,
  });

  final void Function() onActivate;
  final List<String> answers;

  List<Map<String, Object>> get summaryData {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers.length; i++) {
      summary.add({
        'question': questions[i].text,
        'question-number': i,
        'correct-answer': questions[i].answers[0],
        'user-answer': answers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();
    final int totalQuestions = questions.length;
    final int correctlyAnswered = summaryData
        .where((data) => data['correct-answer'] == data['user-answer'])
        .length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleText(
          text:
              'You have answered $correctlyAnswered out of $totalQuestions Questions',
        ),
        const SizedBox(height: 20),
        Results(summary: summaryData),
        const SizedBox(height: 20),
        TextButton.icon(
          onPressed: onActivate,
          style: TextButton.styleFrom(
            foregroundColor: styleAid.textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          icon: const Icon(Icons.refresh),
          label: const Text('Refresh'),
        ),
      ],
    );
  }
}
