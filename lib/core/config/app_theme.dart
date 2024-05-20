import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme => _lightTheme();
  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() {
    final theme = ThemeData.light();
    return theme.copyWith(
        scaffoldBackgroundColor: orange[50],
        colorScheme: const ColorScheme.light(),
        textTheme: theme.textTheme
            .copyWith(
              labelMedium: const TextStyle(
                color: Neutral.grey1,
              ),
            )
            .apply(fontFamily: FontFamily.iBMPlexSansArabic));
  }

  static ThemeData _darkTheme() {
    final theme = ThemeData.dark();
    return theme.copyWith(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      textTheme: theme.textTheme
          .copyWith(labelMedium: const TextStyle(color: Neutral.white))
          .apply(fontFamily: FontFamily.iBMPlexSansArabic),
    );
  }
}
