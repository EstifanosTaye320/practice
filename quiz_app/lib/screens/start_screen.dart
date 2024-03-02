import 'package:flutter/material.dart';
import 'package:quiz_app/data/style_aid.dart';
import 'package:quiz_app/resources/title_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onActivate});

  final void Function() onActivate;

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(122, 255, 255, 255),
          width: 300,
        ),
        const SizedBox(height: 50),
        const TitleText(text: "Learn Flutter and Dart the fun way!"),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: onActivate,
          style: OutlinedButton.styleFrom(
            foregroundColor: styleAid.textColor,
            shape: styleAid.buttonShap,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
