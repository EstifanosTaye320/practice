import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String currentScreen = 'start-screen';
  List<String> answers = ['1', '2', '3', '4', '5', '6'];

  void questionAnswered(String ans) {
    answers.add(ans);
    if (answers.length == questions.length) {
      setState(() {
        currentScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      answers = [];
      currentScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentWidget;
    if (currentScreen == 'start-screen') {
      currentWidget = StartScreen(onActivate: switchScreen);
    } else if (currentScreen == 'question-screen') {
      currentWidget = QuestionsScreen(onAnswer: questionAnswered);
    } else {
      currentWidget = ResultScreen(
        onActivate: switchScreen,
        answers: answers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 118, 4, 218),
                Color.fromARGB(255, 124, 19, 252),
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(40),
              child: currentWidget,
            ),
          ),
        ),
      ),
    );
  }
}
