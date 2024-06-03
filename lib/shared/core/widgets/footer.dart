import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppPallete.primary,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: const Center(
            child: Text(
          "METFPA © 2023. Tous droits réservés.",
          style: TextStyle(color: AppPallete.white),
        )));
  }
}
