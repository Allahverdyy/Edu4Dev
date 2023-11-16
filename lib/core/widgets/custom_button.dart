import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? ontap;
  const CustomButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: AppLightColorConstants.bgInverse,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            L10n.of(context)!.signin,
            style: const TextStyle(
                color: AppLightColorConstants.divider,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
