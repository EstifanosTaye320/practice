import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          child: const StartScreen(),
        ),
      ),
    );
  }
}
