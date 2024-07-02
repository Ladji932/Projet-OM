import 'package:flutter/material.dart';
import 'package:test_2/content.dart';
import 'package:test_2/styles.dart';

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
      theme: myTheme,
      home: const ContentScreen(),
    );
  }
}
