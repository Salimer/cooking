import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme => _lightTheme();
  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() {
    final theme = ThemeData.light();
    return theme.copyWith(
      textTheme: theme.textTheme
          .copyWith(
            bodySmall: const TextStyle(),
          )
          .apply(fontFamily: FontFamily.dINNextLTW23Bold),
      outlinedButtonTheme: OutlinedButtonThemeData(),
    );
  }

  static ThemeData _darkTheme() {
    final theme = ThemeData.dark();
    return theme.copyWith();
  }
}

class TextStyles {
  static const double _fontSize = 20;
  static const double _buttonFontSize = 16;
  static const TextStyle authTextButton = TextStyle(
    color: Colors.white,
    fontSize: _fontSize,
  );

  static const TextStyle authBottomText = TextStyle(
    fontSize: _fontSize,
  );

  static final TextStyle logoTitle = TextStyle(
    color: red[500],
    fontSize: 20,
  );

  static const TextStyle greenButton = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: _buttonFontSize,
    
  );

  static final TextStyle transButton = TextStyle(
    fontSize: _buttonFontSize,
    color: red[500]!,
    fontWeight: FontWeight.w400
  );
}
