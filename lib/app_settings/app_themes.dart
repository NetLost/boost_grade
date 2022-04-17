import 'package:boost_grade/app_settings/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      color: AppColors.appBarColor,
      iconTheme: IconThemeData(color: AppColors.iconColors),
    );
  }
}
