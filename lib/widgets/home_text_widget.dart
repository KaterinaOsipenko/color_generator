import 'package:flutter/material.dart';

/// class for representing text
class HomeTextWidget extends StatelessWidget {
  /// text for wigget
  final String text;

  /// Font Color
  final Color fontColor;

  /// constructor
  const HomeTextWidget({
    super.key,
    required this.text,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.15;

    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
