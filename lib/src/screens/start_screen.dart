import 'package:flutter/material.dart';

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
                  padding: const EdgeInsets.only(bottom: 80, left: 30), 
                  child: Text(
                    "CH SNACK",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.transparent,
                      
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