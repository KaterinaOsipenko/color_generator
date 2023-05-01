import 'package:color_generator/widgets/home_text_widget.dart';
import 'package:flutter/material.dart';

/// Home body for Android
class AndroidHomeBody extends StatelessWidget {
  /// Background color
  final Color backColor;

  /// Font color
  final Color fontColor;

  /// Text for content
  final String text;

  /// Constructor
  const AndroidHomeBody({
    super.key,
    required this.backColor,
    required this.fontColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: GestureDetector(
        child: HomeTextWidget(text: text, fontColor: fontColor),
      ),
    );
  }
}
