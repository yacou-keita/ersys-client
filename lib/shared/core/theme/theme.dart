import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppColors.grey]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: 2));

  static final darkThemeMode = ThemeData.dark()
      .copyWith(scaffoldBackgroundColor: AppColors.darkBackgroundcolor);

  static final lightThemeMode = ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: AppColors.grey),
          labelStyle: const TextStyle(color: AppColors.grey),
          enabledBorder: _border(),
          focusedBorder: _border(AppColors.primary)));
}
