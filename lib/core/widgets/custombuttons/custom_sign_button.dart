import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  final String? text;
  final TextStyle? style;
  final EdgeInsets? padding;
  const CustomButton({
    super.key,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.child,
    this.text,
    this.style,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: context.horizontalPaddingLow,
          decoration: BoxDecoration(
              color: color, borderRadius: context.bordercirnormal),
          width: width,
          height: height,
          child: Center(
            child: child ??
                Text(
                  text ?? '',
                  style: style ??
                      const TextStyle(color: Colors.white, fontSize: 25),
                ),
          )),
    );
  }
}
