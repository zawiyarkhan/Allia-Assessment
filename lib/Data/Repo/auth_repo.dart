import 'dart:convert';

import 'package:allure_health/Data/Data%20Provider/auth_data_provider.dart';

class AuthRepo {
  final AuthDataProvider authDataProvider;

  AuthRepo(this.authDataProvider);

  Future<String> getAccessToken() async {
    try {
      // print("hw");
      final res = await authDataProvider.getTokens();
      // print("res: $res");
      final data = jsonDecode(res);
      // print("data $data");
      final accessToken = data["body"]["accessToken"];
      // print("accessTpoken: $accessToken");
      return accessToken;
    } catch (e) {
      rethrow;
    }
  }
}
