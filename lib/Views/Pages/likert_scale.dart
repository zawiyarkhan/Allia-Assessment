import 'package:allure_health/Views/Widgets/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikertScale extends StatefulWidget {
  const LikertScale({super.key});

  @override
  State<LikertScale> createState() => _LikertScaleState();
}

class _LikertScaleState extends State<LikertScale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "You're feeling",
              style: GoogleFonts.sourceSerif4(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            "Excited",
            style: GoogleFonts.sourceSerif4(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: const Color(0xffAC8E63)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
            child: Text(
              "Select the number that best represents your Excitement level.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSans3(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          const CustomSlider(),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              print("hello");
            },
            child: Image.asset("assets/arrowIcon.png"),
          )
        ],
      ),
    );
  }
}
