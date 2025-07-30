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
                  child: Builder(builder: (context){
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
                  }
                  )
                ),
                Positioned(
                  left: 150,
bottom: -25,
                  child:
                  ClipRRect(
  borderRadius: BorderRadius.circular(38),
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    child: Container(
      width: 325,
      height: 220,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0x03FFFFFF),
        borderRadius: BorderRadius.circular(38),
        border: Border.all(
        color: Colors.transparent, //Color(0x4DFFFFFF)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Feeling Snackish Today?", style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
          ),
          SizedBox(height: 3),
          Text("Explore Angi's most popular snack selection\nand get instantly happy",  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0x80FFFFFF),
                    ),
                    textAlign: TextAlign.center,
                    ),
        ],
      ),
                )
  )           
                  )
                )
                 
              ],
            ),
          ),
        ],
      ),
    );
  }
}