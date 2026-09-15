import 'package:fist_project/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What's App",
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}