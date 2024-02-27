import 'package:flutter/material.dart';
import 'package:quiz_app/data/style_aid.dart';

class AlternativeButton extends StatelessWidget {
  const AlternativeButton(
      {super.key,
      required this.alternative,
      required this.onSelectAlternative});

  final String alternative;
  final void Function() onSelectAlternative;

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onSelectAlternative,
        style: ElevatedButton.styleFrom(
          foregroundColor: styleAid.textColor,
          backgroundColor: styleAid.altBGColor,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
        ),
        child: Text(alternative),
      ),
    );
  }
}
