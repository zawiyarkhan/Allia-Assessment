import 'dart:convert';

import 'package:allure_health/Data/Data%20Provider/question_data_provider.dart';
import 'package:allure_health/model/model.dart';

class QuestionRepo {
  final QuestionDataProvider questionDataProvider;
  QuestionRepo(this.questionDataProvider);

  Future<List<Question>> getData(String token) async {
    try {
      final data = await questionDataProvider.getAllData(token);
      final question_data = jsonDecode(data);

      print("question data $question_data");

      print("notjh");
      print(Question.fromJson(question_data[0]));

      final List<Question> questions = List<Question>.from(
          question_data.map((json) => Question.fromJson(json)));

      print("questions $questions");

      return questions;
    } catch (e) {
      rethrow;
    }
  }
}
