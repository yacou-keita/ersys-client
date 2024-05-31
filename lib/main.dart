import 'package:ersys_client/core/theme/theme.dart';
import 'package:ersys_client/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ErsysClientApp());
}

class ErsysClientApp extends StatelessWidget {
  const ErsysClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeMode,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
