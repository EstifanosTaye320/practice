import 'package:flutter/material.dart';
// import 'package:quiz_app/screens/questions_screen.dart';
// import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
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
          child: const ResultScreen(),
        ),
      ),
    );
  }
}
