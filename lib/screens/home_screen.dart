import 'dart:io';

import 'package:color_generator/model/color_generator.dart';
import 'package:color_generator/widgets/android_home_body.dart';
import 'package:color_generator/widgets/ios_home_body.dart';
import 'package:flutter/material.dart';

/// home screen
class HomeScreen extends StatefulWidget {
  /// constructor for home screen
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final luminanceValue = 0.5;
  final _txt = "Hello there";
  final _generator = ColorGenerator();
  Color _backColor = ColorGenerator().randomize();
  Color _fontColor = Colors.black;

  void _changeColor() {
    setState(() {
      _backColor = _generator.randomize();
      _fontColor = _backColor.computeLuminance() > luminanceValue
          ? Colors.black
          : Colors.white;
    });
  }

  @override
  void initState() {
    _backColor = _generator.randomize();
    _fontColor = _backColor.computeLuminance() > luminanceValue
        ? Colors.black
        : Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Platform.isAndroid
          ? AndroidHomeBody(
              backColor: _backColor,
              fontColor: _fontColor,
              text: _txt,
            )
          : IOSHomeBody(
              backColor: _backColor,
              fontColor: _fontColor,
              txt: _txt,
            ),
    );
  }
}
