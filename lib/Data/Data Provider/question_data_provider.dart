import 'dart:convert';

import 'package:allure_health/Data/Repo/auth_repo.dart';
import 'package:http/http.dart' as http;

class QuestionDataProvider {
  Future<String> getAllData(String token) async {
    print("tokeen $token");
    try {
      final response = await http.get(
        Uri.parse(
            "https://api-dev.allia.health/api/client/self-report/question"),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        print("res ${response.body}");
        return response.body;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
