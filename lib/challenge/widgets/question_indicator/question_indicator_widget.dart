import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/linear_progress_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão 4",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de 10",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(height: 16),
            LinearProgressWidget(value: 0.4),
          ],
        ),
      ),
    );
  }
}
