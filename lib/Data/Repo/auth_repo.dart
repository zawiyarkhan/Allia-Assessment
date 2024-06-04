import 'dart:convert';

import 'package:allure_health/Data/Data%20Provider/auth_data_provider.dart';

class AuthRepo {
  final AuthDataProvider authDataProvider;

  AuthRepo(this.authDataProvider);

  Future<String> getAccessToken() async {
    try {
      final res = await authDataProvider.getTokens();

      final data = jsonDecode(res);

      final accessToken = data["accessToken"];

      return accessToken;
    } catch (e) {
      rethrow;
    }
  }
}
