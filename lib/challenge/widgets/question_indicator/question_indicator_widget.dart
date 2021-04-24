import 'package:flutter/material.dart';

import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/linear_progress_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentQuestion;
  final int length;
  const QuestionIndicatorWidget({
    Key? key,
    required this.currentQuestion,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentQuestion",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de $length",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(height: 16),
            LinearProgressWidget(value: currentQuestion / length),
          ],
        ),
      ),
    );
  }
}
