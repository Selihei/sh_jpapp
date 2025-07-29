import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/bg_startscreen.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
      )
    );
  }
  }