import 'package:flutter/material.dart';

class ImagePlacehoderWidget extends StatelessWidget {
  final String imagePath;
  const ImagePlacehoderWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}