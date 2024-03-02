import 'package:flutter/material.dart';

class StyleAid {
  Color textColor = Colors.white;
  Color altBGColor = const Color.fromARGB(255, 10, 1, 79);
  Color successColor = const Color.fromARGB(255, 112, 160, 209);
  Color failColor = const Color.fromARGB(255, 250, 55, 55);

  double titleSize = 24;
  double questionSize = 18;

  RoundedRectangleBorder buttonShap = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40),
  );
}
