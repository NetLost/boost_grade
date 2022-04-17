import 'package:boost_grade/presentation/pages/color_list_screen/color_list_screen.dart';
import 'package:flutter/material.dart';

class ColorListRoute extends MaterialPageRoute<void> {
  ColorListRoute()
      : super(
          builder: (context) {
            return const ColorListScreen();
          },
        );
}