class Answer {
  int questionId;
  int selectedOptionId;
  String? freeformValue;

  Answer({
    required this.questionId,
    required this.selectedOptionId,
    this.freeformValue,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      questionId: json['questionId'],
      selectedOptionId: json['selectedOptionId'],
      freeformValue: json['freeformValue'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'questionId': questionId,
      'selectedOptionId': selectedOptionId,
      'freeformValue': freeformValue,
    };
  }
}

class AnswersModel {
  List<Answer> answers;

  AnswersModel({required this.answers});

  factory AnswersModel.fromJson(Map<String, dynamic> json) {
    var answersList = json['answers'] as List;
    List<Answer> answers = answersList.map((i) => Answer.fromJson(i)).toList();

    return AnswersModel(answers: answers);
  }

  Map<String, dynamic> toJson() {
    return {
      'answers': answers.map((answer) => answer.toJson()).toList(),
    };
  }
}
