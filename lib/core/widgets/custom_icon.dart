import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  final double? width, height;
  const CustomIcon(
      {super.key, required this.imagePath, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}
