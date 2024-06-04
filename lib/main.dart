import 'package:allure_health/Views/Pages/all_done.dart';
import 'package:allure_health/Views/Pages/likert_scale.dart';
import 'package:allure_health/Views/Pages/openingPage.dart';
import 'package:allure_health/Views/Pages/single_choice_question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SingleChoiceQuestion(),
    );
  }
}
