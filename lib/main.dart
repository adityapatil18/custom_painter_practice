import 'package:custom_audio_widget/home_page.dart';
import 'package:custom_audio_widget/tab_bar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CustomPainterPractice());
}

class CustomPainterPractice extends StatelessWidget {
  const CustomPainterPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: HomePage(),
    );
  }
}
