import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BottomRightAndTopLeftIcon extends StatelessWidget {
  const BottomRightAndTopLeftIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            bottom: MediaQuery.of(context).size.height / 1.2,
            right: MediaQuery.of(context).size.width / 1.356,
            child: Image.asset(
              Assets.icons.png.iconsTopLeft.path,
              width: MediaQuery.of(context).size.width / 2.5,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.162,
            left: MediaQuery.of(context).size.width / 1.3753,
            child: Image.asset(
              Assets.icons.png.iconsBottomRight.path,
              width: 150,
            )),
      ],
    );
  }
}
