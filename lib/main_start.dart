import 'package:flutter/material.dart';
import 'package:sh_jpapp/src/screens/start_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: StartScreen(),
  
    );
  }
}