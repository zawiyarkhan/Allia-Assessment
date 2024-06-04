import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllDonePage extends StatelessWidget {
  const AllDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 45.0,
              vertical: 17,
            ),
            child: Image.asset("assets/allDone.png"),
          ),
          Text(
            "Self Report Completed",
            style: GoogleFonts.sourceSerif4(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 17),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff2E959E), // Text color
                  elevation: 3, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(1.0), // Button border radius
                  ),
                  padding: EdgeInsets.all(16.0), // Button padding
                ),
                child: Text(
                  "Go To Home",
                  style: GoogleFonts.sourceSans3(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
