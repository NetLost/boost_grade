import 'package:boost_grade/presentation/pages/four_squares_screen/four_squares_screen.dart';
import 'package:flutter/material.dart';

class FourSquaresRoute extends MaterialPageRoute<void> {
  FourSquaresRoute()
      : super(
          builder: (context) {
            return const FourSquaresScreen();
          },
        );
}
