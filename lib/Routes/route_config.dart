import 'package:allure_health/Routes/route_constants.dart';
import 'package:allure_health/Views/Pages/all_done.dart';
import 'package:allure_health/Views/Pages/likert_scale.dart';
import 'package:allure_health/Views/Pages/openingPage.dart';
import 'package:allure_health/Views/Pages/single_choice_question.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: 'openingPage',
        path: '/',
        builder: (context, state) {
          return const OpeningPage();
        },
      ),
      GoRoute(
        name: "singleChoice",
        path: '/singleChoice',
        builder: (context, state) {
          return const SingleChoiceQuestion();
        },
      ),
      GoRoute(
        name: "likert",
        path: '/likert',
        builder: (context, state) {
          print("Navigating to Likert Scale");
          return const LikertScale();
        },
      ),
      GoRoute(
        name: "allDone",
        path: '/alldone',
        builder: (context, state) {
          return const AllDonePage();
        },
      ),
    ],
  );

  static GoRouter get router => _router;
}
