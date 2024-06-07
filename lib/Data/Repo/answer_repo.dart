import 'package:allure_health/Data/Data%20Provider/answer_data_provider.dart';
import 'package:allure_health/model/answer_model.dart';

class AnswerRepo {
  final AnswerDataProvider answerDataProvider;

  AnswerRepo(this.answerDataProvider);

  Future<bool> postAnswer(AnswersModel answersModel) async {
    try {
      final data = await answerDataProvider.postAnswer(answersModel);
      if (data) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
