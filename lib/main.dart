import 'package:flutter/material.dart';
import './screen/content_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OM App",
      home: const ContentScreen(),
    );
  }
}
