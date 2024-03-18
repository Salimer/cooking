import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme => _lightTheme();
  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() {
    final theme = ThemeData.light();
    return theme.copyWith(
      textTheme: theme.textTheme.apply(
        fontFamily: FontFamily.dINNextLTW23,
      ),
    );
  }

  static ThemeData _darkTheme() {
    final theme = ThemeData.dark();
    return theme.copyWith();
  }
}

class TextStyles {
  static const double _logoTexFontSize = 20;
  static const double _buttonFontSize = 16;
  static const double _authBottomTextFontSize = 14;

  static const TextStyle authBottomText = TextStyle(
    fontSize: _authBottomTextFontSize,
    color: Natural.grey2,
    fontWeight: FontWeight.w400
  );

  static TextStyle logoTitle = TextStyle(
      color: red[500], fontSize: _logoTexFontSize, fontWeight: FontWeight.bold);

  static const TextStyle greenButton = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: _buttonFontSize,
  );

  static final TextStyle transButton = TextStyle(
      fontSize: _buttonFontSize, color: red[500]!, fontWeight: FontWeight.w400);
}
