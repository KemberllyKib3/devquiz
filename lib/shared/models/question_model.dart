import 'dart:convert';

import 'package:devquiz/shared/models/answer_model.dart';

class QuestionModel {
  final String questionLabel;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.questionLabel,
    required this.answers,
  }) : assert(answers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'questionLabel': questionLabel,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      questionLabel: map['questionLabel'],
      answers: List<AnswerModel>.from(
          map['answers']?.map((x) => AnswerModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
