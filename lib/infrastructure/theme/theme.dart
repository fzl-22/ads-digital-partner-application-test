import 'package:flutter/material.dart';

class AppTheme {
  static final _theme = ThemeData(
    fontFamily: 'Overpass',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF4157FF),
      tertiary: Color(0xFF9093ac),
    ),
  );

  static ThemeData get theme => _theme;
}
