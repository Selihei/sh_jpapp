import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sh_jpapp/src/screens/home_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg/bg_startscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: -235,
            top: 5,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/graphics/cupcake_chick.png',
                  width: 750,
                  height: 750,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 150, right: 70),
                  child: Builder(
                    builder: (context) {
                      Paint textPaint = Paint();
                      textPaint.style = PaintingStyle.stroke;
                      textPaint.strokeWidth = 2;
                      textPaint.color = Color(0x80FFFFFF);

                      return Text(
                        "CK SNACK",
                        style: GoogleFonts.roboto(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          foreground: textPaint,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0, right: 130),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 325,
                        height: 200,
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Color(0x03FFFFFF),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Color(0x26FFFFFF)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Feeling Snackish Today?",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Explore Angi's most popular snack selection\nand get instantly happy",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0x80FFFFFF),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 190,
                                height: 45,
                                padding: EdgeInsets.all(2.5), // "Border"-Dicke
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFE970C4),
                                      Color(0xFFF69EA3),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFE970C4),
                                        Color(0xFFF69EA3),
                                      ],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurStyle: BlurStyle.inner,
                                        color: Color(0xFFFFACE4),
                                        blurRadius: 1,
                                        offset: Offset(3, -3),
                                      ),
                                      BoxShadow(
                                        blurStyle: BlurStyle.inner,
                                        color: Color(0xFF9375B6),
                                        blurRadius: 5,
                                        offset: Offset(-1, 2),
                                      ),
                                      BoxShadow(
                                        //unterer Shadow
                                        color: Color(0x80EA71C5),
                                        blurRadius: 30,
                                        spreadRadius: 5,
                                        offset: Offset(2.4, 8),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Order Now',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
