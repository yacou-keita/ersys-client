import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.darkBackgroundcolor
  );
  static final lightThemeMode = ThemeData.light();
}
