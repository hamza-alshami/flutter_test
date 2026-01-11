import 'package:flutter/material.dart';
import 'package:language_app_basic/screens/home_page.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
