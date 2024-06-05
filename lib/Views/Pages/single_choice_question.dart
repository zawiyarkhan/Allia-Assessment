import 'package:allure_health/Views/Pages/likert_scale.dart';
import 'package:allure_health/Views/Widgets/emoji_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleChoiceQuestion extends StatefulWidget {
  const SingleChoiceQuestion({super.key});

  @override
  State<SingleChoiceQuestion> createState() => _SingleChoiceQuestionState();
}

class _SingleChoiceQuestionState extends State<SingleChoiceQuestion> {
  List<EmojiCard> Cards = [
    EmojiCard(
      emoji: '😄',
      feeling: 'Happy',
    ),
    EmojiCard(
      emoji: '😄',
      feeling: 'Angry',
    ),
    EmojiCard(
      emoji: '😄',
      feeling: 'Frustrated',
    ),
    EmojiCard(
      emoji: '😄',
      feeling: 'Excited',
    ),
    EmojiCard(
      emoji: '😄',
      feeling: 'Sad',
    ),
    EmojiCard(
      emoji: '😄',
      feeling: 'Peaceful',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "How are you feeling?",
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSerif4(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Select the number that best represents your excitement levels",
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSans3(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: CarouselSlider(
                items: Cards,
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 3.0,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  // aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LikertScale()),
                );
              },
              child: Image.asset("assets/arrowIcon.png"),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
