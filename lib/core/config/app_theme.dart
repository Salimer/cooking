import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme => _lightTheme();
  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() {
    final theme = ThemeData.light();
    return theme.copyWith(
      textTheme: theme.textTheme.apply(fontFamily: FontFamily.dINNextLTW23),
    );
  }

  static ThemeData _darkTheme() {
    final theme = ThemeData.dark();
    return theme.copyWith();
  }
}

class TextStyles {
  static const TextStyle headingBold = TextStyle(
    // height: 67.2,
    fontSize: 56,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headingRegular = TextStyle(
    // height: 67.2,
    fontSize: 56,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle h1Bold = TextStyle(
    // height: 57.6,
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h1Regular = TextStyle(
    // height: 57.6,
    fontSize: 48,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle h2Bold = TextStyle(
    // height: 48,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h2Regular = TextStyle(
    // height: 48,
    fontSize: 40,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle h3Bold = TextStyle(
    // height: 38.4,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h3Regular = TextStyle(
    // height: 38.4,
    fontSize: 32,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle h4Bold = TextStyle(
    // height: 28.8,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h4Regular = TextStyle(
    // height: 28.8,
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle h5Bold = TextStyle(
    // height: 28,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h5Regular = TextStyle(
    // height: 28,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle paraBold = TextStyle(
    // height: 22.4,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle paraRegular = TextStyle(
    // height: 22.4,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle labelBold = TextStyle(
    // height: 19.6,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle labelRegular = TextStyle(
    // height: 19.6,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle smallBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle smallRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle tinyBold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
}
