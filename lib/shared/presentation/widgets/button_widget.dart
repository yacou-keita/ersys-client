import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(395, 55),
        backgroundColor: AppColors.primary,
      ),
      child: const Text(
        "Identifiez-vous",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    );
  }
}
