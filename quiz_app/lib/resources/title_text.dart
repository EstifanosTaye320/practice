import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/style_aid.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();

    return Text(
      text,
      style: GoogleFonts.lato(
        color: styleAid.textColor,
        fontSize: styleAid.titleSize,
      ),
    );
  }
}
