import 'dart:ui';
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
            child: Text(
              "Choose Your Favorite\nSnack",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            left: -5,
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
          Positioned(
            top: 260,
            left: 30,
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(-0.400),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(
                    width: 395,
                    height: 235,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color(0x03FFFFFF),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0x26FFFFFF)),
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(0.2),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Text(
                              "Angi's Yummy Burger",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 28,
                            child: Text(
                              "Delish vegan burger\nthat tastes like heaven",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 5,
                            child: Text(
                              "₳ 13.99",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 25,
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/star.png'),
                                SizedBox(width: 5),
                                Text(
                                  "4.8",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 310,
            right: 0,
            child: Image.asset(
              'assets/images/graphics/burger.png',
              width: 225,
              height: 225,
            ),
          ),
          Positioned(
            left: 60,
            top: 420,
            child: Container(
              padding: EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x80000000), Color(0x80FFFFFF)],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 115,
                height: 50,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Color(0xFFBB8DE1), Color(0xFF908CF5)],
                    radius: 2
                  ),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9375B6),
                      blurRadius: 23,
                      offset: Offset(3, -3),
                    ),
                    BoxShadow(
                      blurStyle: BlurStyle.solid,
                      color: Color(0xFFBB8DE1),
                      blurRadius: 10,
                      offset: Offset(-1, 0),
                    ),
                    BoxShadow(
                      color: Color(0x80EA71C5),
                      blurRadius: 30,
                      spreadRadius: 2.5,
                      offset: Offset(2.4, 8),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  'Add to Order',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
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
