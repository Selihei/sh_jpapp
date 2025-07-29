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
bottom: 0,
                  child:
                  ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    child: Container(
      width: 325,
      height: 200,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0x03FFFFFF),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Color(0x4DFFFFFF),
        ),
      ),
      child: Column(
        children: [
          Text("Test", style:TextStyle(color: Colors.white),),
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