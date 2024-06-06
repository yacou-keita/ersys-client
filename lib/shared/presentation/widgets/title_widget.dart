import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  late final String _title;
  late final Color _color;
  late final double _fontSize;
  late final TextAlign _align;
  TitleWidget(
      {super.key,
      required final String title,
      Color color = AppColors.primary,
      double fontSize = 17,
      TextAlign align = TextAlign.center}) {
    _color = color;
    _fontSize = fontSize;
    _title = title;
    _align = align;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
        style: TextStyle(
            color: _color, fontWeight: FontWeight.bold, fontSize: _fontSize),
        textAlign: _align,
        _title);
  }
}
