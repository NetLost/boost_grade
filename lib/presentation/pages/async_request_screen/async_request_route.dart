import 'package:boost_grade/presentation/pages/async_request_screen/async_request_screen.dart';
import 'package:flutter/material.dart';

class AsyncRequestRoute extends MaterialPageRoute<void> {
  AsyncRequestRoute()
      : super(
          builder: (context) {
            return const AsyncRequestScreen();
          },
        );
}