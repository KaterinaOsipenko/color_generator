import 'dart:math';

import 'package:flutter/material.dart';

/// Class for color generating
class ColorGenerator {
  /// max number for generating Random values
  int maxValue = 256;

  /// static opacity for colors
  double opacity = 1;

  /// method for generation color
  Color randomize() {
    final _red = Random().nextInt(maxValue);
    final _blue = Random().nextInt(maxValue);
    final _green = Random().nextInt(maxValue);

    return Color.fromRGBO(_red, _green, _blue, opacity);
  }
}
