import 'package:edu4dev/core/constant/light_theme_color_constant.dart';
import 'package:flutter/material.dart';

final class AppThemeLight {
  AppThemeLight._();
  static ThemeData getTheme() => ThemeData.light().copyWith(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppLightColorConstants.bgLight,
        primaryColor: AppLightColorConstants.primaryColor,
        primaryColorDark: AppLightColorConstants.bgLight,
        primaryColorLight: AppLightColorConstants.bgInverse,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppLightColorConstants.secondaryColor,
          error: AppLightColorConstants.errorColor,
          background: AppLightColorConstants.bgLight,
        ),
        appBarTheme: appBarTheme(),
        cardTheme: cardTheme(),
        iconButtonTheme: iconButtonTheme(),
        iconTheme: iconTheme(),
        dividerColor: AppLightColorConstants.dividerColor,
        inputDecorationTheme: inputDecorationTheme(),
        outlinedButtonTheme: outlinedButtonTheme(),
        elevatedButtonTheme: elevatedButtonTheme(),
        floatingActionButtonTheme: fabTheme(),
      );

  static FloatingActionButtonThemeData fabTheme() {
    return FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: AppLightColorConstants.primaryColor,
      foregroundColor: AppLightColorConstants.bgLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppLightColorConstants.buttonPrimaryColor,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        disabledBackgroundColor: AppLightColorConstants.buttonDisabledColor,
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppLightColorConstants.primaryColor,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        side: const BorderSide(
          width: 2,
          color: AppLightColorConstants.primaryColor,
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      prefixIconColor: AppLightColorConstants.textFormFieldIconColor,
      suffixIconColor: AppLightColorConstants.textFormFieldIconColor,
      hintStyle: const TextStyle(
        color: AppLightColorConstants.border,
      ),
      labelStyle: const TextStyle(
        color: AppLightColorConstants.border,
      ),
      outlineBorder: const BorderSide(
        style: BorderStyle.solid,
        color: AppLightColorConstants.border,
      ),
      filled: true,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppLightColorConstants.border,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppLightColorConstants.border,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1,
          color: AppLightColorConstants.primaryColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppLightColorConstants.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppLightColorConstants.errorColor,
        ),
      ),
    );
  }

  static IconThemeData iconTheme() {
    return const IconThemeData(
      color: AppLightColorConstants.primaryIconColor,
      size: 24,
    );
  }

  static IconButtonThemeData iconButtonTheme() {
    return const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(
          AppLightColorConstants.primaryIconColor,
        ),
      ),
    );
  }

  static CardTheme cardTheme() {
    return CardTheme(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppLightColorConstants.contentPrimary,
      ),
      titleTextStyle: TextStyle(
        color: AppLightColorConstants.contentPrimary,
      ),
    );
  }
}