import 'package:edu4dev/core/constant/dark_theme_color_constant.dart';
import 'package:flutter/material.dart';

final class AppThemeDark {
  AppThemeDark._();
  static ThemeData getTheme() => ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: AppDarkColorConstants.primaryColor,
        primaryColorDark: AppDarkColorConstants.bgInverseColor,
        primaryColorLight: AppDarkColorConstants.bgInverseColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppDarkColorConstants.bgPrimaryColor,
            secondary: AppDarkColorConstants.secondaryColor,
            error: AppDarkColorConstants.errorColor,
            background: Colors.black),
        bottomNavigationBarTheme: bottomNavigationBarTheme(),
        appBarTheme: appBarTheme(),
        elevatedButtonTheme: elevatedButtonTheme(),
        cardTheme: cardTheme(),
        dividerColor: AppDarkColorConstants.dividerColor,
        inputDecorationTheme: inputDecorationTheme(),
        outlinedButtonTheme: outlinedButtonTheme(),
        floatingActionButtonTheme: fabTheme(),
      );

  static FloatingActionButtonThemeData fabTheme() {
    return FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: AppDarkColorConstants.primaryColor,
      foregroundColor: AppDarkColorConstants.bgInverse,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(
          0xFF878dd1,
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        side: const BorderSide(
          width: 2,
          color: Color(0xFF878dd1),
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      prefixIconColor: AppDarkColorConstants.border,
      suffixIconColor: AppDarkColorConstants.border,
      hintStyle: const TextStyle(
        color: AppDarkColorConstants.border,
      ),
      labelStyle: const TextStyle(
        color: AppDarkColorConstants.border,
      ),
      fillColor: Colors.transparent,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppDarkColorConstants.border,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppDarkColorConstants.border,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppDarkColorConstants.primaryColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppDarkColorConstants.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppDarkColorConstants.errorColor,
        ),
      ),
    );
  }

  static CardTheme cardTheme() {
    return CardTheme(
      color: const Color(0xFF2a2a2a),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppDarkColorConstants.primaryColor,
        foregroundColor: AppDarkColorConstants.bgInverseColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppDarkColorConstants.border,
      ),
      titleTextStyle: TextStyle(
        color: AppDarkColorConstants.border,
      ),
    );
  }

  static BottomNavigationBarThemeData bottomNavigationBarTheme() {
    return const BottomNavigationBarThemeData(
      backgroundColor: AppDarkColorConstants.bgDarkColor,
    );
  }
}