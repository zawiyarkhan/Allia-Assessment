import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthDataProvider {
  Future<String> getTokens() async {
    try {
      final response = await http.post(
        Uri.parse("https://api-dev.allia.health/api/client/auth/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': 'dev@alliauk.com',
          'password': '12345678',
        }),
      );
      print(response.body);
      return response.body;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
