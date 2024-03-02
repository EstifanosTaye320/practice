import 'package:flutter/material.dart';
import 'package:quiz_app/data/style_aid.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.summary});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    final StyleAid styleAid = StyleAid();

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: (data['correct-answer'] == data['user-answer'])
                          ? [
                              styleAid.successColor,
                              styleAid.successColor,
                            ]
                          : [
                              styleAid.failColor,
                              styleAid.failColor,
                            ],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ((data['question-number'] as int) + 1).toString(),
                        style: TextStyle(
                          color: styleAid.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: TextStyle(color: styleAid.textColor),
                        ),
                        Text(
                          data['correct-answer'] as String,
                          style: TextStyle(color: styleAid.successColor),
                        ),
                        Text(
                          data['user-answer'] as String,
                          style: TextStyle(
                            color:
                                (data['correct-answer'] == data['user-answer'])
                                    ? styleAid.successColor
                                    : styleAid.failColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
