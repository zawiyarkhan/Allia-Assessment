import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/answer_model.dart';

class AnswerDataProvider {
  final String apiUrl =
      "https://api-dev.allia.health/api/client/self-report/answer";
  Future<bool> postAnswer(AnswersModel answersModel) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(answersModel.toJson()),
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        print("Failed to post answers. Status code: ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("Error: ${e.toString()}");
      rethrow;
    }
  }
}
