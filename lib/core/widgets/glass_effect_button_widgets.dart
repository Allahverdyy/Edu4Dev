import 'dart:ui';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:flutter/material.dart';

class GlassEffectButton extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  final void Function(bool)? onhover;
  final double? width;
  final double? height;
  final double? fontsize;
  final String? fontfamily;
  final Color? color;
  const GlassEffectButton({
    super.key,
    required this.text,
    this.ontap,
    this.onhover,
    this.width,
    this.height,
    this.fontsize = 16,
    this.fontfamily = 'Georgia',
    this.color 
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            InkWell(
              onTap: ontap,
              onHover: onhover,
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppLightColorConstants.whiteteam3),
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      AppLightColorConstants.whiteteam2,
                      AppLightColorConstants.whiteteam2
                    ])),
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: fontfamily,
                      fontSize: fontsize,
                      fontWeight: FontWeight.bold,
                      color: color
                      
                      ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
