import 'package:ersys_client/app_route.dart';
import 'package:ersys_client/shared/core/theme/theme.dart';
import 'package:ersys_client/landing_module/presentation/pages/landing_page.dart';
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
      home: const LandingPage(),
      routes: appRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
