import 'package:color_generator/widgets/home_text_widget.dart';
import 'package:flutter/cupertino.dart';

/// Class for presenting Ios Home
class IOSHomeBody extends StatelessWidget {
  /// Color for background
  final Color backColor;

  /// Font color
  final Color fontColor;

  /// Text for showing
  final String txt;

  /// constructor
  const IOSHomeBody({
    super.key,
    required this.backColor,
    required this.fontColor,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: backColor,
      child: HomeTextWidget(text: txt, fontColor: fontColor),
    );
  }
}
