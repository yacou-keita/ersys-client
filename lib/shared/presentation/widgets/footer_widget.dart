import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.primary,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: const Center(
            child: Text(
          "METFPA © 2023. Tous droits réservés.",
          style: TextStyle(color: AppColors.white),
        )));
  }
}
