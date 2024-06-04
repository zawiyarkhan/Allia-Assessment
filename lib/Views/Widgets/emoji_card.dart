import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojiCard extends StatelessWidget {
  const EmojiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "😀",
            style: GoogleFonts.sourceSerif4(
              fontWeight: FontWeight.w600,
              fontSize: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 81.0, vertical: 22),
            child: Text(
              "Happy",
              style: GoogleFonts.sourceSerif4(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffAC8E63),
                  fontSize: 32),
            ),
          )
        ],
      ),
    );
  }
}
