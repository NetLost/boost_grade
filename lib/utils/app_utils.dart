import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppUtils {
  static Color getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}
