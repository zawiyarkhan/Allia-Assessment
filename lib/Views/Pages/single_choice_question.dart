import 'package:allure_health/Views/Widgets/emoji_card.dart';
import 'package:flutter/material.dart';

class SingleChoiceQuestion extends StatefulWidget {
  const SingleChoiceQuestion({super.key});

  @override
  State<SingleChoiceQuestion> createState() => _SingleChoiceQuestionState();
}

class _SingleChoiceQuestionState extends State<SingleChoiceQuestion> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: EmojiCard())],
      ),
    );
  }
}
