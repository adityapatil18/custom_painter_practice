import 'package:custom_audio_widget/arc_paint_page.dart';
import 'package:custom_audio_widget/circle_paint_page.dart';
import 'package:custom_audio_widget/image_paint_page.dart';
import 'package:custom_audio_widget/line_paint_page.dart';
import 'package:custom_audio_widget/main.dart';
import 'package:custom_audio_widget/rectangle_paint_page.dart';
import 'package:custom_audio_widget/rounded_rectangle_paint_page.dart';
import 'package:custom_audio_widget/tab_bar_widget.dart';
import 'package:custom_audio_widget/traingle_paint_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      tabs: [
        Tab(icon: Icon(Icons.stacked_line_chart), text: 'Line'),
        Tab(icon: Icon(Icons.crop_landscape), text: 'Rectangle'),
        Tab(icon: Icon(Icons.crop_square), text: 'Rounded Rectangle'),
        Tab(icon: Icon(Icons.circle), text: 'Circle'),
        Tab(icon: Icon(Icons.architecture), text: 'Arc'),
        Tab(icon: Icon(Icons.warning), text: 'Triangle'),
        Tab(icon: Icon(Icons.image), text: 'Image'),
      ],
      children: [
        LinePaintPage(),
        RectanglePaintPage(),
        RoundedRectanglePaintPage(),
        CirclePaintPage(),
        ArcPaintPage(),
        TrianglePaintPage(),
        ImagePaintPage(),
      ],
    );
  }
}
