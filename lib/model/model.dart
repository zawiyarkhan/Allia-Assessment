import 'dart:convert';

class Question {
  final int id;
  final String question;
  final String answerType;
  final List<Option> options;

  Question({
    required this.id,
    required this.question,
    required this.answerType,
    required this.options,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    var optionsList = json['options'] as List;
    List<Option> options = optionsList.map((i) => Option.fromJson(i)).toList();

    return Question(
      id: json['id'],
      question: json['question'],
      answerType: json['answerType'],
      options: options,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'answerType': answerType,
      'options': options.map((e) => e.toJson()).toList(),
    };
  }
}

class Option {
  final int id;
  final String option;
  final bool isFreeForm;
  final int questionId;

  Option({
    required this.id,
    required this.option,
    required this.isFreeForm,
    required this.questionId,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      id: json['id'],
      option: json['option'],
      isFreeForm: json['isFreeForm'],
      questionId: json['questionId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'option': option,
      'isFreeForm': isFreeForm,
      'questionId': questionId,
    };
  }
}
