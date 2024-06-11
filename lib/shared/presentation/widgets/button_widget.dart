import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  late final String _title;
  late final VoidCallback _onPressed;
  ButtonWidget(
      {super.key,
      required final String title,
      required final VoidCallback onPressed}) {
    _title = title;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      child: Text(
        _title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
