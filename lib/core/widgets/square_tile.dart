import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final double? width, height;
  const SquareTile(
      {super.key,
      required this.imagePath,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: AppLightColorConstants.bgLight),
          borderRadius: BorderRadius.circular(16),
          color: AppLightColorConstants.greyteam3),
      child: Image.asset(imagePath, width: width, height: height,),
    );
  }
}
