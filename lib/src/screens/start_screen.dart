import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/bg/bg_startscreen.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
      )
    );
  }
  }