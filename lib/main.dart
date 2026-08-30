import 'package:flutter/material.dart';
import 'package:sham_project1/pages/homepage.dart';

void main() {
  runApp(const RihlaApp());
}

class RihlaApp extends StatelessWidget {
  const RihlaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rihla',
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: HomePage(),
    );
  }
}