import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  int _diceFace = 1;

  void rollDice() {
    setState(() {
      _diceFace = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/dice-$_diceFace.png',
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextButton(
            onPressed: rollDice,
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.cyan[100]),
            ),
            child: const Text(
              "Roll Dice",
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 52, 51, 51),
              ),
            ),
          ),
        )
      ],
    );
  }
}
