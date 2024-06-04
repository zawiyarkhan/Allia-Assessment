import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojiCard extends StatelessWidget {
  String emoji;
  String feeling;
  EmojiCard({super.key, required this.emoji, required this.feeling});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.0,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: GoogleFonts.sourceSerif4(
                fontWeight: FontWeight.w600,
                fontSize: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                feeling,
                style: GoogleFonts.sourceSerif4(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffAC8E63),
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
