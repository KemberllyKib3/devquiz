import 'dart:convert';

class AnswerModel {
  final String answerlabel;
  final bool isRight;

  AnswerModel({
    required this.answerlabel,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'answerlabel': answerlabel,
      'isRight': isRight,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      answerlabel: map['answerlabel'],
      isRight: map['isRight']?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) => AnswerModel.fromMap(json.decode(source));
}
