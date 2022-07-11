import 'package:flutter/material.dart';
import 'app_settings/app_themes.dart';
import 'presentation/pages/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Главная',
      theme: ThemeData(
        appBarTheme: AppThemes.appBarTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
