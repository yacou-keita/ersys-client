import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  late final String _title;
  late final Color _color;
  late final double _fontSize;
  TitleWidget(
      {super.key,
      required final String title,
      Color color = AppPallete.primary,
      double fontSize = 17}) {
    _color = color;
    _fontSize = fontSize;
    _title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
        style: TextStyle(
            color: _color, fontWeight: FontWeight.bold, fontSize: _fontSize),
        textAlign: TextAlign.center,
        _title);
  }
}
