import 'package:flutter/material.dart';

@immutable
final class AppLightColorConstants {
  const AppLightColorConstants._();

  //base color
  static const Color errorColor = Color(0xFFF44336);
  static const Color successColor = Color(0xFF43A048);
  static const Color warningColor = Color(0xffFB8A00);

  //button color
  static const Color buttonPrimaryColor = Color(0xffD149B8);
  static const Color buttonDisabledColor = Color(0xFFB8B8B8);
  static const Color buttonErrorColor = Color(0xFFF44336);

  //background color
  static const Color bgPrimaryColor = Color(0xfff5f5f5);
  static const Color bgLight = Color(0xfff7f7f7);
  static const Color bgInverse = Color(0xFF121212);
  static const Color bgError = Color(0xfff44336);
  static const Color bgSuccess = Color(0xff43A048);
  static const Color bgWarning = Color(0xFFFB8A00);

  //text and icon color
  static const Color contentTitle = Color(0xff544E9C);
  static const Color contentPrimary = Color(0xFF2A2A2A);
  static const Color contentSecondary = Color(0xFF414141);
  static const Color contentTeritaryColor = Color(0xFF5A5A5A);
  static const Color contentDisabled = Color(0xFFB8B8B8);
  static const Color contentError = Color(0xFFB71B1C);
  static const Color contentSuccess = Color(0xFF1B5E21);
  static const Color contentWarning = Color(0xFF983301);
  static const Color contentOnColor = Colors.white;
  static const Color contentOnInverse = Color(0xFF121212);

  //border color

  static const Color border = Color(0xFFD0D0D0);
  static const Color borderAccent = Color(0xFF576CFF);
  static const Color borderError = Color(0xFFF44336);
  static const Color borderSuccess = Color(0xFF66BB6B);
  static const Color borderWarning = Color(0xFFFFA525);

  //divider color
  static const Color divider = Color(0xFFE8E8E8);
  static const Color dividerAccent = Color(0xFFC9CCFF);
  static const Color dividerError = Color(0xFFFFCDD2);
  static const Color dividerSuccess = Color(0xFFC8E6C9);
  static const Color dividerWarning = Color(0xFFFFF3E0);

  // custom dividerColor
  static const Color dividerColor = Color(0xFFD0D0D0);

  //TextInputBorder
  static const Color textInputBorderColor = Color(0xFFb8b8b8);

  static const Color onBoardingColor = Color.fromARGB(255, 133, 196, 228);
  static const Color onBoardingColorOne = Color.fromARGB(255, 133, 196, 228);

  static Color whiteteam1 = Colors.white.withOpacity(0.5);
  static Color whiteteam2 = Colors.white.withOpacity(0.15);
  static Color whiteteam3 = Colors.white.withOpacity(0.13);

  static Color? greyteam1 = Colors.grey[700];
  static Color? greyteam2 = Colors.grey[300];
  static Color? greyteam3 = Colors.grey[200];
  static Color? greyteam4 = Colors.grey[400];
  static Color? greyteam5 = Colors.grey[600];
}
