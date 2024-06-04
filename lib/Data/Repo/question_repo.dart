import 'dart:convert';

import 'package:allure_health/Data/Data%20Provider/question_data_provider.dart';
import 'package:allure_health/model/model.dart';

class QuestionRepo {
  final QuestionDataProvider questionDataProvider;
  QuestionRepo(this.questionDataProvider);

  Future<List<Question>> getData() async {
    try {
      final data = await questionDataProvider.getAllData();
      final question_data = jsonDecode(data);

      final List<Question> questions = List<Question>.from(
          question_data.map((json) => Question.fromJson(json)));

      return questions;
    } catch (e) {
      rethrow;
    }
  }
}
