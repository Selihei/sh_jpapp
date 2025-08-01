import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sh_jpapp/src/features/widgets.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg/bg_mainscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80,
            left: 25,
            child: Text("Choose Your Favorite\nSnack", style: GoogleFonts.inter(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 25
                ),)),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 170,
                  child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            PillWidget(text: "", isSelected: false, variant: 1),
            const SizedBox(width: 10),
            PillWidget(text: "Salty", isSelected: true, variant: 2),
            const SizedBox(width: 10),
            PillWidget(text: "Sweet", isSelected: false, variant: 2),
            const SizedBox(width: 10),
            PillWidget(text: "Drinks", isSelected: false, variant: 2),
          ],
        ),
      ),
    ),
  ],
      )
);
  }
}