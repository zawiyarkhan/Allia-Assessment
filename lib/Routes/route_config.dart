import 'package:allure_health/Routes/route_constants.dart';
import 'package:allure_health/Views/Pages/all_done.dart';
import 'package:allure_health/Views/Pages/likert_scale.dart';
import 'package:allure_health/Views/Pages/openingPage.dart';
import 'package:allure_health/Views/Pages/single_choice_question.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.openingRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OpeningPage(),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.singleChoiceRouteName,
          path: '/singleChoice',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SingleChoiceQuestion());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.singleChoiceRouteName,
          path: '/likert',
          pageBuilder: (context, state) {
            return const MaterialPage(child: LikertScale());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.allDoneRouteName,
          path: '/alldone',
          pageBuilder: (context, state) {
            return const MaterialPage(child: AllDonePage());
          },
        )
      ],
    );
    return router;
  }
}
