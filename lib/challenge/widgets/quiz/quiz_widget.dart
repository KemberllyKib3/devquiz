import 'package:devquiz/challenge/widgets/quiz/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String questionLabel;
  const QuizWidget({Key? key, required this.questionLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            questionLabel,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(
            answerLabel: "Este é um app de teste",
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(answerLabel: "Este é um app de teste"),
          AnswerWidget(
            answerLabel: "Este é um app de teste",
            isRight: false,
            isSelected: true,
          ),
          AnswerWidget(answerLabel: "Este é um app de teste"),
        ],
      ),
    );
  }
}
