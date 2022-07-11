import 'package:boost_grade/presentation/pages/codelab_screen/codelab_screen.dart';
import 'package:flutter/material.dart';

class CodelabRoute extends MaterialPageRoute<void> {
  CodelabRoute()
      : super(
          builder: (context) {
            return const CodelabScreen();
          },
        );
}