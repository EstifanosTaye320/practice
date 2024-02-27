import 'package:flutter/material.dart';
import 'package:quiz_app/title_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
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
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
